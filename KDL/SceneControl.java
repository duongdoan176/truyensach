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
    private final int MAX = 125;//S??? t??? t???i ??a trong m???t tab t??m ki???m
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
            announcementLabel.setText("Kh??ng th???y t???.");
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

            announcementLabel.setText(wordCount + " t??? gi???ng t??? m?? c?? th??? b???n ??ang t??m. ");

            if (!announcementAnchorPane.getChildren().contains(advanceSearch)) {
                announcementAnchorPane.getChildren().add(advanceSearch);
                advanceSearch.setOnAction(e -> {
                    announcementAnchorPane.getChildren().remove(advanceSearch);
                });
            }
        }
    }

    /**
     * D???ch v??n b???n
     */
    @FXML
    public void translateInputText(ActionEvent event) throws IOException {
        resetTabPane();
        resetTranslationField();

        String searching = searchTextField.getText();
        if (!searching.equals("")) {
            announcementLabel.setText("??ang d???ch v??n b???n...");
            String meaning = Translator.translate(searching);

            if (meaning != "") {
                TextArea searched = newTextArea(searching);
                Tab textArea = new Tab(searching);
                textArea.setContent(searched);
                addToTabPane(textArea);

                showTranslated(searching, meaning, 0);
                announcementLabel.setText("V??n b???n ???? ???????c d???ch.");
            } else {
                announcementLabel.setText("Kh??ng th??? d???ch v??n b???n. H??y ki???m tra l???i k???t n???i m???ng c???a b???n v?? th??? l???i.");
            }
        }
    }

    /**
     * L??u file
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
            announcementLabel.setText("Thi???t b??? b???n ??ang d??ng kh??ng h??? tr??? t??nh n??ng n??y.");
            return;
        }
        announcementLabel.setText("T??? ??i???n ???? ???????c hi???n th??? trong file text (.txt).");
    }

    /**
     * Th??m, s???a t???
     */
    @FXML
    public void addWord(ActionEvent event) {
        resetToNormal();
        searchTextField.setPromptText("Nh???p t??? c???n th??m");
        searchTextField.setOnKeyTyped(e -> {
        });

        announcementLabel.setText("Nh???p t??? b???n mu???n th??m v??o ?? t??m ki???m v?? nh???n x??c nh???n b??n d?????i.");
        Button confirmButton = newSideButton("X??c nh???n", LEFT);
        Button cancelButton = newSideButton("H???y", RIGHT);

        confirmButton.setOnMouseClicked(e -> {
            String newWord = searchTextField.getText();
            Word found = DictionaryManagement.dictionaryLookup(newWord, dict);
            if (found == null) {
                searchTextField.setText("");
                searchTextField.setPromptText("Nh???p ngh??a c???a t???");
                announcementLabel.setText("Nh???p ngh??a c???a t??? b???n ???? th??m v?? nh???n x??c nh???n l???n n???a.");
                confirmButton.setOnMouseClicked(e2 -> {
                    String newMeaning = searchTextField.getText();
                    dict.push(new Word(newWord, newMeaning));
                    DictionaryCommandline.history.add(new Word(newWord, newMeaning));
                    announcementAnchorPane.getChildren().remove(confirmButton);
                    announcementAnchorPane.getChildren().remove(cancelButton);
                    resetToNormal();
                    announcementLabel.setText("Th??m t??? th??nh c??ng.");

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
                announcementLabel.setText("T??? b???n v???a nh???p ???? t???n t???i. B???n c?? mu???n thay ?????i ngh??a c???a t??? ???? kh??ng?");
                confirmButton.setOnMouseClicked(e2 -> {
                    announcementLabel.setText("H??y nh???p ngh??a m???i c???a t??? v?? nh???n \"X??c nh???n\".");
                    searchTextField.setText("");
                    searchTextField.setPromptText("Nh???p ngh??a m???i c???a t???");

                    confirmButton.setOnMouseClicked(e3 -> {
                        String newMeaning = searchTextField.getText();
                        found.setWord_explain(newMeaning);
                        DictionaryCommandline.history.add(new Word(newWord, newMeaning));
                        announcementAnchorPane.getChildren().remove(confirmButton);
                        announcementAnchorPane.getChildren().remove(cancelButton);
                        resetToNormal();
                        announcementLabel.setText("Ch???nh s???a t??? th??nh c??ng.");

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
            announcementLabel.setText("???? h???y th??m t???.");
        });
    }

    /**
     * Important method: Remove word.
     */
    @FXML
    public void removeWord(ActionEvent event) {
        resetToNormal();
        searchTextField.setPromptText("Nh???p t??? c???n x??a");
        searchTextField.setOnKeyTyped(e -> {
        });

        announcementLabel.setText("Nh???p t??? c???n x??a v?? nh???n x??c nh???n b??n d?????i.");
        Button confirmButton = newSideButton("X??c nh???n", LEFT);
        Button cancelButton = newSideButton("H???y", RIGHT);

        confirmButton.setOnMouseClicked(e -> {
            String newWord = searchTextField.getText();
            Word found = DictionaryManagement.dictionaryLookup(newWord, dict);
            if (found == null) {
                announcementLabel.setText("H??? th???ng kh??ng t??m th???y t??? b???n c???n x??a. H??y th??? l???i ho???c nh???n \"H???y\".");
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
            announcementLabel.setText("???? x??a t??? th??nh c??ng.");
        });

        cancelButton.setOnMouseClicked(e -> {
            announcementAnchorPane.getChildren().remove(cancelButton);
            announcementAnchorPane.getChildren().remove(confirmButton);
            resetToNormal();
            announcementLabel.setText("???? h???y x??a t???.");
        });

    }

    /**
     * Important method: Delete history.
     */
    @FXML
    public void deleteHistory(ActionEvent event) {
        resetToNormal();
        announcementLabel.setText("X??c nh???n x??a h???t l???ch s??? t??m ki???m?");

        Button acceptButton = newSideButton("?????ng ??", LEFT);
        Button rejectButton = newSideButton("T??? ch???i", RIGHT);

        acceptButton.setOnMouseClicked(e -> {
            historyGridPane.getChildren().removeAll(historyNodes);
            historyNodes.clear();
            historyWord.clear();
            historyCount = 0;
            announcementAnchorPane.getChildren().remove(acceptButton);
            announcementAnchorPane.getChildren().remove(rejectButton);
            announcementLabel.setText("???? x??a h???t l???ch s??? t??m ki???m.");
        });
        rejectButton.setOnMouseClicked(e -> {
            announcementAnchorPane.getChildren().remove(acceptButton);
            announcementAnchorPane.getChildren().remove(rejectButton);
            announcementLabel.setText("???? t??? ch???i x??a l???ch s???.");
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
            announcementLabel.setText("L??u th??nh c??ng.\n" + "T??n file: currentDictionary.txt\n"
                    + "?????a ch???: " + diction.getAbsolutePath());
        } else {
            announcementLabel.setText("Kh??ng th??? xu???t t??? ??i???n.");
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
        announcementLabel.setText("Nh???n \"D???ch v??n b???n\" ????? d???ch online v??n b???n ???? g??.");
        announcementAnchorPane.getChildren().remove(advanceSearch);
        searchTextField.setText(null);
        searchTextField.setPromptText("Nh???p t??? ho???c c???m t??? c???n t??m");
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
