import Entities.Dictionary;
import Entities.Word;
import Manager.Audio;
import Manager.DictionaryCommandline;
import Manager.DictionaryManagement;
import Manager.Translator;

import java.awt.Desktop;
import java.io.*;
import java.util.Set;

import java.util.ArrayList;
import java.util.HashSet;

import javafx.fxml.FXML;
import javafx.scene.Cursor;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.Tab;
import javafx.scene.control.TabPane;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.effect.SepiaTone;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.application.Platform;
import javafx.event.ActionEvent;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Background;
import javafx.scene.layout.GridPane;
import javafx.scene.text.Font;
import javazoom.jl.decoder.JavaLayerException;

import java.io.FileWriter;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.util.List;
import java.util.stream.Collectors;

public class SceneControl {
    final Font DEFAULT_BIG_FONT = Font.font("Candara", 16);
    final Font DEFAULT_SMALL_FONT = Font.font("Candara", 14);
    final Cursor DEFAULT_BUTTON_CURSOR = Cursor.HAND;
    final int SMALL_BUTTON_HEIGHT = 14;
    final int BIG_BUTTON_HEIGHT = 16;
    final String DEFAULT_STYLE = "-fx-background-color: #d98fcd;";
    final private String LEFT = "left";
    final private String RIGHT = "right";
    final double EXPLAIN_BOT_ANCHOR = 50.0;
    final double EXAMPLE_HEIGHT = 30.0;

    private Dictionary dict = new Dictionary();
    private ArrayList<Word> diction = dict.getDict();

    @FXML
    private AnchorPane announcementAnchorPane;
    @FXML
    private Label announcementLabel;

    @FXML
    private TextField searchTextField;
    @FXML
    private Button searchButton;
    private Button advanceSearch;

    @FXML
    private TabPane wordTabPane;
    private Set<Tab> tabsToDelete = new HashSet<Tab>();
    private final int MAX = 125;//Số từ tối đa trong một tab tìm kiếm
    @FXML
    private GridPane wordsGridPane;
    private Set<Node> nodesToDelete = new HashSet<Node>();
    @FXML
    private AnchorPane translationField;

    @FXML
    private GridPane historyGridPane;
    private Set<Node> historyNodes = new HashSet<Node>();
    private HashSet<String> historyWord = new HashSet<String>();
    private int historyCount = 0;

    @FXML
    public void initialize() throws IOException, JavaLayerException {
        DictionaryManagement.readFile("src\\dictionary.txt", dict);

        
    }

    @FXML
    public void search() {
        announcementLabel.setText("");
        String searching = searchTextField.getText();

        if (searching == "") {
            return;
        }
        resetTranslationField();
        resetTabPane();
        announcementLabel.setText("Loading...");

        defaultSearch(searching);
    }

    public void defaultSearch(String vocabulary) {
        Word startWord = Dictionary.binaryLookup(0, diction.size(), vocabulary);
        if (startWord == null) {
            announcementLabel.setText("Không thấy từ.");
        } else {
            int tabNumber = 1;

            Tab currentTab = new Tab("Trang " + tabNumber);
            ScrollPane currentScroll = new ScrollPane();
            GridPane currentGrid = new GridPane();
            addToTabPane(currentTab);
            currentTab.setContent(currentScroll);
            currentScroll.setContent(currentGrid);

            int wordCount = 0;
            int row = 0;
            int index = Dictionary.getStartWordIndex();
            Word each = diction.get(index);
            String target = each.getWord_target();
            int limWord = MAX;
            while (target.startsWith(vocabulary)) {
                addToGridPane(currentGrid, nodesToDelete, newWordButton(target, each.getWord_explain(), row), row);
                row++;
                wordCount++;
                index++;
                if (index >= diction.size()) {
                    break;
                }
                each = diction.get(index);
                target = each.getWord_target();

                if (row >= limWord) {
                    row = 0;
                    tabNumber++;
                    currentTab = new Tab("Trang " + tabNumber);
                    currentScroll = new ScrollPane();
                    currentGrid = new GridPane();
                    addToTabPane(currentTab);
                    currentTab.setContent(currentScroll);
                    currentScroll.setContent(currentGrid);
                }
            }

            announcementLabel.setText(wordCount + " từ giống từ mà có thể bạn đang tìm. ");

            if (!announcementAnchorPane.getChildren().contains(advanceSearch)) {
                announcementAnchorPane.getChildren().add(advanceSearch);
                advanceSearch.setOnAction(e -> {
                    announcementAnchorPane.getChildren().remove(advanceSearch);
                });
            }
        }
    }

    /**
     * Dịch văn bản
     */
    @FXML
    public void translateInputText(ActionEvent event) throws IOException {
        resetTabPane();
        resetTranslationField();

        String searching = searchTextField.getText();
        if (!searching.equals("")) {
            announcementLabel.setText("Đang dịch văn bản...");
            String meaning = Translator.translate(searching);

            if (meaning != "") {
                TextArea searched = newTextArea(searching);
                Tab textArea = new Tab(searching);
                textArea.setContent(searched);
                addToTabPane(textArea);

                showTranslated(searching, meaning, 0);
                announcementLabel.setText("Văn bản đã được dịch.");
            } else {
                announcementLabel.setText("Không thể dịch văn bản. Hãy kiểm tra lại kết nối mạng của bạn và thử lại.");
            }
        }
    }

    /**
     * Lưu file
     */
    @FXML
    public void showAllWord(ActionEvent event) throws IOException {
        resetToNormal();

        exportDict(event);
        File getDict = new File("currentDictionary.txt");

        if (Desktop.isDesktopSupported()) {
            Desktop desk = Desktop.getDesktop();
            desk.open(getDict);
        } else {
            announcementLabel.setText("Thiết bị bạn đang dùng không hỗ trợ tính năng này.");
            return;
        }
        announcementLabel.setText("Từ điển đã được hiển thị trong file text (.txt).");
    }

    /**
     * Thêm, sửa từ
     */
    @FXML
    public void addWord(ActionEvent event) {
        resetToNormal();
        searchTextField.setPromptText("Nhập từ cần thêm");
        searchTextField.setOnKeyTyped(e -> {
        });

        announcementLabel.setText("Nhập từ bạn muốn thêm vào ô tìm kiếm và nhấn xác nhận bên dưới.");
        Button confirmButton = newSideButton("Xác nhận", LEFT);
        Button cancelButton = newSideButton("Hủy", RIGHT);

        confirmButton.setOnMouseClicked(e -> {
            String newWord = searchTextField.getText();
            Word found = DictionaryManagement.dictionaryLookup(newWord, dict);
            if (found == null) {
                searchTextField.setText("");
                searchTextField.setPromptText("Nhập nghĩa của từ");
                announcementLabel.setText("Nhập nghĩa của từ bạn đã thêm và nhấn xác nhận lần nữa.");
                confirmButton.setOnMouseClicked(e2 -> {
                    String newMeaning = searchTextField.getText();
                    dict.push(new Word(newWord, newMeaning));
                    DictionaryCommandline.history.add(new Word(newWord, newMeaning));
                    announcementAnchorPane.getChildren().remove(confirmButton);
                    announcementAnchorPane.getChildren().remove(cancelButton);
                    resetToNormal();
                    announcementLabel.setText("Thêm từ thành công.");

                    try {
                        String filename = "src\\dictionary.txt";
                        FileWriter fw = new FileWriter(filename, true);
                        fw.write(newWord + "\t" + newMeaning + "\n");
                        fw.close();
                    } catch (IOException ex) {
                        ex.printStackTrace();
                    }
                });
            } else {
                announcementLabel.setText("Từ bạn vừa nhập đã tồn tại. Bạn có muốn thay đổi nghĩa của từ đó không?");
                confirmButton.setOnMouseClicked(e2 -> {
                    announcementLabel.setText("Hãy nhập nghĩa mới của từ và nhấn \"Xác nhận\".");
                    searchTextField.setText("");
                    searchTextField.setPromptText("Nhập nghĩa mới của từ");

                    confirmButton.setOnMouseClicked(e3 -> {
                        String newMeaning = searchTextField.getText();
                        found.setWord_explain(newMeaning);
                        DictionaryCommandline.history.add(new Word(newWord, newMeaning));
                        announcementAnchorPane.getChildren().remove(confirmButton);
                        announcementAnchorPane.getChildren().remove(cancelButton);
                        resetToNormal();
                        announcementLabel.setText("Chỉnh sửa từ thành công.");

                        try {
                            File file = new File("src\\dictionary.txt");
                            List<String> out = Files.lines(file.toPath())
                                    .filter(line -> !line.contains(found.getWord_target()))
                                    .collect(Collectors.toList());
                            Files.write(file.toPath(), out, StandardOpenOption.WRITE, StandardOpenOption.TRUNCATE_EXISTING);

                            String filename = "src\\dictionary.txt";
                            FileWriter fw = new FileWriter(filename, true);
                            fw.write(newWord + "\t" + newMeaning + "\n");
                            fw.close();
                        } catch (IOException ex) {
                            ex.printStackTrace();
                        }
                    });
                });
            }
        });

        cancelButton.setOnMouseClicked(e -> {
            announcementAnchorPane.getChildren().remove(cancelButton);
            announcementAnchorPane.getChildren().remove(confirmButton);
            resetToNormal();
            announcementLabel.setText("Đã hủy thêm từ.");
        });
    }

    /**
     * Important method: Remove word.
     */
    @FXML
    public void removeWord(ActionEvent event) {
        resetToNormal();
        searchTextField.setPromptText("Nhập từ cần xóa");
        searchTextField.setOnKeyTyped(e -> {
        });

        announcementLabel.setText("Nhập từ cần xóa và nhấn xác nhận bên dưới.");
        Button confirmButton = newSideButton("Xác nhận", LEFT);
        Button cancelButton = newSideButton("Hủy", RIGHT);

        confirmButton.setOnMouseClicked(e -> {
            String newWord = searchTextField.getText();
            Word found = DictionaryManagement.dictionaryLookup(newWord, dict);
            if (found == null) {
                announcementLabel.setText("Hệ thống không tìm thấy từ bạn cần xóa. Hãy thử lại hoặc nhấn \"Hủy\".");
                return;
            } else {
                diction.remove(found);
                try {
                    File file = new File("src\\dictionary.txt");
                    List<String> out = Files.lines(file.toPath())
                            .filter(line -> !line.contains(found.getWord_target()))
                            .collect(Collectors.toList());
                    Files.write(file.toPath(), out, StandardOpenOption.WRITE, StandardOpenOption.TRUNCATE_EXISTING);
                } catch (IOException ex) {
                    ex.printStackTrace();
                }
            }
            announcementAnchorPane.getChildren().remove(cancelButton);
            announcementAnchorPane.getChildren().remove(confirmButton);
            resetToNormal();
            announcementLabel.setText("Đã xóa từ thành công.");
        });

        cancelButton.setOnMouseClicked(e -> {
            announcementAnchorPane.getChildren().remove(cancelButton);
            announcementAnchorPane.getChildren().remove(confirmButton);
            resetToNormal();
            announcementLabel.setText("Đã hủy xóa từ.");
        });

    }

    /**
     * Important method: Delete history.
     */
    @FXML
    public void deleteHistory(ActionEvent event) {
        resetToNormal();
        announcementLabel.setText("Xác nhận xóa hết lịch sử tìm kiếm?");

        Button acceptButton = newSideButton("Đồng ý", LEFT);
        Button rejectButton = newSideButton("Từ chối", RIGHT);

        acceptButton.setOnMouseClicked(e -> {
            historyGridPane.getChildren().removeAll(historyNodes);
            historyNodes.clear();
            historyWord.clear();
            historyCount = 0;
            announcementAnchorPane.getChildren().remove(acceptButton);
            announcementAnchorPane.getChildren().remove(rejectButton);
            announcementLabel.setText("Đã xóa hết lịch sử tìm kiếm.");
        });
        rejectButton.setOnMouseClicked(e -> {
            announcementAnchorPane.getChildren().remove(acceptButton);
            announcementAnchorPane.getChildren().remove(rejectButton);
            announcementLabel.setText("Đã từ chối xóa lịch sử.");
        });
    }

    /**
     * Important method: Export dictionary.
     */
    @FXML
    public void exportDict(ActionEvent event) {
        resetToNormal();
        File f = new File("src\\dictionary.txt");
        if (DictionaryManagement.exportToFile(f)) {
            File diction = new File("src//dictionary.txt").getParentFile();
            announcementLabel.setText("Lưu thành công.\n" + "Tên file: currentDictionary.txt\n"
                    + "Địa chỉ: " + diction.getAbsolutePath());
        } else {
            announcementLabel.setText("Không thể xuất từ điển.");
        }
    }

    /**
     * Important method: Exit.
     */
    @FXML
    public void exitDict(ActionEvent event) {
        Platform.exit();
    }

    public void resetTabPane() {
        wordTabPane.getTabs().removeAll(tabsToDelete);
        tabsToDelete.clear();
    }

    public void resetTranslationField() {
        translationField.getChildren().clear();
    }

    public void resetAnnouncePane() {
        announcementAnchorPane.getChildren().clear();
        announcementAnchorPane.getChildren().addAll(announcementLabel);
    }

    public void resetToNormal() {
        announcementLabel.setText("Nhấn \"Dịch văn bản\" để dịch online văn bản đã gõ.");
        announcementAnchorPane.getChildren().remove(advanceSearch);
        searchTextField.setText(null);
        searchTextField.setPromptText("Nhập từ hoặc cụm từ cần tìm");
        searchTextField.setOnKeyTyped(e -> {
            search();
        });
        resetTabPane();
        resetTranslationField();
        resetAnnouncePane();
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////// SUPPORT METHODS.
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////

    public void addToTabPane(Tab tab) {
        wordTabPane.getTabs().add(tab);
        tabsToDelete.add(tab);
    }

    public void addToGridPane(GridPane gridPane, Set<Node> nodeArray, Node node, int row) {
        gridPane.add(node, 0, row);
        nodeArray.add(node);
    }

    public void addToHistoryPane(Button button) {
        historyGridPane.add(button, 0, historyCount);
        historyNodes.add(button);
        historyCount++;
    }

    ImageView speakerImageView() throws FileNotFoundException {
        FileInputStream input = new FileInputStream("img\\speaker.png");
        Image image = new Image(input);
        ImageView view = new ImageView(image);
        view.setFitHeight(17.0);
        view.setFitWidth(17.0);
        return view;
    }

    Button newSpeakerButton(String speech) throws FileNotFoundException {
        Button speaker = new Button("", speakerImageView());
        speaker.setEffect(new SepiaTone());
        speaker.setOnMouseClicked(ActionEvent -> {
            try {
                InputStream sound = Audio.getAudio(speech);
                Audio.play(sound);
            } catch (IOException e) {
                e.printStackTrace();
            } catch (JavaLayerException e) {
                e.printStackTrace();
            }
        });
        AnchorPane.setRightAnchor(speaker, 12.0);
        AnchorPane.setTopAnchor(speaker, 12.0);
        return speaker;
    }

    Button newWordButton(String target, String explain, int row) {
        Button newWordButton = new Button(target);
        newWordButton.setFont(DEFAULT_BIG_FONT);
        newWordButton.setCursor(DEFAULT_BUTTON_CURSOR);
        if (row % 2 == 1) {
            newWordButton.setBackground(Background.EMPTY);
        } else {
            newWordButton.setStyle(DEFAULT_STYLE);
        }

        newWordButton.setOnMouseClicked(e -> {
            resetTranslationField();

            Button fakeButt = new Button(target);
            fakeButt.setFont(DEFAULT_BIG_FONT);
            fakeButt.setStyle(DEFAULT_STYLE);
            translationField.getChildren().add(fakeButt);
            AnchorPane.setTopAnchor(fakeButt, 4.0);
            AnchorPane.setLeftAnchor(fakeButt, 7.0);

            showTranslated(target, explain, row);

            if (historyWord.add(target)) {
                addToHistoryPane(newHistoryButton(target, explain));
            }
        });

        return newWordButton;
    }

    Button newHistoryButton(String target, String explain) {
        Button newHistoryButton = new Button(target);
        newHistoryButton.setFont(DEFAULT_BIG_FONT);
        newHistoryButton.setCursor(DEFAULT_BUTTON_CURSOR);
        if (historyCount % 2 == 0) {
            newHistoryButton.setBackground(Background.EMPTY);
        } else {
            newHistoryButton.setStyle(DEFAULT_STYLE);
        }

        newHistoryButton.setOnMouseClicked(e -> {
            resetTranslationField();

            Button fakeButt = new Button(target);
            fakeButt.setFont(DEFAULT_BIG_FONT);
            fakeButt.setStyle(DEFAULT_STYLE);
            translationField.getChildren().add(fakeButt);
            AnchorPane.setTopAnchor(fakeButt, 0.0);
            AnchorPane.setLeftAnchor(fakeButt, 7.0);

            showTranslated(target, explain, 0);
        });

        return newHistoryButton;
    }

    /**
     * Create text areas for showing meaning.
     */
    TextArea newTextArea(String string) {
        TextArea newTextArea = new TextArea(string);
        newTextArea.setFont(DEFAULT_BIG_FONT);
        newTextArea.setStyle(DEFAULT_STYLE);
        newTextArea.setWrapText(true);
        newTextArea.setEditable(false);
        newTextArea.autosize();
        return newTextArea;
    }

    /**
     * Show meaning of a word/sentence.
     */
    public void showTranslated(String wordTarget, String wordExplain, int row) {
        TextArea wordExplainTextArea = newTextArea(wordExplain);

        translationField.getChildren().add(wordExplainTextArea);
        AnchorPane.setTopAnchor(wordExplainTextArea, 40.0);
        AnchorPane.setRightAnchor(wordExplainTextArea, 4.0);
        AnchorPane.setBottomAnchor(wordExplainTextArea, EXPLAIN_BOT_ANCHOR);
        AnchorPane.setLeftAnchor(wordExplainTextArea, 4.0);

        try {
            Button speaker = newSpeakerButton(wordTarget);
            translationField.getChildren().add(speaker);
            AnchorPane.setTopAnchor(speaker, 0.0);
            AnchorPane.setRightAnchor(speaker, 0.0);
        } catch (FileNotFoundException e1) {
            e1.printStackTrace();
        }
    }

    /**
     * Accept, reject, confirm, cancel buttons.
     */
    Button newSideButton(String name, String position) {
        Button newButton = new Button(name);
        newButton.setFont(DEFAULT_SMALL_FONT);
        newButton.setPrefHeight(SMALL_BUTTON_HEIGHT);
        newButton.setCursor(DEFAULT_BUTTON_CURSOR);
        newButton.setStyle(DEFAULT_STYLE);
        announcementAnchorPane.getChildren().add(newButton);
        AnchorPane.setBottomAnchor(newButton, 50.0);
        if (position == LEFT) {
            AnchorPane.setLeftAnchor(newButton, 44.0);
        } else {
            AnchorPane.setRightAnchor(newButton, 44.0);
        }
        return newButton;
    }
}
