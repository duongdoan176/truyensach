-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 04, 2022 lúc 05:06 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter`
--

CREATE TABLE `chapter` (
  `id` int(10) UNSIGNED NOT NULL,
  `truyen_id` int(10) UNSIGNED NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `slug_chapter` varchar(255) NOT NULL,
  `tomtat` varchar(255) NOT NULL,
  `noidung` longtext NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chapter`
--

INSERT INTO `chapter` (`id`, `truyen_id`, `tieude`, `slug_chapter`, `tomtat`, `noidung`, `kichhoat`) VALUES
(4, 14, 'Hành trình bắt đầu', 'hanh_trinh_bat_dau', 'Cậu nhóc mũ rơm ra khơi năm 17t', '<p><em>&Ocirc;ng gi&agrave; v&agrave; biển cả</em>&nbsp;phục vụ để&nbsp;<em>khơi</em>&nbsp;dậy danh tiếng văn chương của Hemingway v&agrave; th&uacute;c đẩy việc t&aacute;i kiểm tra to&agrave;n bộ cơ thể của &ocirc;ng. Cuốn tiểu thuyết ban đầu được đ&oacute;n nhận với nhiều sự nổi tiếng; n&oacute; kh&ocirc;i phục niềm tin của nhiều độc giả về khả năng của Hemingway với tư c&aacute;ch l&agrave; một t&aacute;c giả. Nh&agrave; xuất bản của n&oacute;, Scribner, tr&ecirc;n chiếc &aacute;o kho&aacute;c bụi đời đầu, đ&atilde; gọi cuốn tiểu thuyết n&agrave;y l&agrave; &quot;t&aacute;c phẩm kinh điển mới&quot;, v&agrave; nhiều nh&agrave; ph&ecirc; b&igrave;nh đ&atilde; so s&aacute;nh n&oacute; với c&aacute;c t&aacute;c phẩm như truyện ngắn của William Faulkner, cuốn tiểu thuyết&nbsp;<em>Moby-Dick của The Bear</em>&nbsp;v&agrave; Herman Melville.</p>\r\n\r\n<p>Một số nh&agrave; ph&ecirc; b&igrave;nh lưu &yacute; rằng Santiago đến từ Quần đảo Canary v&agrave; nguồn gốc T&acirc;y Ban Nha của &ocirc;ng c&oacute; ảnh hưởng trong tiểu thuyết. Sau khi di cư đến Cuba v&agrave;o những năm 20 tuổi, sau n&agrave;y, Santiago mơ về Quần đảo Canary v&agrave; pha trộn từ vựng tiếng T&acirc;y Ban Nha Cuba v&agrave; B&aacute;n đảo. Tiểu sử của &ocirc;ng c&oacute; nhiều điểm tương đồng với Gregorio Fuentes, người bạn đời đầu ti&ecirc;n của Hemingway.</p>\r\n\r\n<p>Gregorio Fuentes, người m&agrave; nhiều nh&agrave; ph&ecirc; b&igrave;nh tin rằng l&agrave; nguồn cảm hứng cho Santiago, l&agrave; một người đ&agrave;n &ocirc;ng mắt xanh sinh ra ở Lanzarote ở Quần đảo Canary. Sau khi ra khơi năm mười tuổi tr&ecirc;n những con t&agrave;u gh&eacute; cảng ch&acirc;u Phi, anh di cư vĩnh viễn đến Cuba khi anh 22. Sau 82 năm ở Cuba, Fuentes đ&atilde; cố gắng đ&ograve;i lại quyền c&ocirc;ng d&acirc;n T&acirc;y Ban Nha v&agrave;o năm 2001. C&aacute;c nh&agrave; ph&ecirc; b&igrave;nh đ&atilde; lưu &yacute; rằng Santiago đ&atilde; cũng &iacute;t nhất 22 tuổi khi anh ta di cư từ T&acirc;y Ban Nha đến Cuba, v&agrave; do đ&oacute; đủ tuổi để được coi l&agrave; một người nhập cư v&agrave; một người nước ngo&agrave;i ở Cuba.</p>\r\n\r\n<p>Hemingway l&uacute;c đầu dự định sử dụng c&acirc;u chuyện của Santiago, đ&atilde; trở th&agrave;nh&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; Biển cả</em>, như một phần của sự th&acirc;n mật giữa mẹ v&agrave; con trai. Mối quan hệ trong cuốn s&aacute;ch li&ecirc;n quan đến Kinh Th&aacute;nh, m&agrave; &ocirc;ng gọi l&agrave; &quot;Cuốn s&aacute;ch biển&quot;. Một số kh&iacute;a cạnh của n&oacute; đ&atilde; xuất hiện trong&nbsp;<em>Quần đảo</em>&nbsp;được c&ocirc;ng bố sau khi ph&aacute;t h&agrave;nh. Hemingway đề cập đến trải nghiệm thực tế của một ngư d&acirc;n gi&agrave; gần giống với kinh nghiệm của Santiago v&agrave; thủy thủ của anh ta trong&nbsp;<em>On the Blue Water: A Gulf Stream Letter</em>&nbsp;(<em>Esquire</em>, th&aacute;ng 4 năm 1936).</p>\r\n\r\n<p>Tiểu luận của Joseph Waldmeir &quot;&nbsp;<em>Confiteor Hominem</em>: Ernest Hemingway&#39;s T&ocirc;n gi&aacute;o của con người&quot; l&agrave; một b&agrave;i đọc ph&ecirc; b&igrave;nh thuận lợi của tiểu thuyết Chuyện v&agrave; một trong đ&oacute; đ&atilde; x&aacute;c định c&aacute;c c&acirc;n nhắc ph&acirc;n t&iacute;ch kể từ đ&oacute;. C&oacute; lẽ c&acirc;u khẳng định đ&aacute;ng nhớ nhất l&agrave; c&acirc;u trả lời của Waldmeir cho c&acirc;u hỏi Th&ocirc;ng điệp của cuốn s&aacute;ch l&agrave; g&igrave;?</p>\r\n\r\n<blockquote>\r\n<p>C&acirc;u trả lời giả định một mức độ thứ ba m&agrave;&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; biển cả</em>&nbsp;phải được đọc như một loại b&igrave;nh luận ngụ ng&ocirc;n tr&ecirc;n tất cả c&aacute;c c&ocirc;ng việc trước đ&acirc;y của m&igrave;nh, nhờ đ&oacute; n&oacute; c&oacute; thể được thiết lập rằng c&aacute;c &acirc;m bội t&ocirc;n gi&aacute;o của&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; biển cả</em>&nbsp;l&agrave; kh&ocirc;ng đặc biệt với cuốn s&aacute;ch đ&oacute; trong số c&aacute;c t&aacute;c phẩm của Hemingway, v&agrave; Hemingway cuối c&ugrave;ng đ&atilde; thực hiện bước quyết định trong việc n&acirc;ng cao c&aacute;i c&oacute; thể gọi l&agrave; triết l&yacute; Manhood của &ocirc;ng l&ecirc;n tầm t&ocirc;n gi&aacute;o.</p>\r\n</blockquote>\r\n\r\n<p>Waldmeir đ&atilde; xem x&eacute;t chức năng của h&igrave;nh ảnh Kit&ocirc; gi&aacute;o của tiểu thuyết,&nbsp;<sup>[&nbsp;<em>nghi&ecirc;n cứu ban đầu?</em>&nbsp;]</sup>&nbsp;Đ&aacute;ng ch&uacute; &yacute; nhất th&ocirc;ng qua t&agrave;i liệu tham khảo của Hemingway đến đ&oacute;ng đinh của Ch&uacute;a Kit&ocirc; sau tr&ocirc;ng thấy những con c&aacute; mập m&agrave; đọc Santiago:</p>\r\n\r\n<blockquote>\r\n<p>&quot;&nbsp;<em>Ay</em>,&quot; anh n&oacute;i to. Kh&ocirc;ng c&oacute; bản dịch cho từ n&agrave;y v&agrave; c&oacute; lẽ đ&oacute; chỉ l&agrave; một tiếng ồn như một người đ&agrave;n &ocirc;ng c&oacute; thể tạo ra, v&ocirc; t&igrave;nh, cảm thấy m&oacute;ng tay đi qua tay v&agrave;o gỗ.</p>\r\n</blockquote>\r\n\r\n<p>Một trong những nh&agrave; ph&ecirc; b&igrave;nh thẳng thắn nhất về&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; Biển cả</em>&nbsp;l&agrave; Robert P. Weekks. T&aacute;c phẩm &quot;Fakery in&nbsp;<em>the Old Man and the Sea</em>&nbsp;&quot; năm 1962 của &ocirc;ng tr&igrave;nh b&agrave;y lập luận của &ocirc;ng rằng cuốn tiểu thuyết l&agrave; một sự kh&aacute;c biệt yếu đuối v&agrave; bất ngờ từ Hemingway điển h&igrave;nh, thực tế (gọi phần c&ograve;n lại của cơ thể Hemingway l&agrave; &quot;vinh quang trước đ&oacute;&quot;). &nbsp;Trong phần tiếp theo của cuốn tiểu thuyết n&agrave;y chống lại c&aacute;c t&aacute;c phẩm trước đ&oacute; của Hemingway, Tuần lễ tranh luận:</p>\r\n\r\n<blockquote>\r\n<p>Tuy nhi&ecirc;n, sự kh&aacute;c biệt về hiệu quả m&agrave; Hemingway sử dụng thiết bị đặc trưng n&agrave;y trong t&aacute;c phẩm hay nhất của &ocirc;ng v&agrave; trong&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; biển cả</em>&nbsp;đang chiếu s&aacute;ng. T&aacute;c phẩm hư cấu trong đ&oacute; Hemingway d&agrave;nh sự quan t&acirc;m nhiều nhất cho c&aacute;c vật thể tự nhi&ecirc;n,&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; Biển cả</em>, được tạo ra với số lượng giả mạo phi thường, phi thường bởi v&igrave; người ta sẽ kh&ocirc;ng t&igrave;m thấy sự kh&ocirc;ng ch&iacute;nh x&aacute;c, kh&ocirc;ng l&atilde;ng mạn h&oacute;a c&aacute;c vật thể tự nhi&ecirc;n trong một nh&agrave; văn người gh&ecirc; tởm WH Hudson, kh&ocirc;ng thể đọc Thoreau, ch&aacute;n gh&eacute;t lời h&ugrave;ng biện của Melville trong&nbsp;<em>Moby Dick</em>, v&agrave; bản th&acirc;n &ocirc;ng đ&atilde; bị c&aacute;c nh&agrave; văn kh&aacute;c chỉ tr&iacute;ch, đặc biệt l&agrave; Faulkner, v&igrave; sự tận t&acirc;m với sự thật v&agrave; kh&ocirc;ng sẵn s&agrave;ng &#39;ph&aacute;t minh&#39;.</p>\r\n</blockquote>\r\n\r\n<h2>Bối cảnh v&agrave; xuất bản[<a href=\"https://vi.wikipedia.org/w/index.php?title=%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3&amp;veaction=edit&amp;section=4\" title=\"Sửa đổi phần “Bối cảnh và xuất bản”\">sửa</a>&nbsp;|&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3&amp;action=edit&amp;section=4\" title=\"Sửa đổi phần “Bối cảnh và xuất bản”\">sửa m&atilde; nguồn</a>]</h2>\r\n\r\n<p>Kh&ocirc;ng c&oacute; cuốn s&aacute;ch hay n&agrave;o được viết m&agrave; trong đ&oacute; c&oacute; c&aacute;c biểu tượng xuất hiện trước đ&oacute; v&agrave; bị mắc kẹt.... T&ocirc;i đ&atilde; cố gắng tạo ra một &ocirc;ng gi&agrave; thực sự, một cậu b&eacute; thực sự, một biển thực sự v&agrave; một con c&aacute; thật v&agrave; c&aacute; mập thực sự. Nhưng nếu t&ocirc;i l&agrave;m cho họ tốt v&agrave; đủ đ&uacute;ng th&igrave; họ c&oacute; nghĩa l&agrave; nhiều thứ (lời Hemingway)</p>\r\n\r\n<p>Được viết v&agrave;o năm 1951, v&agrave; được xuất bản v&agrave;o năm 1952,&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; biển</em>&nbsp;l&agrave; t&aacute;c phẩm đầy đủ cuối c&ugrave;ng của Hemingway được xuất bản trong suốt cuộc đời của &ocirc;ng. Cuốn s&aacute;ch d&agrave;nh ri&ecirc;ng cho &quot; Charlie Scribner &quot; v&agrave; bi&ecirc;n tập vi&ecirc;n văn học &quot; Max Perkins &quot; của Hemingway, &nbsp;đ&atilde; được đăng tr&ecirc;n tạp ch&iacute;&nbsp;<em>Life</em>&nbsp;v&agrave;o ng&agrave;y 1 th&aacute;ng 9 năm 1952 v&agrave; năm triệu bản của tạp ch&iacute; đ&atilde; được b&aacute;n trong hai ng&agrave;y.</p>\r\n\r\n<p><em>&Ocirc;ng gi&agrave; v&agrave; biển</em>&nbsp;trở th&agrave;nh lựa chọn C&acirc;u lạc bộ của th&aacute;ng, v&agrave; biến Hemingway trở th&agrave;nh người nổi tiếng. &nbsp;Xuất bản dưới dạng s&aacute;ch v&agrave;o ng&agrave;y 1 th&aacute;ng 9 năm 1952, lần in ấn đầu ti&ecirc;n l&agrave; 50.000 bản. &nbsp;Phi&ecirc;n bản minh họa c&oacute; h&igrave;nh ảnh đen trắng của Charles Tunnicliffe v&agrave; Raymond Sheppard.</p>\r\n\r\n<p>V&agrave;o th&aacute;ng 5 năm 1953, cuốn tiểu thuyết đ&atilde; nhận được giải Pulitzer &nbsp;v&agrave; được tr&iacute;ch dẫn cụ thể khi năm 1954, &ocirc;ng được trao giải thưởng Nobel về văn học m&agrave; &ocirc;ng d&agrave;nh tặng cho người Cuba. &nbsp;Th&agrave;nh c&ocirc;ng của&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; Biển cả</em>&nbsp;đ&atilde; khiến Hemingway trở th&agrave;nh người nổi tiếng quốc tế. &nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; biển cả</em>&nbsp;được dạy ở c&aacute;c trường học tr&ecirc;n khắp thế giới v&agrave; tiếp tục kiếm tiền bản quyền nước ngo&agrave;i.</p>\r\n\r\n<h2>Đọc th&ecirc;m[<a href=\"https://vi.wikipedia.org/w/index.php?title=%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3&amp;veaction=edit&amp;section=5\" title=\"Sửa đổi phần “Đọc thêm”\">sửa</a>&nbsp;|&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3&amp;action=edit&amp;section=5\" title=\"Sửa đổi phần “Đọc thêm”\">sửa m&atilde; nguồn</a>]</h2>\r\n\r\n<ul>\r\n	<li><cite>Young, Philip (1952).&nbsp;<em>Ernest Hemingway</em>. New York: Holt, Rinehart, &amp; Winston.&nbsp;<a href=\"https://vi.wikipedia.org/wiki/ISBN\" title=\"ISBN\">ISBN</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90%E1%BA%B7c_bi%E1%BB%87t:Ngu%E1%BB%93n_s%C3%A1ch/0-8166-0191-7\" title=\"Đặc biệt:Nguồn sách/0-8166-0191-7\">0-8166-0191-7</a>.</cite></li>\r\n	<li><cite>Jobes, Katharine T., ed (1968).&nbsp;<em>Twentieth Century Interpretations of The Old Man and the Sea</em>. Englewood Cliffs, New Jersey: Prentice Hall.&nbsp;<a href=\"https://vi.wikipedia.org/wiki/ISBN\" title=\"ISBN\">ISBN</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90%E1%BA%B7c_bi%E1%BB%87t:Ngu%E1%BB%93n_s%C3%A1ch/0-13-633917-4\" title=\"Đặc biệt:Nguồn sách/0-13-633917-4\">0-13-633917-4</a>.</cite></li>\r\n	<li><cite><a href=\"http://www.pbs.org/hemingwayadventure/cuba.html\" rel=\"nofollow\">&ldquo;Michael Palin&#39;s Hemingway Adventure: Cuba&rdquo;</a>.&nbsp;<em>PBS</em>. Truy cập 2006.</cite>&nbsp;Kiểm tra gi&aacute; trị ng&agrave;y th&aacute;ng trong:&nbsp;<code>|ng&agrave;y truy cập=</code>&nbsp;(<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%A3_gi%C3%BAp:L%E1%BB%97i_CS1#bad_date\" title=\"Trợ giúp:Lỗi CS1\">trợ gi&uacute;p</a>)</li>\r\n	<li><cite>Ivan Kashkin (1959).&nbsp;<em>Commentary (in Ernest Hemingway - Selected works in two volumes)</em>. Moscow: State publisher for literature.</cite></li>\r\n</ul>\r\n\r\n<h2>Tham khảo[<a href=\"https://vi.wikipedia.org/w/index.php?title=%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3&amp;veaction=edit&amp;section=6\" title=\"Sửa đổi phần “Tham khảo”\">sửa</a>&nbsp;|&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3&amp;action=edit&amp;section=6\" title=\"Sửa đổi phần “Tham khảo”\">sửa m&atilde; nguồn</a>]</h2>\r\n\r\n<ol>\r\n	<li><strong><a href=\"https://vi.wikipedia.org/wiki/%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3#cite_ref-nobel_1-0\">^</a></strong>&nbsp;<cite><a href=\"http://nobelprize.org/literature/laureates/1954/\" rel=\"nofollow\">&ldquo;The Nobel Prize in Literature 1954&rdquo;</a>.&nbsp;<em>The Nobel Foundation</em>. Truy cập ng&agrave;y 31 th&aacute;ng 1 năm 2005.</cite></li>\r\n</ol>\r\n\r\n<h2>Li&ecirc;n kết ngo&agrave;i</h2>', 0),
(5, 18, 'Chương 1', 'chuong_1', 'đen thôi đỏ quên đi', '<p>mlem</p>', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `tendanhmuc` varchar(255) NOT NULL,
  `slug_danhmuc` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `slug_danhmuc`, `mota`, `kichhoat`) VALUES
(1, 'Truyện kinh dị', 'truyen_kinh_di', 'Kịch tính, gay cấn, hấp dẫn, hồi hộp', 0),
(3, 'Truyện trinh thám', 'truyen_trinh_tham', 'Kịch tính, gay cấn, hấp dẫn, hồi hộp, lôi cuốn', 0),
(4, 'Truyện phưu lưu', 'truyen_phuu_luu', 'Kịch tính, gay cấn, hấp dẫn, hồi hộp, thú vị, lôi cuốn', 0),
(5, 'Truyện hài hước', 'truyen_hai_huoc', 'Hấp dẫn, thư dãn, thú vị, không tin nổi', 0),
(7, 'Truyện kiếm hiệp', 'truyen_kiem_hiep', 'Lôi cuốn, kịch tính', 0),
(8, 'Truyện huyền nhiễm', 'truyen_huyen_nhiem', 'Mới lạ độc đáo', 0),
(9, 'Truyện ma', 'truyen_ma', 'Thót tim, gay cấn', 0),
(10, 'Truyện lịch sử', 'truyen_lich_su', 'Thú vị, lôi cuốn', 0),
(11, 'Sách kiến thức', 'sach_kien_thuc', 'Mang lại nhiều kiến thức bổ ích', 0),
(12, 'Truyện khác', 'truyen_khac', 'Gồm các thể loại thú vị', 0),
(13, 'Sách khoa học', 'sach_khoa_hoc', 'Tìm hiểu về những thứ mà khoa học mang lại', 0),
(14, 'Truyện ngắn', 'truyen_ngan', 'Những mẩu truyện nhỏ', 0),
(15, 'Tiểu thuyết', 'tieu_thuyet', 'Mới lạ, độc đáo', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tensach` varchar(255) NOT NULL,
  `ngaymuon` text NOT NULL,
  `hantra` text NOT NULL,
  `giamuon` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id`, `name`, `email`, `tensach`, `ngaymuon`, `hantra`, `giamuon`, `trangthai`) VALUES
(1, 'Duong', 'ltweb@gmail.com', 'Onepiece', '1', '2', 200000, 0),
(2, 'Duong', 'ltweb@gmail.com', 'Naruto', '1', '2', 200000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_07_021005_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('doandinhduong176@gmail.com', '$2y$10$cAduL2iPmLedM3Lsa1CIIO.M7rIk7dRB1ib5p3FUQbAvimY6oILaa', '2022-05-21 00:14:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'e ', 'web', '2021-08-06 19:50:25', '2021-08-06 19:50:25'),
(2, 'update ', 'web', '2021-08-06 20:02:32', '2021-08-06 20:02:32'),
(3, 'delete ', 'web', '2021-08-06 20:02:48', '2021-08-06 20:02:48'),
(4, 'add ', 'web', '2021-08-06 20:02:55', '2021-08-06 20:02:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'web', '2021-08-06 19:49:33', '2021-08-06 19:49:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `tensach` varchar(255) NOT NULL,
  `ngaymuon` date NOT NULL,
  `hantra` date NOT NULL,
  `giamuon` varchar(10) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`id`, `email`, `tensach`, `ngaymuon`, `hantra`, `giamuon`, `trangthai`) VALUES
(15, 'duong@gmail.com', 'Slec Home', '2022-04-15', '2022-05-21', '200000', 0),
(16, 'duong@gmail.com', 'Mật mã Da Vinci', '2022-04-17', '2022-05-27', '200000', 0),
(17, 'doandinhduong176@gmail.com', 'Slec Home', '2022-05-21', '2022-06-28', '200000', 0),
(18, 'doandinhduong176@gmail.com', 'Slec Home', '2022-05-24', '2022-06-24', '200000', 0),
(19, 'doandinhduong176@gmail.com', 'Đắc nhân tâm', '2022-05-25', '2022-06-25', '200000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentheloai` varchar(255) NOT NULL,
  `slug_theloai` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id`, `tentheloai`, `slug_theloai`, `mota`, `kichhoat`) VALUES
(1, 'Hành động', 'hanh_dong', 'hay kịch tính bánh cuốn', 0),
(3, 'Hài hước', 'hai_huoc', 'cười ỉa vaizzzz', 0),
(4, 'Truyện ngược', 'truyen_nguoc', 'Lôi cuốn, mau nước mắt', 0),
(5, 'Giáo dục', 'giao_duc', 'Cung cấp kiến thức', 0),
(6, 'Kinh dị', 'kinh_di', 'Kịch tính, gay cấn, hấp dẫn, hồi hộp, lôi cuốn', 0),
(7, 'Truyện cười', 'truyen_cuoi', 'Hài hước, thư giản', 0),
(8, 'Ngụ ngôn', 'ngu_ngon', 'Nhân văn, ý nghĩa', 0),
(9, 'Truyện cổ tích', 'truyen_co_tich', 'Lôi cuốn, hấp dẫn', 0),
(10, 'Khám phá', 'kham_pha', 'Mới mẻ, bổ ích', 0),
(11, 'Trinh thám', 'trinh_tham', 'Hấp dẫn, thư dãn, thú vị', 0),
(12, 'Lịch sử', 'lich_su', 'Cho ta có cái nhìn về quá khứ', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen`
--

CREATE TABLE `truyen` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentruyen` varchar(255) NOT NULL,
  `tacgia` varchar(255) NOT NULL,
  `tomtat` text NOT NULL,
  `slug_truyen` varchar(255) NOT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `theloai_id` int(10) UNSIGNED NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `kichhoat` int(11) NOT NULL,
  `tendichgia` varchar(255) NOT NULL,
  `quocgia` varchar(255) NOT NULL,
  `nhaxb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `truyen`
--

INSERT INTO `truyen` (`id`, `tentruyen`, `tacgia`, `tomtat`, `slug_truyen`, `danhmuc_id`, `theloai_id`, `hinhanh`, `kichhoat`, `tendichgia`, `quocgia`, `nhaxb`) VALUES
(1, 'Onepiece', 'Eiichiro Oda', 'One Piece là câu truyện kể về Luffy và các thuyền viên của mình. Khi còn nhỏ, Luffy ước mơ trở thành Vua Hải Tặc. Cuộc sống của cậu bé thay đổi khi cậu vô tình có được sức mạnh có thể co dãn như cao su, nhưng đổi lại, cậu không bao giờ có thể bơi được nữa. Giờ đây, Luffy cùng những người bạn hải tặc của mình ra khơi tìm kiếm kho báu One Piece, kho báu vĩ đại nhất trên thế giới. Trong One Piece, mỗi nhân vật trong đều mang một nét cá tính đặc sắc kết hợp cùng các tình huống kịch tính, lối dẫn truyện hấp dẫn chứa đầy các bước ngoặt bất ngờ và cũng vô cùng hài hước đã biến One Piece trở thành một trong những bộ truyện nổi tiếng nhất không thể bỏ qua. Hãy đọc One Piece để hòa mình vào một thế giới của những hải tặc rộng lớn, đầy màu sắc, sống động và thú vị, cùng đắm chìm với những nhân vật yêu tự do, trên hành trình đi tìm ước mơ của mình.', 'onepiece', 4, 10, '01jpg_2019-10-07-08-22-2557.jpg', 0, 'Truyenqq.net', 'Nhật', 'Truyenqq.net'),
(13, 'Conan', 'Gosho Aoyama', 'Mở đầu câu truyện, cậu học sinh trung học 16 tuổi Shinichi Kudo bị biến thành cậu bé Conan Edogawa. Shinichi trong phần đầu của Thám tử lừng danh Conan được miêu tả là một thám tử học đường. Trong một lần đi chơi công viên \"Miền Nhiệt đới\" với cô bạn từ thuở nhỏ (cũng là bạn gái) Ran Mori , cậu bị dính vào vụ án một hành khách trên Chuyến tàu tốc hành trong công viên, Kishida , bị giết trong một vụ án cắt đầu rùng rợn. Cậu đã làm sáng tỏ vụ án và trên đường về nhà, chứng kiến một vụ làm ăn mờ ám của những người đàn ông mặc toàn đồ đen. Kudo bị phát hiện, bị đánh ngất sau đó những người đàn ông áo đen đã cho cậu uống một thứ thuốc độc chưa qua thử nghiệm là Apotoxin-4869 (APTX4869) với mục đích thủ tiêu cậu. Tuy nhiên chất độc đã không giết chết Kudo. Khi tỉnh lại, cậu bàng hoàng nhận thấy thân thể mình đã bị teo nhỏ trong hình dạng của một cậu học sinh tiểu học', 'conan', 15, 1, 'images442.jpg', 0, 'Kim Đồng', 'Nhật', 'Nhà xuất bản Việt Nam'),
(14, 'Naruto', 'Kishimoto Masashi', 'Bối cảnh Naruto xảy ra vào mười hai năm trước khi câu chuyện chính thức bắt đầu, một con hồ ly chín đuôi đã tấn công Konohagakure. Nó là một con quái vật có sức mạnh khủng khiếp, chỉ một cái vẫy từ một trong chín cái đuôi của nó có thể tạo ra những cơn sóng thần và san bằng nhiều ngọn núi. Nó gây ra sự hỗn loạn và giết chết rất nhiều người cho đến khi người đứng đầu làng Lá – Hokage đệ tứ – đã đánh bại nó bằng cách đổi lấy mạng sống của mình để phong ấn nó vào trong người một đứa trẻ mới sinh. Đứa trẻ đó tên là Uzumaki Naruto. Bộ truyện kể về cuộc hành trình đầy gian khổ với vô vàn khó khăn, thử thách của Naruto từ khi còn là một cậu bé tới khi trở thành một trong những nhẫn giả vĩ đại nhất. Không chỉ mô tả về một thế giới nhẫn giả huyền bí, Naruto còn mang trong nó nhiều ý nghĩa nhân sinh sâu sắc về tình bạn, tình đồng đội, tình yêu, ước mơ và hi vọng.', 'naruto', 15, 11, 'naruto54.jpg', 0, 'Kim Đồng', 'Nhật', 'Nhà xuất bản Kim Đồng'),
(15, 'Tokyo revengers', 'Wakui Ken', 'Tên khác: Tokyo Manji Revengers Tokyo Revengers Toukyou Revengers 東京卍リベンジャーズ\r\nTakemichi, thanh niên thất nghiệp còn trinh, được biết rằng người con gái đầu tiên và cũng là duy nhất cho đến bây giờ mà anh hẹn hò từ trung học đã chết. Sau một vụ tai nạn, anh ta thấy mình được quay về những ngày cấp hai. Anh ta thề sẽ thay đổi tương lai và giữ lấy người con gái ấy, để làm việc đó, anh ta quyết định sẽ vươn lên làm trùm băng đảng khét tiếng nhất ở vùng Kantou.', 'tokyo_revengers', 4, 1, 'unnamed41.jpg', 0, 'Hoàng Mai', 'Nhật', 'Nhà sách Phương Nam'),
(16, 'Natra', 'Dương Mịch', 'Theo Phong thần diễn nghĩa, Na Tra vốn là pháp bảo Linh Châu của Thái Ất Chân Nhân, được Nguyên Thủy Thiên Tôn sắp xếp xuống trần gian giúp Khương Tử Nha định bảng Phong Thần, chuyển sinh vào bụng Ân Thị hóa ra kiếp người, trở thành con trai thứ ba của Lý Tịnh[1]. Khi sinh ra được Thái Ất bay đến thu làm đồ đệ và thay mặt Nữ Oa gửi tặng Na Tra vòng Càn Khôn và Hỗn Thiên Lăng.', 'natra', 15, 9, 'na-tra-196.jpg', 0, 'Đồng Dao', 'Trung Quốc', 'Nhà sách Phương Đông'),
(20, 'Súng vi trùng và thép', 'Jared Diamond', 'Súng, Vi trùng và Thép là một cuốn sách của tác giả Jared Diamond xuất bản vào năm 1997, đây cuốn sách khoa học phổ thông thứ hai và nổi tiếng nhất của ông, cuốn sách này trở thành cuốn sách bán chạy nhất trên thế giới, được dịch ra 33 thứ tiếng và nhận được nhiều giải thưởng, trong đó có một giải Pulitzer', 'sung_vi_trung_va_thep', 13, 5, 'sungvitrungvathep9.jpg', 0, 'Cao Đăng', 'Hà Lan', 'Nhà sách Phương Đông'),
(21, 'Trọn kiếp', 'Brian Weiss', 'Elizabeth và Pedro đều mang nỗi đau mất mát người thân, không thể thoát ra được cơn tuyệt vọng buồn bã và cả nỗi cô đơn trống trải. Dù hẹn hò, gặp gỡ ai cũng cảm giác là sai, cảm giác người kia là không phải. Mỗi người đều mang một vết thương nào đó trong thâm tâm khó lý giải, vẫy vùng hoài không thể thoát ra. Brian Weiss tiến hành hồi quy cho họ, tháo gỡ từng khúc mắc nhỏ trong tâm hồn của hai người. Lạ lùng, linh hồn họ trải qua nhiều kiếp đã luôn gặp nhau và gắn kết bằng mối quan hệ đặc biệt nào đó, đầy yêu thương. Có điều, kiếp này, cho đến giờ phút hiện tại, họ chưa hề quen biết.', 'tron_kiep', 15, 4, 'tải xuống33.jpg', 0, 'Thu Hoài', 'Mỹ', 'Nhà sách Phương Nam'),
(22, 'How Psychology Works', 'D.K. Publishing, Jo Hemmings', 'Nằm ở giao điểm của sinh học, triết học và y học, tâm lý học là trung tâm của những gì tạo nên con người chúng ta. \r\n \r\nHoàn hảo cho cả sinh viên và những người mới làm quen với chủ đề này,  How Psychology Works  có cách tiếp cận đồ họa độc đáo và sử dụng ngôn ngữ trực tiếp, không có biệt ngữ. Nó khám phá các phương pháp tiếp cận khác nhau mà các nhà tâm lý học sử dụng để nghiên cứu cách mọi người suy nghĩ và hành xử, chẳng hạn như chủ nghĩa hành vi, tâm lý học nhận thức và chủ nghĩa nhân văn. \r\n \r\nHướng dẫn không thể thiếu này mô tả một loạt các tình trạng sức khỏe tâm thần, bao gồm rối loạn lưỡng cực và rối loạn ám ảnh cưỡng chế. Sau đó, nó sẽ đưa bạn qua các phương pháp điều trị, từ liệu pháp hành vi nhận thức và phân tâm học đến liệu pháp nhóm và liệu pháp nghệ thuật. Cuốn sách này cũng khám phá vai trò của tâm lý trong các tình huống hàng ngày. Khám phá điều gì tạo nên con người bạn - sự pha trộn độc đáo của thiên nhiên và sự nuôi dưỡng tạo nên ý thức về con người của bạn - và vai trò của tâm lý học trong các mối quan hệ, thể thao, công việc và giáo dục.', 'how_psychology_works', 13, 5, 'HowPW22.jpg', 0, 'Cao Đăng', 'Đức', 'Nhà xuất bản Kim Đồng'),
(24, 'Đại Việt sử ký toàn thư', 'Ngô Sỹ Liên, Lê Văn Hưu, Lê Hy', 'Đại Việt sử ký toàn thư (chữ Hán: 大越史記全書), đôi khi gọi tắt là Toàn thư, là bộ quốc sử viết bằng Hán văn của Việt Nam, viết theo thể biên niên, ghi chép lịch sử Việt Nam từ thời đại truyền thuyết Kinh Dương Vương năm 2879 TCN đến năm 1675 đời vua Lê Gia Tông nhà Hậu Lê. Bộ sử này được khắc in toàn bộ và phát hành lần đầu tiên vào năm Đinh Sửu, niên hiệu Chính Hòa năm thứ 18, triều vua Lê Hy Tông, tức là năm 1697. Đây là bộ chính sử Việt Nam xưa nhất còn tồn tại nguyên vẹn đến ngày nay, do nhiều đời sử quan trong Sử quán triều Hậu Lê biên soạn.', 'dai_viet_su_ky_toan_thu', 10, 12, 'daiviet53.jpg', 0, 'Hồng Vân', 'Việt Nam', 'Nhà xuất bản Kim Đồng'),
(25, 'Sụp đổ', 'Jared Diamond', '“Sụp đổ” là sách lịch sử thế giới nói về quá trình sụp đổ của nhiều thời đại khác nhau trong lịch sử. Ban đầu là nền văn minh Maya cho đến người Norse…Từ đó, rút kinh nghiệm để tránh những rủi ro, tránh sụp đổ và mang lại may mắn, thuận lợi cho chính bản thân.\r\n\r\nCuốn sách sẽ cho thấy  nhiều cuộc chiến tranh trong quá khứ tùy theo mức độ nghiêm trọng hay không đều do bàn tay con người mà ra.\r\n\r\nTrên cơ sở này, mỗi người sẽ nhận ra chân lý rằng: Cuộc sống của chúng ta có bình yên hay không đều cho chính mình quyết định.\r\n\r\nNhư vậy, chúng ta vừa tìm hiểu về sách lịch sử nổi tiếng trong nước và trên thế giới. Mỗi cuốn đều rất chi tiết và sinh động về tình hình lịch sử liên quan đến con người, những cuộc chiến tranh, quá trình phát triển kinh tế từ thời xa xưa.', 'sup_do', 10, 12, 'sup-do-sach-ls18.jpg', 0, 'Kim Đồng', 'Việt Nam', 'Khang Việt Book'),
(26, 'Sử Việt 12 khúc tráng ca', 'Dũng Phan', 'Là con dân của người Việt Nam, chúng ta có quyền tự hào về những gì nhân dân ta đã trải qua. Biết bao gian khổ, thăng trầm, vất vả, thậm chí là rất nhiều anh hùng đã hy sinh anh dũng để con cháu có cuộc sống yên bình như ngày hôm nay.Tất cả đều được tái hiện rõ nét và sinh động trong cuốn sách lịch sử “Sử Việt 12 khúc tráng ca” của tác giả Dũng Phan. Tác giả đã sử dụng lối viết hiện đại, ghi lại tường tận những câu chuyện lịch sử một cách hào hùng và đặc sắc suốt từ thời phong kiến. Do đó, giúp mọi người dễ dàng tiếp cận và chiêm nghiệm.', 'su_viet_12_khuc_trang_ca', 14, 12, 'su-viet-12-khuc-trang-ca-sach-ls43.jpg', 0, 'Phan Hoàng', 'Việt Nam', 'Nhà xuất bản ĐH sư phạm Hà Nội'),
(27, 'Đạo Mộ', 'Takeshi', 'Tần Lê là một thanh niên kinh doanh đồ cổ, trong một dịp tình cờ lại quen được một người thần bí Vân Minh Lạc, trong chuyến phiêu lưu ấy họ vô tình tìm thấy được một tấm bản đồ kho báu đã bị rách, lần theo hướng dẫn trên bản đồ để đi tìm kho báu, cuộc hành trình đó lại mở ra nhiều chuyện li kì thần bí đang chờ đón họ, những chuyện bí ẩn đó là gì đây, và họ sẽ đối mặt với chúng như thế nào các bạn', 'dao_mo', 1, 6, 'dao-mo63.jpg', 0, 'Mỹ Duyên', 'Nhật Bản', 'Nhà Xuất Bản Kim Đồng'),
(28, 'Another', 'Yukito Ayatsuji', 'Another (アナザー) là loạt tiểu thuyết thuộc thể loại kinh dị và huyền bí được viết bởi Ayatsuji Yukito và Kadokawa Shoten đã đăng trên tạp chí Yasai Jidai của mình từ tháng 8 năm 2006 đến tháng 5 năm 2009. Cốt truyện xoay quanh Sakakibara Kōichi một nam sinh vừa chuyển đến trường trung học Yomiyama và cậu đã gặp một cô gái bí ẩn tên Misaki Mei người mà vì lý do nào đó mọi người xung quanh xem là không tồn tại. Kōichi bắt đầu nhận ra không khí kỳ lạ của lớp học mà cậu được chuyển đến mà mọi người đều tránh nói đến vì các học sinh trong lớp này luôn là nạn nhân của những tai nạn thảm khốc bắt đầu từ năm 1973 sau một tai nạn của một học sinh trong lớp, vì thế Kōichi và Mei bắt đầu tìm hiểu cũng như tìm cách ngăn chặn hiện tượng kỳ bí này trước khi đến lượt mình là nạn nhân.', 'another', 1, 6, 'another54.jpg', 0, 'Hoàng Việt', 'Nhật Bản', 'Nhà sách Phương Nam'),
(29, 'Con quạ', 'Edgar Allan Poe', 'Raven\" theo chân một người kể chuyện giấu tên vào một đêm ảm đạm tháng 12, người ngồi đọc \"truyền thuyết bị lãng quên\" bên ngọn lửa đang tàn như một cách để quên đi cái chết của Lenore yêu quý của mình. Một tiếng \"gõ vào cửa buồng của [anh ta]\"không tiết lộ điều gì, nhưng kích thích tâm hồn anh ta \"bùng cháy\".  Tiếng gõ được lặp lại, to hơn một chút và anh ấy nhận ra nó đang phát ra từ cửa sổ của mình. Khi anh ta đi điều tra, một con quạ bay vào buồng của anh ta. Không để ý đến người đàn ông, con quạ đậu trên bức tượng bán thân của Pallas phía trên cửa.', 'con_qua', 1, 6, 'conqua52.jpg', 0, 'Nam Đăng', 'Mỹ', 'Nhà xuất bản trẻ'),
(30, 'Bất diệt', 'Yến Dạ', 'Thần Châu đại địa, vạn tộc tranh hùng, huyết mạch chiến sĩ hoành hành, cường giả chiến đấu, thiên khung nát, tinh thần rơi!\r\n\r\nThiếu niên từ Bắc Mạc kéo quan tài mà đến, thế nhân mới biết đâu là mạnh nhất huyết mạch!\r\n\r\nVung di thiên đại hoang, vác một đời bêu danh, hắn vạn dặm độc hành, bạn ma loạn vũ, chỉ vì nam nhi hứa một lời.\r\n\r\nVượt thiên sơn vạn thủy, xông Cửu Thiên Thập Địa, chém hết thiên hạ anh hào, hắn thề phải trở về, chỉ vì nàng vẫn trông coi cô thành.', 'bat_diet', 8, 10, 'bat-diet-long-de97.jpg', 0, 'Kim Đồng', 'Trung Quốc', 'Nhà xuất bản Kim Đồng'),
(31, 'Phong thần', 'Dương Mịch', 'Thế giới tận thế, Thần Lâm vì cứu em gái mà hi sinh tính mạng, khi tỉnh dậy đã phát hiện mình ở một khu rừng kì lạ, thân mang theo thống game.\r\n\r\nTừ đây hắn một đường chém giết thăng cấp, cướp đoạt kỹ năng, tìm hiểu toàn bộ thân thế kiếp trước, trả thù toàn bộ ân oán kiếp này, đột phá Thần cấp, thống lĩnh Hư giới, trở thành Hư giới chi thần.', 'phong_than', 8, 1, 'phongtahn29.jpg', 0, 'Mỹ Duyên', 'Trung Quốc', 'Nhà xuất bản Kim Đồng'),
(32, 'Ghost', 'Yamato Kensi', 'Cuốn sánh viết về những bi kịch kinh hoàng và đầy bí ẩn mà gia đình Peter phải trải qua sau khi bắt đầu chuyển đến sinh sống tại ngôi nhà ở ngoại ô thành phố London. Những bí ẩn ngày càng khó lý giải và có thể chấp nhận và cả những cái chết kinh hoàng....', 'ghost', 9, 6, 'ghost94.jpg', 0, 'Hồng Vân', 'Nhật Bản', 'Nhà xuât bản trẻ'),
(33, 'Lừa và ngựa', 'Dân gian', 'Có chú Lừa đi cùng một con Ngựa trông sang trọng bảnh bao lắm. Trên lưng ngựa chỉ có bộ yên thồ hàng, còn trên lưng Lừa lại chồng chất hàng hoá nặng đến mức nó không chịu nổi. Lừa cầu xin Ngựa chia sẻ giúp nó một chút gánh nặng nếu không nó sẽ chết gục trước khi tới được thành phố', 'lua_va_ngua', 14, 8, 'lua-va-ngua11.jpg', 0, '', 'Việt Nam', 'Nhà xuất bản Kim Đồng'),
(34, 'Thỏ và rùa', 'Dân gian', 'Ngày xửa ngày xưa, có một con Rùa và một con Thỏ cãi nhau xem ai nhanh hơn. Chúng quyết định giải quyết việc tranh luận bằng một cuộc thi chạy đua. Chúng đồng ý lộ trình và bắt đầu cuộc đua.\r\n\r\nThỏ xuất phát nhanh như tên bắn và chạy thục mạng rất nhanh, khi thấy rằng mình đã khá xa Rùa, Thỏ nghĩ nên nghỉ cho đỡ mệt dưới một bóng cây xum xê lá bên vệ đường và nghỉ thư giãn trước khi tiếp tục cuộc đua.\r\n\r\nVì quá tự tin vào khả năng của mình, Thỏ ngồi dưới bóng cây và nhanh chóng ngủ thiếp đi trên đường đua. Rùa từ từ vượt qua Thỏ và sớm kết thúc đường đua.', 'tho_va_rua', 14, 8, 'tho-va-rua77.jpg', 0, '', 'Việt Nam', 'Nhà xuât bản Kim Đồng'),
(35, 'Vương triều xác sống', 'Kim Eun-hee', 'Vương triều xác sống lấy bối cảnh thời Joseon của Hàn Quốc trong cuộc chiến tranh chống xâm lược với Nhật Bản (1592-1598). Phần đầu tiên mô tả câu chuyện của thái tử Lee Chang (Joo Ji-hoon), người đang nỗ lực điều tra sự lây lan của dịch bệnh bí ẩn. Thái tử Lee Chang, bị Lãnh chúa Cho Hak-ju (Ryu Seung-ryong) và Vương hậu (Kim Hye-jun) ngăn cản không cho diện kiến phụ vương, dự cảm chuyện chẳng lành, liền bày mưu cùng cận vệ Mu-yeong đột nhập vương cung và trộm sổ ghi chép điều trị, biết được một vị thái y tên Lee Seung Hui là người cuối cùng thăm khám, Lee Chang đã sốc trước những gì mình tìm thấy, thái tử liền xuất cung về Jiyulheon, trên đỉnh núi Geumjeong, Dongnae phía Nam xa xôi để tìm câu trả lời. Ở đó, anh chám trán nữ y sĩ Seo-bi (Bae Doo-na) và Yeong Sin (Kim Sung-kyu) những người đang phải vật lộn để đốt mặt với một dịch bệnh khiến người chết sống lại như những con quái vật khát máu. Tất cả họ cùng nhau đối mặt với cuộc chiến sinh tử để không chỉ ngăn cản sự lây lan của dịch bệnh mà còn để cứu Vương triều khỏi bị lật đổ', 'vuong_trieu_xac_song', 12, 1, 'Vuong-trieu-xac-song77.jpg', 0, 'Đăng', 'Hàn Quốc', 'Nhà xuất bản trẻ'),
(36, 'Hồng lâu mộng', 'Tào tuyết cần', 'Thời nhà Thanh, dưới thời Ung Chính, Càn Long (1723 - 1795) là thời kinh tế cực thịnh, chẳng những nông nghiệp, thủ công nghiệp mà cả khai khoáng, thương nghiệp cũng phát triển phồn vinh. Các thành thị lớn như Nam Kinh, Dương Châu, Vũ Xương, Nhạc Châu... buôn bán sản xuất sầm uất, là những đô thị lớn. Nền kinh tế tự phát tư bản chủ nghĩa xuất hiện trong lòng xã hội phong kiến chuyên chế mọt ruỗng đang trên đà tan rã, đã sản sinh ra một lớp thị dân thành thị, có những nhu cầu thẩm mĩ mới. Tây sương ký, Mẫu đơn đình, Liêu trai chí dị,... là những tác phẩm miêu tả tình yêu, những số phận, những buồn vui cá nhân... Đó chính là sự \"thăng hoa\" của cuộc sống tinh thần đã bắt đầu khác từ trước so với của người thành thị. Hồng lâu mộng là sự thể hiện những tư tưởng của thời đại: tinh thần dân chủ, tinh thần phê phán đời sống xã hội phong kiến mục nát, phê phán những giáo điều cổ hủ đã ăn sâu bén rễ hàng ngàn năm, đòi tự do yêu đương và mưu cầu hạnh phúc, giải phóng cá tính, khao khát tự do bình đẳng, lý tưởng cho cuộc sống... Tất cả những cái đó có mặt kế thừa tư tưởng dân chủ thời Minh và đầu thời Thanh, nhưng đó chính là sản phẩm của ý thức tư tưởng thị dân đương thời.', 'hong_lau_mong', 12, 4, 'honglaumong90.jpg', 0, 'Kim Đồng', 'Trung Quốc', 'Nhà xuất bản Kim Đồng'),
(37, 'Anh hùng xạ đieu', 'Kim Dung', 'ruyện xảy ra vào thời nhà Tống (960-1279) khi người Nữ Chân bắt đầu tấn công bắc Trung Quốc. Phần đầu của tiểu thuyết xoay quanh tình bạn giữa Dương Thiết Tâm và Quách Khiếu Thiên, hai tay hiệp sĩ đã anh dũng chiến đấu chống sự tàn bạo của quân Kim. Mối quan hệ của hai gia đình khăng khít đến nỗi họ thề ước là khi con họ lớn lên, chúng sẽ kết nghĩa huynh đệ, kết thành tỷ muội hoặc kết thành phu thê.\r\n\r\nPhần hai của câu chuyện tập trung vào những gian nan đau khổ mà cả hai phải trải qua. Quách Tĩnh, con của Quách Khiếu Thiên lớn lên ở Mông Cổ, dưới sự bảo vệ của Thành Cát Tư Hãn. Dương Khang mặt khác lớn lên là hoàng thân của nhà Kim.', 'anh_hung_xa_dieu', 7, 1, 'anhhung33.jpg', 0, 'Kim Đồng', 'Trung Quốc', 'Nhà xuất bản Kim Đồng'),
(38, 'Thần điêu đại hiệp', 'Kim Dung', 'Lý Mạc Sầu (trong bản đầu tiên có tên là Lý Mạc Thu) tìm cách giết hại gia đình Lục Lập Đỉnh. Nguyên nhân bởi những mối hận tình trong quá khứ của người anh trai ông và chị dâu là Lục Triển Nguyên và Hà Nguyên Quân. Sau đó hai vợ chồng Võ Tam Thông lại đứng ra bảo vệ con gái (Lục Vô Song) và cháu gái (Trình Anh) của Lục Lập Đỉnh, vì Lý Mạc Sầu định giết luôn 2 cô bé (Lục Vô Song bị thương ở chân). Lúc đó cô bé Quách Phù và Kha Trấn Ác (sư phụ của Quách Tĩnh) trên đường đi tìm tung tích Hoàng Dược Sư khi đi ngang qua Giang Nam cũng ra tay giúp sức đánh Lý Mạc Sầu.\r\n\r\nQuách Phù sai đôi chim điêu tấn công Lý Mạc Sầu. Lúc đó thì cậu bé Dương Quá xuất hiện cố gắng giải nguy cho 2 cô bé Trình Anh và Lục Vô Song. Lý Mạc Sầu định phóng ngân châm hạ độc Dương Quá nhưng Hoàng Dược Sư xuất hiện kịp thời nên không thể ra tay hạ Dương Quá, chỉ kịp bắt Lục Vô Song bỏ đi, Hoàng Dược Sư cứu được Trình Anh. Trong lúc đuổi theo Lý Mạc Sầu, Dương Quá do nghịch châm nên đã bị trúng độc. Sau đó Hoàng Dược Sư bỏ đi trước khi vợ chồng Quách Tĩnh, Hoàng Dung đến làm phiền mình.', 'than_dieu_dai_hiep', 7, 10, 'than-dieu-dai-hiep73.jpg', 0, 'Hồng Vân', 'Trung Quốc', 'Nhà xuất bản Kim Đồng'),
(39, 'X-o-ắ-n', 'Dương', 'Hai anh em nói chuyện với nhau :\r\n- Anh hỏi em: Nếu có một cái ôtô bằng sô cô la thì em sẽ ăn bộ phận nào trước ?\r\n- Em: Em sẽ chén ngay mấy cái bánh xe trước\r\n- Anh: Tại sao vậy ?\r\n- Em: Em phải ăn mấy cái bánh xe trước để nó không chạy được nữa . Nếu mình ăn các bộ phận khác thì xe chạy mất sao ?\r\n- Anh: Được lắm!', 'x-o-a-n', 5, 7, 'xoan58.jpg', 0, '', 'Việt Nam', 'Nhà xuất bản Trẻ'),
(40, 'Mật mã Da Vinci', 'Dan Brown', 'Jacques Saunière, người quản lý nổi tiếng của Bảo tàng Louvre tại Paris, bị một tu sĩ mắc chứng bạch tạng thuộc dòng Opus Dei tên Silas bắn tử thương, sau khi ép buộc Saunière phải tiết lộ một bí mật nào đó. Biết được bí mật của mình có thể bị mất đi vĩnh viễn, Saunière tìm cách chuyển lại bí mật này. Thi thể của Saunière được tìm thấy sâu trong Bảo tàng Louvre trong tư thế tương tự như bức tranh nổi tiếng Người Vitruvius (Vitruvian Man) của Leonardo Da Vinci, với một thông điệp bí ẩn viết cạnh, và một hình sao năm cánh (ngũ giác) vẽ trên bụng bằng máu.\r\n\r\nRobert Langdon, giáo sư môn \"Biểu tượng Tôn giáo\" (Religious Symbology) tại Đại học Harvard, lúc này đang có mặt tại Paris tham gia một buổi thuyết trình. Ông được cảnh sát Pháp mời đến để giúp giải thích những dấu hiệu đặc biệt mà Saunière để lại trước khi chết, nhưng thực ra Langdon bị tình nghi là hung thủ vì dòng chữ để lại: \"P.S. Find Robert Langdon\". Sophie Neveu, chuyên viên giải mã của cảnh sát Pháp đồng thời là cháu nội của nạn nhân, xuất hiện để cứu Langdon khỏi sự nghi ngờ của cảnh sát và tìm hiểu bí mật mà Saunière muốn truyền lại.', 'mat_ma_da_vinci', 3, 11, 'davinci27.jpg', 0, 'Cao Đăng', 'Nga', 'Nhà xuất bản ĐHQG Hà Nội'),
(41, 'Cô gái có hình xăm rồng', 'Stieg Larsson', 'Cô nàng có hình xăm rồng (tên gốc theo tiếng Thụy Điển: Män som hatar kvinnor, tạm dịch \"Đàn ông ghét đàn bà\") là một tiểu thuyết trinh thám được viết bởi tác gia và ký giả người Thụy Điển Stieg Larsson (1954-2004). Sau khi ông qua đời, cuốn tiểu thuyết được phát hành năm 2005 đã trở thành cuốn sách bán chạy nhất ở châu Âu và Hoa Kỳ.Đây là cuốn sách đầu tiên trong bộ ba series sách Millennium (Thiên niên kỷ).', 'co_gai_co_hinh_xam_rong', 3, 11, 'cogaicohinhxamrong78.jpg', 0, 'Mỹ Duyên', 'Mỹ', 'Nhà xuật bản ĐH sư phạm Hà Nội'),
(42, 'Slec Home', 'Arthur Conan Doyle', 'Sherlock Holmes (/ˈʃɜːrlɒk ˈhoʊmz/ hoặc /-ˈhoʊlmz/) là một nhân vật thám tử tư hư cấu, do nhà văn người Anh Arthur Conan Doyle sáng tạo nên. Tự coi mình là \"thám tử tư vấn\" trong các câu chuyện, Holmes nổi danh với khả năng quan sát, diễn dịch, khoa học pháp y điêu luyện và suy luận logic tuyệt vời, những yếu tố mà anh áp dụng khi điều tra các vụ án của nhiều dạng khách hàng, bao gồm cả Scotland Yard.\r\n\r\nXuất hiện lần đầu trong tác phẩm Cuộc điều tra màu đỏ năm 1887, nhân vật này dần trở nên nổi tiếng với loạt truyện ngắn đầu tiên trên The Strand Magazine, bắt đầu bằng \"Vụ tai tiếng xứ Bohemia\" năm 1891. Kể từ đó, những câu chuyện mới lần lượt ra đời cho đến năm 1927. Tổng cộng đã có 4 tiểu thuyết và 56 truyện ngắn được xuất bản. Các câu chuyện hầu hết lấy bối cảnh vào giữa những năm 1880 và 1914, chỉ trừ một số diễn ra ở thời đại Victoria hoặc Edward. Chúng đa phần được thuật lại qua lời của bác sĩ John H. Watson, một cây viết tiểu sử và là người bạn thân của Holmes. Watson thường song hành cùng Holmes trong các cuộc điều tra và cũng thường chia sẻ với Holmes căn nhà số 221B, phố Baker, Luân Đôn, nơi khởi nguồn của nhiều chuyến phiêu lưu.', 'slec_home', 3, 11, 'slechome23.jpg', 0, 'Dương', 'Mỹ', 'Nhà xuất bản Kim Đồng'),
(43, 'Napoleon Bonaparte', 'Etacler', 'Trong thập niên đầu tiên của thế kỷ 19, Đệ nhất Đế chế Pháp dưới quyền Napoléon đã tham gia vào một loạt xung đột – những cuộc chiến tranh Napoléon – lôi kéo mọi cường quốc chính ở châu Âu tham gia. Sau một loạt thắng lợi, Pháp đạt được vị trí thống trị ở lục địa châu Âu, và Napoléon duy trì phạm vi ảnh hưởng của Pháp thông qua việc thành lập của những mối đồng minh rộng lớn và bổ nhiệm bạn bè và người thân cai trị các quốc gia châu Âu khác như những chư hầu của Pháp.\r\n\r\nCuộc chiến kéo dài ở bán đảo Iberia và cuộc xâm lược nước Nga năm 1812 đánh dấu bước ngoặt trong cơ đồ của Napoléon. Quân đội chủ lực của Pháp, Grande Armée, bị tổn thất nặng nề trong chiến dịch và không bao giờ có thể khôi phục lại hoàn toàn. Năm 1813, Liên minh thứ sáu đã đánh bại quân đội của ông tại Leipzig, năm sau đó Liên minh xâm lược Pháp, buộc Napoléon phải thoái vị và đày ông đến đảo Elba. Chưa đầy một năm sau, ông thoát khỏi Elba và trở lại nắm quyền, nhưng đã bị đánh bại trong trận Waterloo vào tháng 6 năm 1815.', 'napoleon_bonaparte', 15, 12, 'Napoleon40.jpg', 0, 'Dương', 'Pháp', 'Nhà xuất bản trẻ'),
(51, 'Đắc nhân tâm', 'Dale Carnegie', 'Nội dung cuốn sách đắc nhân tâm được chia làm 4 phần chính và các chương phụ. Mỗi phần đều chứa đựng những câu chuyện, những bài học sâu sắc, và những bí quyết để thu phục lòng người riêng. Chính vì vậy nếu đọc sách đắc nhân tâm bạn nên kiên trì đọc cả quyển để lĩnh hội trọn vẹn những tinh túy mà tác giả nổi tiếng Dale Carnegie đã gửi gắm.\r\nPhần 1: Nghệ thuật ứng xử cơ bản\r\nPhần 2: Sáu cách tạo thiện cảm\r\nPhần 3: 12 cách hướng suy nghĩ của người khác theo bạn\r\nPhần 4: Chuyển hóa người khác', 'dac_nhan_tam', 15, 5, 'dacnhantam9.jpg', 0, 'Nguyễn Văn Phước', 'Mỹ', 'NXB tổng hợp Hồ Chí Minh'),
(53, 'Đ', 'a', 'sd', 'd', 15, 12, 'kd80.jpg', 0, 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tiktok', 'doandinhduong176@gmail.com', NULL, '$2y$10$c1RV443fwVhejALZ.u3G8.yQi4QITfkwtXWLPBVrcRUR1TQlZKJ3i', NULL, '2021-07-13 07:34:44', '2021-07-13 07:34:44'),
(2, 'Duong', 'ltweb@gmail.com', NULL, '$2y$10$FsY6XTS8.tnNChhpIe0mYObbqX7I2fMsT4Q83BGIpyi3dtfJ5/zfK', NULL, '2021-08-06 21:05:31', '2021-08-06 21:05:31');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `truyen_id` (`truyen_id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyen`
--
ALTER TABLE `truyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sach`
--
ALTER TABLE `sach`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `truyen`
--
ALTER TABLE `truyen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
