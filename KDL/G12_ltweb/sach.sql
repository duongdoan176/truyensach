-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 08, 2021 lúc 11:58 AM
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
CREATE DATABASE sach;

USE sach;
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
(2, 15, 'đen quá trời', 'den_qua_troi', 'Bị thu nhỏ', '<p>ngu qu&aacute; chứ k phải đen haizz...</p>', 0),
(3, 15, 'Thu nhỏ', 'thu_nho', 'Bị thu nhỏ tý hon', '<p>ngu th&igrave; chết</p>', 0),
(4, 14, 'Hành trình bắt đầu', 'hanh_trinh_bat_dau', 'Cậu nhóc mũ rơm ra khơi năm 17t', '<p><em>&Ocirc;ng gi&agrave; v&agrave; biển cả</em>&nbsp;phục vụ để&nbsp;<em>khơi</em>&nbsp;dậy danh tiếng văn chương của Hemingway v&agrave; th&uacute;c đẩy việc t&aacute;i kiểm tra to&agrave;n bộ cơ thể của &ocirc;ng. Cuốn tiểu thuyết ban đầu được đ&oacute;n nhận với nhiều sự nổi tiếng; n&oacute; kh&ocirc;i phục niềm tin của nhiều độc giả về khả năng của Hemingway với tư c&aacute;ch l&agrave; một t&aacute;c giả. Nh&agrave; xuất bản của n&oacute;, Scribner, tr&ecirc;n chiếc &aacute;o kho&aacute;c bụi đời đầu, đ&atilde; gọi cuốn tiểu thuyết n&agrave;y l&agrave; &quot;t&aacute;c phẩm kinh điển mới&quot;, v&agrave; nhiều nh&agrave; ph&ecirc; b&igrave;nh đ&atilde; so s&aacute;nh n&oacute; với c&aacute;c t&aacute;c phẩm như truyện ngắn của William Faulkner, cuốn tiểu thuyết&nbsp;<em>Moby-Dick của The Bear</em>&nbsp;v&agrave; Herman Melville.</p>\r\n\r\n<p>Một số nh&agrave; ph&ecirc; b&igrave;nh lưu &yacute; rằng Santiago đến từ Quần đảo Canary v&agrave; nguồn gốc T&acirc;y Ban Nha của &ocirc;ng c&oacute; ảnh hưởng trong tiểu thuyết. Sau khi di cư đến Cuba v&agrave;o những năm 20 tuổi, sau n&agrave;y, Santiago mơ về Quần đảo Canary v&agrave; pha trộn từ vựng tiếng T&acirc;y Ban Nha Cuba v&agrave; B&aacute;n đảo. Tiểu sử của &ocirc;ng c&oacute; nhiều điểm tương đồng với Gregorio Fuentes, người bạn đời đầu ti&ecirc;n của Hemingway.</p>\r\n\r\n<p>Gregorio Fuentes, người m&agrave; nhiều nh&agrave; ph&ecirc; b&igrave;nh tin rằng l&agrave; nguồn cảm hứng cho Santiago, l&agrave; một người đ&agrave;n &ocirc;ng mắt xanh sinh ra ở Lanzarote ở Quần đảo Canary. Sau khi ra khơi năm mười tuổi tr&ecirc;n những con t&agrave;u gh&eacute; cảng ch&acirc;u Phi, anh di cư vĩnh viễn đến Cuba khi anh 22. Sau 82 năm ở Cuba, Fuentes đ&atilde; cố gắng đ&ograve;i lại quyền c&ocirc;ng d&acirc;n T&acirc;y Ban Nha v&agrave;o năm 2001. C&aacute;c nh&agrave; ph&ecirc; b&igrave;nh đ&atilde; lưu &yacute; rằng Santiago đ&atilde; cũng &iacute;t nhất 22 tuổi khi anh ta di cư từ T&acirc;y Ban Nha đến Cuba, v&agrave; do đ&oacute; đủ tuổi để được coi l&agrave; một người nhập cư v&agrave; một người nước ngo&agrave;i ở Cuba.</p>\r\n\r\n<p>Hemingway l&uacute;c đầu dự định sử dụng c&acirc;u chuyện của Santiago, đ&atilde; trở th&agrave;nh&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; Biển cả</em>, như một phần của sự th&acirc;n mật giữa mẹ v&agrave; con trai. Mối quan hệ trong cuốn s&aacute;ch li&ecirc;n quan đến Kinh Th&aacute;nh, m&agrave; &ocirc;ng gọi l&agrave; &quot;Cuốn s&aacute;ch biển&quot;. Một số kh&iacute;a cạnh của n&oacute; đ&atilde; xuất hiện trong&nbsp;<em>Quần đảo</em>&nbsp;được c&ocirc;ng bố sau khi ph&aacute;t h&agrave;nh. Hemingway đề cập đến trải nghiệm thực tế của một ngư d&acirc;n gi&agrave; gần giống với kinh nghiệm của Santiago v&agrave; thủy thủ của anh ta trong&nbsp;<em>On the Blue Water: A Gulf Stream Letter</em>&nbsp;(<em>Esquire</em>, th&aacute;ng 4 năm 1936).</p>\r\n\r\n<p>Tiểu luận của Joseph Waldmeir &quot;&nbsp;<em>Confiteor Hominem</em>: Ernest Hemingway&#39;s T&ocirc;n gi&aacute;o của con người&quot; l&agrave; một b&agrave;i đọc ph&ecirc; b&igrave;nh thuận lợi của tiểu thuyết Chuyện v&agrave; một trong đ&oacute; đ&atilde; x&aacute;c định c&aacute;c c&acirc;n nhắc ph&acirc;n t&iacute;ch kể từ đ&oacute;. C&oacute; lẽ c&acirc;u khẳng định đ&aacute;ng nhớ nhất l&agrave; c&acirc;u trả lời của Waldmeir cho c&acirc;u hỏi Th&ocirc;ng điệp của cuốn s&aacute;ch l&agrave; g&igrave;?</p>\r\n\r\n<blockquote>\r\n<p>C&acirc;u trả lời giả định một mức độ thứ ba m&agrave;&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; biển cả</em>&nbsp;phải được đọc như một loại b&igrave;nh luận ngụ ng&ocirc;n tr&ecirc;n tất cả c&aacute;c c&ocirc;ng việc trước đ&acirc;y của m&igrave;nh, nhờ đ&oacute; n&oacute; c&oacute; thể được thiết lập rằng c&aacute;c &acirc;m bội t&ocirc;n gi&aacute;o của&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; biển cả</em>&nbsp;l&agrave; kh&ocirc;ng đặc biệt với cuốn s&aacute;ch đ&oacute; trong số c&aacute;c t&aacute;c phẩm của Hemingway, v&agrave; Hemingway cuối c&ugrave;ng đ&atilde; thực hiện bước quyết định trong việc n&acirc;ng cao c&aacute;i c&oacute; thể gọi l&agrave; triết l&yacute; Manhood của &ocirc;ng l&ecirc;n tầm t&ocirc;n gi&aacute;o.</p>\r\n</blockquote>\r\n\r\n<p>Waldmeir đ&atilde; xem x&eacute;t chức năng của h&igrave;nh ảnh Kit&ocirc; gi&aacute;o của tiểu thuyết,&nbsp;<sup>[&nbsp;<em>nghi&ecirc;n cứu ban đầu?</em>&nbsp;]</sup>&nbsp;Đ&aacute;ng ch&uacute; &yacute; nhất th&ocirc;ng qua t&agrave;i liệu tham khảo của Hemingway đến đ&oacute;ng đinh của Ch&uacute;a Kit&ocirc; sau tr&ocirc;ng thấy những con c&aacute; mập m&agrave; đọc Santiago:</p>\r\n\r\n<blockquote>\r\n<p>&quot;&nbsp;<em>Ay</em>,&quot; anh n&oacute;i to. Kh&ocirc;ng c&oacute; bản dịch cho từ n&agrave;y v&agrave; c&oacute; lẽ đ&oacute; chỉ l&agrave; một tiếng ồn như một người đ&agrave;n &ocirc;ng c&oacute; thể tạo ra, v&ocirc; t&igrave;nh, cảm thấy m&oacute;ng tay đi qua tay v&agrave;o gỗ.</p>\r\n</blockquote>\r\n\r\n<p>Một trong những nh&agrave; ph&ecirc; b&igrave;nh thẳng thắn nhất về&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; Biển cả</em>&nbsp;l&agrave; Robert P. Weekks. T&aacute;c phẩm &quot;Fakery in&nbsp;<em>the Old Man and the Sea</em>&nbsp;&quot; năm 1962 của &ocirc;ng tr&igrave;nh b&agrave;y lập luận của &ocirc;ng rằng cuốn tiểu thuyết l&agrave; một sự kh&aacute;c biệt yếu đuối v&agrave; bất ngờ từ Hemingway điển h&igrave;nh, thực tế (gọi phần c&ograve;n lại của cơ thể Hemingway l&agrave; &quot;vinh quang trước đ&oacute;&quot;). &nbsp;Trong phần tiếp theo của cuốn tiểu thuyết n&agrave;y chống lại c&aacute;c t&aacute;c phẩm trước đ&oacute; của Hemingway, Tuần lễ tranh luận:</p>\r\n\r\n<blockquote>\r\n<p>Tuy nhi&ecirc;n, sự kh&aacute;c biệt về hiệu quả m&agrave; Hemingway sử dụng thiết bị đặc trưng n&agrave;y trong t&aacute;c phẩm hay nhất của &ocirc;ng v&agrave; trong&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; biển cả</em>&nbsp;đang chiếu s&aacute;ng. T&aacute;c phẩm hư cấu trong đ&oacute; Hemingway d&agrave;nh sự quan t&acirc;m nhiều nhất cho c&aacute;c vật thể tự nhi&ecirc;n,&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; Biển cả</em>, được tạo ra với số lượng giả mạo phi thường, phi thường bởi v&igrave; người ta sẽ kh&ocirc;ng t&igrave;m thấy sự kh&ocirc;ng ch&iacute;nh x&aacute;c, kh&ocirc;ng l&atilde;ng mạn h&oacute;a c&aacute;c vật thể tự nhi&ecirc;n trong một nh&agrave; văn người gh&ecirc; tởm WH Hudson, kh&ocirc;ng thể đọc Thoreau, ch&aacute;n gh&eacute;t lời h&ugrave;ng biện của Melville trong&nbsp;<em>Moby Dick</em>, v&agrave; bản th&acirc;n &ocirc;ng đ&atilde; bị c&aacute;c nh&agrave; văn kh&aacute;c chỉ tr&iacute;ch, đặc biệt l&agrave; Faulkner, v&igrave; sự tận t&acirc;m với sự thật v&agrave; kh&ocirc;ng sẵn s&agrave;ng &#39;ph&aacute;t minh&#39;.</p>\r\n</blockquote>\r\n\r\n<h2>Bối cảnh v&agrave; xuất bản[<a href=\"https://vi.wikipedia.org/w/index.php?title=%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3&amp;veaction=edit&amp;section=4\" title=\"Sửa đổi phần “Bối cảnh và xuất bản”\">sửa</a>&nbsp;|&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3&amp;action=edit&amp;section=4\" title=\"Sửa đổi phần “Bối cảnh và xuất bản”\">sửa m&atilde; nguồn</a>]</h2>\r\n\r\n<p>Kh&ocirc;ng c&oacute; cuốn s&aacute;ch hay n&agrave;o được viết m&agrave; trong đ&oacute; c&oacute; c&aacute;c biểu tượng xuất hiện trước đ&oacute; v&agrave; bị mắc kẹt.... T&ocirc;i đ&atilde; cố gắng tạo ra một &ocirc;ng gi&agrave; thực sự, một cậu b&eacute; thực sự, một biển thực sự v&agrave; một con c&aacute; thật v&agrave; c&aacute; mập thực sự. Nhưng nếu t&ocirc;i l&agrave;m cho họ tốt v&agrave; đủ đ&uacute;ng th&igrave; họ c&oacute; nghĩa l&agrave; nhiều thứ (lời Hemingway)</p>\r\n\r\n<p>Được viết v&agrave;o năm 1951, v&agrave; được xuất bản v&agrave;o năm 1952,&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; biển</em>&nbsp;l&agrave; t&aacute;c phẩm đầy đủ cuối c&ugrave;ng của Hemingway được xuất bản trong suốt cuộc đời của &ocirc;ng. Cuốn s&aacute;ch d&agrave;nh ri&ecirc;ng cho &quot; Charlie Scribner &quot; v&agrave; bi&ecirc;n tập vi&ecirc;n văn học &quot; Max Perkins &quot; của Hemingway, &nbsp;đ&atilde; được đăng tr&ecirc;n tạp ch&iacute;&nbsp;<em>Life</em>&nbsp;v&agrave;o ng&agrave;y 1 th&aacute;ng 9 năm 1952 v&agrave; năm triệu bản của tạp ch&iacute; đ&atilde; được b&aacute;n trong hai ng&agrave;y.</p>\r\n\r\n<p><em>&Ocirc;ng gi&agrave; v&agrave; biển</em>&nbsp;trở th&agrave;nh lựa chọn C&acirc;u lạc bộ của th&aacute;ng, v&agrave; biến Hemingway trở th&agrave;nh người nổi tiếng. &nbsp;Xuất bản dưới dạng s&aacute;ch v&agrave;o ng&agrave;y 1 th&aacute;ng 9 năm 1952, lần in ấn đầu ti&ecirc;n l&agrave; 50.000 bản. &nbsp;Phi&ecirc;n bản minh họa c&oacute; h&igrave;nh ảnh đen trắng của Charles Tunnicliffe v&agrave; Raymond Sheppard.</p>\r\n\r\n<p>V&agrave;o th&aacute;ng 5 năm 1953, cuốn tiểu thuyết đ&atilde; nhận được giải Pulitzer &nbsp;v&agrave; được tr&iacute;ch dẫn cụ thể khi năm 1954, &ocirc;ng được trao giải thưởng Nobel về văn học m&agrave; &ocirc;ng d&agrave;nh tặng cho người Cuba. &nbsp;Th&agrave;nh c&ocirc;ng của&nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; Biển cả</em>&nbsp;đ&atilde; khiến Hemingway trở th&agrave;nh người nổi tiếng quốc tế. &nbsp;<em>&Ocirc;ng gi&agrave; v&agrave; biển cả</em>&nbsp;được dạy ở c&aacute;c trường học tr&ecirc;n khắp thế giới v&agrave; tiếp tục kiếm tiền bản quyền nước ngo&agrave;i.</p>\r\n\r\n<h2>Đọc th&ecirc;m[<a href=\"https://vi.wikipedia.org/w/index.php?title=%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3&amp;veaction=edit&amp;section=5\" title=\"Sửa đổi phần “Đọc thêm”\">sửa</a>&nbsp;|&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3&amp;action=edit&amp;section=5\" title=\"Sửa đổi phần “Đọc thêm”\">sửa m&atilde; nguồn</a>]</h2>\r\n\r\n<ul>\r\n	<li><cite>Young, Philip (1952).&nbsp;<em>Ernest Hemingway</em>. New York: Holt, Rinehart, &amp; Winston.&nbsp;<a href=\"https://vi.wikipedia.org/wiki/ISBN\" title=\"ISBN\">ISBN</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90%E1%BA%B7c_bi%E1%BB%87t:Ngu%E1%BB%93n_s%C3%A1ch/0-8166-0191-7\" title=\"Đặc biệt:Nguồn sách/0-8166-0191-7\">0-8166-0191-7</a>.</cite></li>\r\n	<li><cite>Jobes, Katharine T., ed (1968).&nbsp;<em>Twentieth Century Interpretations of The Old Man and the Sea</em>. Englewood Cliffs, New Jersey: Prentice Hall.&nbsp;<a href=\"https://vi.wikipedia.org/wiki/ISBN\" title=\"ISBN\">ISBN</a>&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90%E1%BA%B7c_bi%E1%BB%87t:Ngu%E1%BB%93n_s%C3%A1ch/0-13-633917-4\" title=\"Đặc biệt:Nguồn sách/0-13-633917-4\">0-13-633917-4</a>.</cite></li>\r\n	<li><cite><a href=\"http://www.pbs.org/hemingwayadventure/cuba.html\" rel=\"nofollow\">&ldquo;Michael Palin&#39;s Hemingway Adventure: Cuba&rdquo;</a>.&nbsp;<em>PBS</em>. Truy cập 2006.</cite>&nbsp;Kiểm tra gi&aacute; trị ng&agrave;y th&aacute;ng trong:&nbsp;<code>|ng&agrave;y truy cập=</code>&nbsp;(<a href=\"https://vi.wikipedia.org/wiki/Tr%E1%BB%A3_gi%C3%BAp:L%E1%BB%97i_CS1#bad_date\" title=\"Trợ giúp:Lỗi CS1\">trợ gi&uacute;p</a>)</li>\r\n	<li><cite>Ivan Kashkin (1959).&nbsp;<em>Commentary (in Ernest Hemingway - Selected works in two volumes)</em>. Moscow: State publisher for literature.</cite></li>\r\n</ul>\r\n\r\n<h2>Tham khảo[<a href=\"https://vi.wikipedia.org/w/index.php?title=%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3&amp;veaction=edit&amp;section=6\" title=\"Sửa đổi phần “Tham khảo”\">sửa</a>&nbsp;|&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3&amp;action=edit&amp;section=6\" title=\"Sửa đổi phần “Tham khảo”\">sửa m&atilde; nguồn</a>]</h2>\r\n\r\n<ol>\r\n	<li><strong><a href=\"https://vi.wikipedia.org/wiki/%C3%94ng_gi%C3%A0_v%C3%A0_bi%E1%BB%83n_c%E1%BA%A3#cite_ref-nobel_1-0\">^</a></strong>&nbsp;<cite><a href=\"http://nobelprize.org/literature/laureates/1954/\" rel=\"nofollow\">&ldquo;The Nobel Prize in Literature 1954&rdquo;</a>.&nbsp;<em>The Nobel Foundation</em>. Truy cập ng&agrave;y 31 th&aacute;ng 1 năm 2005.</cite></li>\r\n</ol>\r\n\r\n<h2>Li&ecirc;n kết ngo&agrave;i</h2>', 0),
(5, 16, 'Chương 1', 'chuong_1', 'đen thôi đỏ quên đi', '<p>mlem</p>', 0);

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
(5, 'Truyện hài hước', 'truyen_hai_huoc', 'Hấp dẫn, thư dãn, thú vị, không tin nổi', 0);

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
  `giamuon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `tensach` varchar(255) NOT NULL,
  `tacgia` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `slug_sach` varchar(255) NOT NULL,
  `theloai_id` int(11) UNSIGNED NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` longtext NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`id`, `tensach`, `tacgia`, `hinhanh`, `slug_sach`, `theloai_id`, `tomtat`, `noidung`, `kichhoat`) VALUES
(2, 'Đắc nhân tâm', 'Ketashi', 'na-tra-142.jpg', 'dac_nhan_tam', 3, 'Cuốn sách hay nói về tâm lý', '<p>/............................................/</p>', 0),
(3, 'Ansi', 'Yamato', 'ansi66.jpg', 'ansi_', 4, 'Công thành chiến', '<p>Đ&aacute;nh nhau triền mi&ecirc;n</p>', 0);

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
(4, 'Truyện ngược', 'truyen_nguoc', 'Lôi cuốn, mau nước mắt', 0);

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
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `truyen`
--

INSERT INTO `truyen` (`id`, `tentruyen`, `tacgia`, `tomtat`, `slug_truyen`, `danhmuc_id`, `theloai_id`, `hinhanh`, `kichhoat`) VALUES
(1, 'Onepiece', 'Oda', 'Cuộc phiêu lưu vĩ đại của Monkey D.Luffy cùng các đồng đội', 'onepiece', 5, 1, '01jpg_2019-10-07-08-22-2557.jpg', 0),
(13, 'Conan1', 'Waka', 'Mở đầu câu truyện, cậu học sinh trung học 16 tuổi Shinichi Kudo bị biến thành cậu bé Conan Edogawa.', 'conan1', 4, 1, 'images442.jpg', 0),
(14, 'Naruto', 'Takeshi', 'Nhẫn thuật chi biến', 'naruto', 5, 3, 'naruto54.jpg', 0),
(15, 'Tokyo revengers', 'Takeshi', 'Hành trình mở ra thời đại bất lương', 'tokyo_revengers', 5, 3, 'unnamed41.jpg', 0),
(16, 'Natra', 'Dương Mịch', 'Natra ma đồng giáng thế', 'natra', 5, 3, 'na-tra-196.jpg', 0);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `truyen`
--
ALTER TABLE `truyen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
