-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2023 lúc 02:44 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bais`
--

CREATE TABLE `bais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `chuong_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bais`
--

INSERT INTO `bais` (`id`, `name`, `noidung`, `chuong_id`, `created_at`, `updated_at`) VALUES
(1, 'Bài 1', 'Sự phụ thuộc của cường độ dòng điện vào hiệu điện thế giữa hai đầu dây dẫn', 1, NULL, NULL),
(2, 'Bài 2', 'Điện trở của dây dẫn - Định luật Ôm', 1, NULL, NULL),
(3, 'Bài 3', 'Thực hành: Xác định điện trở của một dây dẫn bằng ampe kế và vôn kế', 1, NULL, NULL),
(4, 'Bài 4', 'Đoạn mạch nối tiếp', 1, NULL, NULL),
(5, 'Bài 5', 'Đoạn mạch song song', 1, NULL, NULL),
(6, 'Bài 6', 'Bài tập vận dụng định luật Ôm', 1, NULL, NULL),
(7, 'Bài 7', 'Langberg', 1, NULL, NULL),
(8, 'Bài 8', 'North Shawna', 1, NULL, NULL),
(9, 'Bài 9', 'North Maynardfort', 1, NULL, NULL),
(10, 'Bài 10', 'New Frank', 1, NULL, NULL),
(11, 'Bài 11', 'Omariland', 1, NULL, NULL),
(12, 'Bài 12', 'Pascaletown', 1, NULL, NULL),
(13, 'Bài 13', 'Altenwerthshire', 1, NULL, NULL),
(14, 'Bài 14', 'South Cathy', 1, NULL, NULL),
(15, 'Bài 15', 'Port Domenickmouth', 1, NULL, NULL),
(16, 'Bài 16', 'East Vincenttown', 1, NULL, NULL),
(17, 'Bài 17', 'East Vena', 1, NULL, NULL),
(18, 'Bài 18', 'Jessicaland', 1, NULL, NULL),
(19, 'Bài 19', 'Port Emmymouth', 1, NULL, NULL),
(20, 'Bài 21', 'Nam châm vĩnh cửu', 2, NULL, NULL),
(21, 'Bài 22', 'Tác dụng từ của dòng điện - Từ trường', 2, NULL, NULL),
(22, 'Bài 23', 'Từ phổ - Đường sức từ', 2, NULL, NULL),
(23, 'Bài 24', 'Từ trường của ống dây có dòng điện chạy qua', 2, NULL, NULL),
(24, 'Bài 25', 'Port Nya', 2, NULL, NULL),
(25, 'Bài 26', 'Baumbachport', 2, NULL, NULL),
(26, 'Bài 27', 'Yundtberg', 2, NULL, NULL),
(27, 'Bài 28', 'North Jeanette', 2, NULL, NULL),
(28, 'Bài 29', 'Adamsview', 2, NULL, NULL),
(29, 'Bài 30', 'East Beulahhaven', 2, NULL, NULL),
(30, 'Bài 31', 'Hudsonmouth', 2, NULL, NULL),
(31, 'Bài 32', 'West Roslynfurt', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhois`
--

CREATE TABLE `cauhois` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `mucdo` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `kienthuc_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cauhois`
--

INSERT INTO `cauhois` (`id`, `name`, `noidung`, `mucdo`, `image`, `kienthuc_id`, `created_at`, `updated_at`) VALUES
(1, 'Cauhoi', 'Đồ thị a và b được hai học sinh vẽ khi làm thí nghiệm xác định liên hệ giữa cường độ dòng điện và hiệu điện thế đặt vào hai đầu dây dẫn. Nhận xét nào là đúng?', 0, '202312120249cau1.jpg', 1, '2023-12-11 19:49:31', '2023-12-11 19:49:31'),
(2, 'Cauhoi', 'Trên hình vẽ. Hãy cho biết đồ thị nào biểu diễn đúng mối quan hệ giữa cường độ dòng điện I(A) chạy trong dây dẫn và hiệu điện thế U(V) đặt vào hai đầu dây dẫn đó?', 0, '202312120250cau2.jpg', 1, '2023-12-11 19:50:24', '2023-12-11 19:50:24'),
(3, 'Cauhoi', 'Để đo cường độ dòng điện qua đèn, người ta mắc theo một trong bốn sơ đồ sau. Hãy cho biết sơ đồ nào ampe kế mắc đúng?', 0, '202312120251cau3.jpg', 1, '2023-12-11 19:51:33', '2023-12-11 19:51:33'),
(4, 'Cauhoi', 'Quan sát sơ đồ mạch điện. Phát biểu nào đúng', 0, '202312120252cau4.jpg', 1, '2023-12-11 19:52:35', '2023-12-11 19:52:35'),
(5, 'Cauhoi', 'Quan sát đồ thị sau, xác định cường độ dòng điện chạy qua dây dẫn khi hiệu điện thế là 4,5 V', 0, '202312120253cau5.png', 1, '2023-12-11 19:53:29', '2023-12-11 19:53:29'),
(6, 'Cauhoi', 'Một dây dẫn được mắc vào hiệu điện thế 8V thì cường độ dòng điện chạy qua nó là 0,4A. Quan sát bảng giá trị hiệu điện thế và cường độ dòng điện sau đây và cho biết giá trị nào của A, B, C, D là không phù hợp?', 1, '202312120254cau1.jpg', 2, '2023-12-11 19:54:49', '2023-12-11 19:54:49'),
(7, 'Cauhoi', 'Một dây dẫn được mắc vào hiệu điện thế 9V thì cường độ dòng điện chạy qua nó là 0,3A. Nếu giảm hiệu điện thế đặt vào hai đầu dây dẫn đi 3V thì dòng điện qua dây dẫn khi đó có cường độ như thế nào?', 1, NULL, 2, '2023-12-11 19:56:24', '2023-12-11 19:56:24'),
(8, 'Cauhoi', 'Dòng điện chạy qua một dây dẫn có cường độ 2,5A khi nó được mắc vào hiệu điện thế 50V. Muốn dòng điện chạy qua dây dẫn đó có cường độ dòng điện giảm đi 0,5A thì hiệu điện thế phải là bao nhiêu?', 1, NULL, 2, '2023-12-11 19:57:11', '2023-12-11 19:57:11'),
(9, 'Cauhoi', 'Khi đặt một hiệu điện thế 10V giữa hai đầu một dây dẫn thì dòng điện đi qua nó có cường độ là 1,25A. Hỏi phải giảm hiệu điện thế giữa hai đầu dây này đi một lượng là bao nhiêu để dòng điện đi qua dây chỉ còn là 0,75A?', 1, NULL, 2, '2023-12-11 19:58:15', '2023-12-11 19:58:15'),
(10, 'Cauhoi', 'Khi đặt vào hai đầu dây dẫn một hiệu điện thế 18V thì cường độ dòng điện chạy qua nó là 0,6A. Nếu hiệu điện thế đặt vào hai đầu dây dẫn tăng lên đến 36V thì cường độ dòng điện chạy qua nó bằng bao nhiêu?', 1, NULL, 2, '2023-12-11 19:59:30', '2023-12-11 19:59:30'),
(11, 'Cauhoi', 'Cường độ dòng điện đi qua một dây dẫn là I1, khi hiệu điện thế giữa hai đầu dây dẫn này là U1 = 7,2V. Dòng điện đi qua dây dẫn này sẽ có cường độ I2 lớn gấp bao nhiêu lần nếu hiệu điện thế giữa hai đầu của nó tăng thêm 10,8V?', 1, NULL, 2, '2023-12-11 20:00:19', '2023-12-11 20:00:19'),
(12, 'Cauhoi', 'Khi đặt hiệu điện thế 12V vào hai đầu một dây dẫn thì cường độ dòng điện chạy qua nó có cường độ 6 mA. Muốn dòng điện chạy qua dây dẫn đó có cường độ giảm đi 4 mA thì hiệu điện thế là:', 1, NULL, 2, '2023-12-11 20:01:41', '2023-12-11 20:01:41'),
(13, 'Cauhoi', 'Hiệu điện thế giữa hai đầu dây dẫn giảm bao nhiêu lần thì cường độ dòng điện chạy qua dây dẫn sẽ', 0, NULL, 2, '2023-12-11 20:02:29', '2023-12-11 20:02:29'),
(14, 'Cauhoi', 'Khi thay đổi hiệu điện thế giữa hai đầu dây dẫn thì cường độ dòng điện chạy qua dây dẫn đó có mối quan hệ', 0, NULL, 2, '2023-12-11 20:03:19', '2023-12-11 20:03:19'),
(15, 'Cauhoi', 'Khi thay đổi hiệu điện thế đặt vào hai đầu dây dẫn thì cường độ dòng điện giảm đi 3 lần. Hỏi hiệu điện thế ở hai đầu dây dẫn đã thay đổi thế nào? Chọn kết quả đúng trong các kết quả sau:', 0, NULL, 2, '2023-12-11 20:04:32', '2023-12-11 20:04:32'),
(16, 'Cauhoi', 'Cường độ dòng điện chạy qua một dây dẫn là 2A khi nó được mắc với hiệu điện thế 12V. Muốn dòng điện tăng thêm 0,5A thì hiệu điện thế phải bằng bao nhiêu?', 1, NULL, 2, '2023-12-11 20:05:32', '2023-12-11 20:05:32'),
(17, 'Cauhoi', 'Hiệu điện thế đặt vào giữa hai đầu một vật dẫn là 18V thì cường độ dòng điện qua nó là 0,2A. Muốn cường độ dòng điện qua nó tăng thêm 0,3A thì phải đặt vào hai đầu vật dẫn đó một hiệu điện thế là bao nhiêu?', 1, NULL, 2, '2023-12-11 20:06:29', '2023-12-11 20:06:29'),
(18, 'Cauhoi', 'Điều nào sau đây là đúng khi nói về mối liên hệ giữa cường độ dòng điện chạy qua một dây dẫn với hiệu điện thế đặt vào hai đầu dây dẫn đó?', 0, NULL, 2, '2023-12-11 20:07:30', '2023-12-11 20:07:30'),
(19, 'Cauhoi', 'Cường độ dòng điện chạy qua một dây dẫn là 1 A khi nó được mắc vào hiệu điện thế 16 V. Muốn dòng điện chạy qua dây dẫn đó tăng thêm 0,2 A thì hiệu điện thế phải là bao nhiêu?', 1, NULL, 2, '2023-12-11 20:08:47', '2023-12-11 20:08:47'),
(20, 'Cauhoi', 'Khi hiệu điện thế đặt vào giữa hai đầu dây dẫn tăng lên ba lần thì cường độ dòng điện qua dây dẫn đó thay đổi như thế nào?', 0, NULL, 2, '2023-12-11 20:09:25', '2023-12-11 20:09:25'),
(21, 'Cauhoi', 'Cường độ dòng điện chạy qua một dây dẫn là 2A khi nó được mắc vào hiệu điện thế là 36V. Muốn dòng điện chạy qua dây dẫn đó tăng thêm 0,5A nữa thì hiệu điện thế phải là bao nhiêu?', 1, NULL, 2, '2023-12-11 20:09:58', '2023-12-11 20:09:58'),
(22, 'Cauhoi', 'Hãy sắp đặt theo thứ tự đơn vị của các đại lượng sau: hiệu điện thế, cường độ dòng điện, điện trở.', 0, NULL, 4, '2023-12-11 20:14:08', '2023-12-11 20:14:08'),
(23, 'Cauhoi', 'Chọn phép đổi đơn vị đúng.', 0, NULL, 4, '2023-12-11 20:14:46', '2023-12-11 20:14:46'),
(24, 'Cauhoi', 'Điều nào sau đây là đúng khi nói về điện trở của vật dẫn?', 0, NULL, 4, '2023-12-11 20:16:03', '2023-12-11 20:16:03'),
(25, 'Cauhoi', 'Điện trở R của dây dẫn biểu thị cho', 0, NULL, 4, '2023-12-11 20:22:57', '2023-12-11 20:22:57'),
(26, 'Cauhoi', 'Điện trở R của dây dẫn biểu thị cho', 0, NULL, 4, '2023-12-11 20:22:58', '2023-12-11 20:22:58'),
(27, 'Cauhoi', 'Đơn vị nào dưới dây là đơn vị đo điện trở', 0, NULL, 4, '2023-12-11 20:25:57', '2023-12-11 20:25:57'),
(28, 'Cauhoi', 'Một bóng đèn khi sáng bình thường thì dòng điện qua nó là 0,2 A và hiệu điện thế là 3,6 V. Dùng bóng đèn trên với hiệu điện thế 6 V. Hiện tượng gì sẽ xảy ra?', 0, NULL, 5, '2023-12-11 20:50:59', '2023-12-11 20:50:59'),
(29, 'Cauhoi', ': Lựa chọn từ thích hợp điền vào chỗ trống. …………. của dây dẫn càng nhỏ thì dây dẫn đó dẫn điện càng tốt', 0, NULL, 5, '2023-12-11 20:51:39', '2023-12-11 20:51:39'),
(30, 'Cauhoi', 'Phát biểu nào sau đây là đúng', 0, NULL, 5, '2023-12-11 20:52:23', '2023-12-11 20:52:23'),
(31, 'Cauhoi', 'Điện trở của dây dẫn nhất định có mối quan hệ phụ thuộc nào dưới đây?', 0, NULL, 5, '2023-12-11 20:53:12', '2023-12-11 20:53:12'),
(32, 'Cauhoi', 'Cho điện trở R = 30Ω, hiệu điện thế đặt vào hai đầu điện trở là U, cường độ dòng điện chạy qua điện trở là I. Thông tin nào sau đây là đúng?', 0, NULL, 5, '2023-12-11 20:54:14', '2023-12-11 20:54:14'),
(33, 'Cauhoi', 'Trong các công thức sau đây, với U là hiệu điện thế giữa hai đầu dây dẫn, I là cường độ dòng điện qua dây dẫn, R là điện trở của dây dẫn, công thức nào là sai?', 0, NULL, 6, '2023-12-11 20:55:16', '2023-12-11 20:55:16'),
(34, 'Cauhoi', 'Một dây dẫn có điện trở 50 Ω chịu được dòng điện có cường độ lớn nhất là 300mA. Hiệu điện thế lớn nhất đặt giữa hai đầu dây dẫn đó là:', 1, NULL, 6, '2023-12-11 20:55:49', '2023-12-11 20:55:49'),
(35, 'Cauhoi', 'Một bóng đèn xe máy lúc thắp sáng có điện trở 12Ω và cường độ dòng điện chạy qua dây tóc bóng đèn là 0,5 A. Hiệu điện thế giữa hai đầu dây tóc bóng đèn khi đó là bao nhiêu?', 1, NULL, 6, '2023-12-11 20:57:13', '2023-12-11 20:57:13'),
(36, 'Cauhoi', 'Một dây dẫn được mắc vào hiệu điện thế 12V thì cường độ dòng điện chạy qua nó là 0,3A. Nếu giảm hiệu điện thế đặt vào hai đầu dây dẫn đi 4V thì dòng điện qua dây dẫn khi đó có cường độ dòng điện là bao nhiêu?', 1, NULL, 6, '2023-12-11 20:58:06', '2023-12-11 20:58:06'),
(37, 'Cauhoi', 'Muốn đo hiệu điện thế của một nguồn điện, nhưng không có Vôn kế, một học sinh đã sử dụng một Ampe kế và một điện trở có giá trị R = 200 Ω mắc nối tiếp nhau, biết Ampe kế chỉ 1,2 A. Hỏi hiệu điện thế giữa hai cực nguồn điện bằng bao nhiêu?', 1, NULL, 6, '2023-12-11 20:59:58', '2023-12-11 20:59:58'),
(38, 'Cauhoi', 'Một bóng đèn khi sáng bình thường thì dòng điện qua nó là 0,2 A và hiệu điện thế là 3,6 V. Điện trở bóng đèn khi sáng bình thường là', 1, NULL, 6, '2023-12-11 21:15:50', '2023-12-11 21:15:50'),
(39, 'Cauhoi', 'Đặt vào hai đầu điện trở R một hiệu điện thế U = 12V, thì cường độ dòng điện chạy qua điện trở là 1,5 A. Điện trở R có thể nhận giá trị nào trong các giá trị sau?', 1, NULL, 6, '2023-12-11 21:16:28', '2023-12-11 21:16:28'),
(40, 'Cauhoi', 'Khi đặt vào hai đầu dây dẫn một hiệu điện thế 12V thì cường độ dòng điện chạy qua nó là 0,5A. Nếu hiệu điện thế đặt vào điện trở đó là 36V thì cường độ dòng điện chạy trong dây dẫn đó là bao nhiêu?', 1, NULL, 6, '2023-12-11 21:17:13', '2023-12-11 21:17:13'),
(41, 'Cauhoi', 'Cường độ dòng điện chạy qua một bóng đèn là 1,2A khi mắc nó vào hiệu điện thế 12V. Muốn cường độ dòng điện chạy qua bóng đèn tăng thêm 0,3A thì hiệu điện thế giữa hai đầu bóng đèn tăng hoặc giảm bao nhiêu?', 1, NULL, 6, '2023-12-11 21:17:57', '2023-12-11 21:17:57'),
(42, 'Cauhoi', 'Phát biểu nào sau đây đúng với nội dung của định luật Ôm?', 0, NULL, 6, '2023-12-11 21:18:42', '2023-12-11 21:18:42'),
(43, 'Cauhoi', ': Đặt vào hai đầu điện trở R một hiệu điện thế U = 12V, thì cường độ dòng điện chạy qua điện trở là 1,5 A. Nếu thay điện trở R bằng R\' = 24 Ω. thì cường độ dòng điện qua R\' có thể là giá trị nào trong các giá trị sau?', 1, NULL, 6, '2023-12-11 21:19:33', '2023-12-11 21:19:33'),
(44, 'Cauhoi', 'Hai điện trở R1, R2 và ampe kế được mắc nối tiếp vào đoạn mạch A, B như hình 13. Cho R1 = 5Ω; R2 = 10Ω, ampe kế chỉ 0,2A. Hiệu điện thế của đoạn mạch AB là:', 0, '202312120425cau1.jpg', 10, '2023-12-11 21:25:47', '2023-12-11 21:25:47'),
(45, 'Cauhoi', 'Trong đoạn mạch mắc nối tiếp, công thức nào sau đây là sai?', 0, NULL, 10, '2023-12-11 21:26:47', '2023-12-11 21:26:47'),
(46, 'Cauhoi', 'Cho mạch điện gồm 3 điện trở mắc nối tiếp nhau . Biết R1 = 8Ω; R2 = 12Ω; R3 = 4Ω; hiệu điện thế giữa hai đầu đoạn mạch U = 48V. Tính hiệu điện thế ở hai đầu mỗi điện trở.', 1, NULL, 10, '2023-12-11 21:27:40', '2023-12-11 21:27:40'),
(47, 'Cauhoi', 'Người ta chọn một số điện trở loại 2Ω và 4Ω để nối tiếp thành đoạn mạch có điện trở tổng cộng là 16Ω. Có bao nhiêu phương án lựa chọn để thực hiện yêu cầu trên?', 1, NULL, 10, '2023-12-11 21:28:46', '2023-12-11 21:28:46'),
(48, 'Cauhoi', 'Có ba điện trở R1 = 15Ω, R2 = 25Ω, R3 = 20Ω. Mắc ba điện trở này nối tiếp với nhau rồi đặt vào hai đầu đoạn mạch hiệu điện thế U = 90V. Cường độ dòng điện trong mạch có thể nhận giá trị', 0, NULL, 10, '2023-12-11 21:29:32', '2023-12-11 21:29:32'),
(49, 'Cauhoi', 'Phát biểu nào sau đây là đúng khi nói về cường độ dòng điện trong đoạn mạch mắc nối tiếp', 0, NULL, 10, '2023-12-11 21:30:23', '2023-12-11 21:30:23'),
(50, 'Cauhoi', 'Cho hai điện trở R1 = 12 Ω và R2 = 18Ω được mắc nối tiếp với nhau. Điện trở tương đương R12 của đoạn mạch đó có thể nhận giá trị nào trong các giá trị sau?', 0, NULL, 10, '2023-12-11 21:31:43', '2023-12-11 21:31:43'),
(51, 'Cauhoi', 'Người ta chọn một số điện trở loại 2Ω và 4Ω để nối tiếp thành đoạn mạch có điện trở tổng cộng là 16Ω. Trong các phương án sau đây, phương án nào không phù hợp?', 1, NULL, 10, '2023-12-11 21:32:47', '2023-12-11 21:32:47'),
(52, 'Cauhoi', 'Trong đoạn mạch mắc nối tiếp, hiệu điện thế giữa hai đầu đoạn mạch', 0, NULL, 10, '2023-12-11 21:33:41', '2023-12-11 21:33:41'),
(53, 'Cauhoi', 'Người ta chọn một số điện trở loại 2Ω và 4Ω để nối tiếp thành đoạn mạch có điện trở tổng cộng là 16Ω. Trong các phương án nào sau đây, phương án nào sai', 0, NULL, 10, '2023-12-11 21:34:18', '2023-12-11 21:34:18'),
(54, 'Cauhoi', 'Cho một mạch điện gồm 3 điện trở có giá trị lần lượt là R1 = 8Ω, R2 = 12Ω, R3 = 6Ω mắc nối tiếp nhau. Đặt vào hai đầu đoạn mạch một hiệu điện thế U = 65 V. Cường độ dòng điện qua mạch có thể là', 1, NULL, 11, '2023-12-11 21:41:29', '2023-12-11 21:41:29'),
(55, 'Cauhoi', 'Cho hai điện trở R1 = 12 Ω và R2 = 18Ω được mắc nối tiếp với nhau. Mắc nối tiếp thêm R3 = 20Ω vào đoạn mạch trên, thì điện trở tương đương của đoạn mạch mới là', 0, NULL, 11, '2023-12-11 21:43:52', '2023-12-11 21:43:52'),
(56, 'Cauhoi', 'Cho mạch điện sơ đồ như hình 15, trong đó điện trở R1 = 5Ω, R2 = 15Ω, vôn kế chỉ 3V. Hiệu điện thế của đoạn mạch AB có thể nhận giá trị:', 0, '202312120445cau8.jpg', 11, '2023-12-11 21:45:01', '2023-12-11 21:45:01'),
(57, 'Cauhoi', 'Cho mạch điện có sơ đồ như hình 14 trong đó điện trở R1 = 10Ω, R2 = 20Ω, hiệu điện thế hai đầu đoạn mạch AB bằng 12V. Số chỉ của vôn kế và ampe kế lần lượt là bao nhiêu?', 0, '202312120445cau9.jpg', 11, '2023-12-11 21:45:44', '2023-12-11 21:45:44'),
(58, 'Cauhoi', 'Có hai thanh kim loại A, B bề ngoài giống hệt nhau, trong đó một thanh là nam châm. Làm thế nào để xác định được thanh nào là nam châm?', 1, NULL, 12, '2023-12-11 21:47:26', '2023-12-11 21:47:26'),
(59, 'Cauhoi', 'Dụng cụ nào dưới đây không có nam châm vĩnh cửu?', 0, NULL, 58, '2023-12-11 21:49:14', '2023-12-11 21:49:14'),
(60, 'Cauhoi', 'Chọn câu trả lời đúng.Trên thanh nam châm chỗ nào hút sắt mạnh nhất', 0, NULL, 58, '2023-12-11 21:49:57', '2023-12-11 21:49:57'),
(61, 'Cauhoi', 'Khi đặt la bàn tại một vị trí trên mặt đất, kim la bàn định hướng như thế nào?', 0, NULL, 58, '2023-12-11 21:50:56', '2023-12-11 21:50:56'),
(62, 'Cauhoi', 'Có hai thanh thép luôn hút nhau bất kể đưa đầu nào của chúng lại gần nhau. Trong các thông tin sau đây, thông tin nào đúng?', 0, NULL, 58, '2023-12-11 21:51:57', '2023-12-11 21:51:57'),
(63, 'Cauhoi', 'Phát biểu nào sau đây là đúng khi nói về sự định hướng của kim nam châm đặt trên mũi nhọn cố định ?', 0, NULL, 58, '2023-12-11 21:52:38', '2023-12-11 21:52:38'),
(64, 'Cauhoi', 'Trong các thí nghiệm sau thí nghiệm nào có thể phát hiện thanh kim loại  là nam châm?', 1, NULL, 58, '2023-12-11 21:54:01', '2023-12-11 21:54:01'),
(65, 'Cauhoi', 'La bàn là dụng cụ để xác định', 0, NULL, 58, '2023-12-11 21:54:46', '2023-12-11 21:54:46'),
(66, 'Cauhoi', 'Một nam châm vĩnh cửu có đặc tính nào dưới đây?', 0, NULL, 58, '2023-12-11 21:55:54', '2023-12-11 21:55:54'),
(67, 'Cauhoi', 'Phát biểu nào sau đây là đúng nhất khi nói về sự tương tác giữa hai nam châm', 1, NULL, 59, '2023-12-11 22:00:35', '2023-12-11 22:00:35'),
(68, 'Cauhoi', 'Vì sao có thể nói rằng Trái Đất giống như một thanh nam châm khổng lồ?', 1, NULL, 59, '2023-12-11 22:01:27', '2023-12-11 22:01:27'),
(69, 'Cauhoi', 'Người ta dùng la bàn xác định hướng bắc địa lí. Bộ phận chính của là bàn là', 1, NULL, 59, '2023-12-11 22:02:25', '2023-12-11 22:02:25'),
(70, 'Cauhoi', 'Khi một thanh nam châm thẳng bị gãy thành hai nửa. Nhận định nào sau đây là đúng?', 1, NULL, 59, '2023-12-11 22:03:20', '2023-12-11 22:03:20'),
(71, 'Cauhoi', 'Có hai thanh nam châm, thanh thứ nhất có kí hiệu các cực còn thanh thứ hai đã mất các kí hiệu. Làm cách nào để nhận biết được các cực của thanh nam châm thứ hai?', 1, NULL, 59, '2023-12-11 22:04:05', '2023-12-11 22:04:05'),
(72, 'Cauhoi', 'Trong bệnh viện, các bác sĩ phẫu thuật có thể lấy các mạt sắt nhỏ li ti ra khỏi mắt của bệnh nhân một cách an toàn bằng dụng cụ nào sau đây?', 0, NULL, 59, '2023-12-11 22:05:13', '2023-12-11 22:05:13'),
(73, 'Cauhoi', 'Điều nào sau đây là sai khi nói về đặc điểm của nam châm', 1, NULL, 59, '2023-12-11 22:05:55', '2023-12-11 22:05:55'),
(74, 'Cauhoi', 'Các lực từ cùng tên thì đẩy nhau, nhưng tại sao cực Bắc của kim nam châm trong một la bàn luôn chỉ hướng Bắc?', 1, NULL, 59, '2023-12-11 22:06:38', '2023-12-11 22:06:38'),
(75, 'Cauhoi', 'Hiện tượng nào sau đây có thể xảy ra khi đưa từ cực của hai nam châm lại gần nhau?', 1, NULL, 59, '2023-12-11 22:07:33', '2023-12-11 22:07:33'),
(76, 'Cauhoi', 'Phát biểu nào sau đây là đúng khi nói về nam châm', 0, NULL, 59, '2023-12-11 22:08:19', '2023-12-11 22:08:19'),
(77, 'Cauhoi', 'Nam châm vĩnh cửu có', 0, NULL, 59, '2023-12-11 22:09:02', '2023-12-11 22:09:02'),
(78, 'Cauhoi', ':   (I): Xung quanh Trái Đất có từ trường. Vì (II): Trái Đất có hai địa cực là địa cực Bắc và địa cực Nam.', 0, NULL, 61, '2023-12-11 22:15:36', '2023-12-11 22:15:36'),
(79, 'Cauhoi', 'Từ trường là', 0, NULL, 61, '2023-12-11 22:16:20', '2023-12-11 22:16:20'),
(80, 'Cauhoi', 'Từ trường không tồn tại ở', 0, NULL, 61, '2023-12-11 22:17:06', '2023-12-11 22:17:06'),
(81, 'Cauhoi', 'Dòng điện chạy qua dây dẫn thẳng hay dây dẫn có hình dạng bất kì đều gây ra tác dụng lực lên kim nam châm đặt gần nó. Lực này là', 0, NULL, 61, '2023-12-11 22:17:54', '2023-12-11 22:17:54'),
(82, 'Cauhoi', 'Để kiểm tra xem một dây dẫn chạy qua nhà có dòng điện hay không mà không dùng dụng cụ đo điện, ta có thể dùng dụng cụ nào dưới đây', 0, NULL, 61, '2023-12-11 22:18:37', '2023-12-11 22:18:37'),
(83, 'Cauhoi', 'Dựa vào hiện tượng nào dưới đây để kết luận rằng: Dòng điện chạy qua dây dẫn thẳng có từ trường?', 0, NULL, 61, '2023-12-11 22:19:19', '2023-12-11 22:19:19'),
(84, 'Cauhoi', 'Người ta dùng cụ nào để có thể nhận biết được từ trường?', 1, NULL, 61, '2023-12-11 22:20:04', '2023-12-11 22:20:04'),
(85, 'Cauhoi', ':  Điều nào sau đây là đúng khi nói về từ trường?', 1, NULL, 61, '2023-12-11 22:20:45', '2023-12-11 22:20:45'),
(86, 'Cauhoi', 'Ta nhận biết từ trường bằng', 0, NULL, 62, '2023-12-11 22:30:21', '2023-12-11 22:30:21'),
(87, 'Cauhoi', 'Nếu có một nam châm và trục nhọn thẳng đứng thì em làm cách nào để phát hiện trong dây dẫn AB có dòng điện chạy qua hay không?', 1, NULL, 62, '2023-12-11 22:31:21', '2023-12-11 22:31:21'),
(88, 'Cauhoi', 'Trong thí nghiệm phát hiện từ trường của dòng điện, dây dẫn AB được bố trí như thế nào để hiện tượng xảy ra dễ quan sát nhất?', 1, NULL, 62, '2023-12-11 22:32:00', '2023-12-11 22:32:00'),
(89, 'Cauhoi', 'Câu nào sau đây là đúng?', 0, NULL, 62, '2023-12-11 22:32:40', '2023-12-11 22:32:40'),
(90, 'Cauhoi', 'Chọn phương án sai.Trong thí nghiệm Ơ – xtét, khi đặt dây dẫn song song với kim nam châm, cho dòng điện chạy qua dây dẫn thì', 1, NULL, 62, '2023-12-11 22:33:35', '2023-12-11 22:33:35'),
(91, 'Cauhoi', ':  Đặt một kim nam châm trên mũi nhọn gần với dây dẫn có dòng điện chạy qua, sau khi kim nam châm đã đứng yên, xoay cho nó lệch khỏi hướng vừa xác định rồi buông tay. Hiện tượng nào sau đây có thể xảy ra?', 1, NULL, 62, '2023-12-11 22:34:25', '2023-12-11 22:34:25'),
(92, 'Cauhoi', 'Tại một điểm trên bàn làm việc, người ta thử đi thử lại vẫn thấy kim nam châm luôn nằm dọc theo một hướng xác định, không trùng với hướng Bắc - Nam. Từ đó có thể rút ra kết luận gì về không gian đặt kim nam châm?', 1, NULL, 62, '2023-12-11 22:35:07', '2023-12-11 22:35:07'),
(93, 'Cauhoi', 'Căn cư vào thí nghiệm Ơxtet, hãy kiểm tra các phát biểu nào đúng sau đây?', 0, NULL, 62, '2023-12-11 22:35:44', '2023-12-11 22:35:44'),
(94, 'Cauhoi', 'Điều nào sau đây đúng khi nói về từ trường của dòng điện?', 0, NULL, 62, '2023-12-11 22:36:28', '2023-12-11 22:36:28'),
(95, 'Cauhoi', 'Có một số pin để lâu ngày và một đoạn dây dẫn. Nếu không có bóng đèn để thử mà chỉ có một kim nam châm. Cách nào sau đây kiểm tra được pin có còn điện hay không?', 0, NULL, 62, '2023-12-11 22:37:30', '2023-12-11 22:37:30'),
(96, 'Cauhoi', ':  Phát biểu nào sau đây là sai khi nói về từ trường của Trái Đất', 1, NULL, 62, '2023-12-11 22:38:28', '2023-12-11 22:38:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuongs`
--

CREATE TABLE `chuongs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuongs`
--

INSERT INTO `chuongs` (`id`, `name`, `noidung`, `created_at`, `updated_at`) VALUES
(1, 'Chương 1: Điện học', 'North Robbborough', NULL, NULL),
(2, 'Chương 2: Điện từ học ', 'East Adalberto', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `des`
--

CREATE TABLE `des` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `socau` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `des`
--

INSERT INTO `des` (`id`, `user_id`, `name`, `socau`, `diem`, `created_at`, `updated_at`) VALUES
(1, 1, 'De 5 cau', 5, 10, NULL, NULL),
(2, 1, 'De 10 cau', 10, 10, NULL, NULL),
(3, 1, 'De 15 cau', 15, 10, NULL, NULL),
(4, 1, 'De 20 cau', 20, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kienthucs`
--

CREATE TABLE `kienthucs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `bai_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kienthucs`
--

INSERT INTO `kienthucs` (`id`, `name`, `noidung`, `bai_id`, `created_at`, `updated_at`) VALUES
(1, 'Khái niệm', 'sự phụ thuộc của cường độ dòng điện vào hiệu điện thế', 1, NULL, NULL),
(2, 'Tính chất', 'sự phụ thuộc cường độ dòng điện vào hiệu điện thế', 1, NULL, NULL),
(3, 'Định luật Ôm', '  ', 1, NULL, NULL),
(4, 'Khái niệm', 'Điện trở', 2, NULL, NULL),
(5, 'Tính chất', 'Điện trở', 2, NULL, NULL),
(6, 'Định lí', 'Port Jesusshire', 2, NULL, NULL),
(7, 'Khái niệm', 'Andrewtown', 3, NULL, NULL),
(8, 'Tính chất', 'Kallieville', 3, NULL, NULL),
(9, 'Định lí', 'Ethantown', 3, NULL, NULL),
(10, 'Khái niệm', 'Braunborough', 4, NULL, NULL),
(11, 'Tính chất', 'West Deronfurt', 4, NULL, NULL),
(12, 'Định lí', 'South Raegan', 4, NULL, NULL),
(13, 'Khái niệm', 'North Stonechester', 5, NULL, NULL),
(14, 'Tính chất', 'Kilbackmouth', 5, NULL, NULL),
(15, 'Định lí', 'Lake Shaniya', 5, NULL, NULL),
(16, 'Khái niệm', 'North Lonzoberg', 6, NULL, NULL),
(17, 'Tính chất', 'Williamsonview', 6, NULL, NULL),
(18, 'Định lí', 'Criststad', 6, NULL, NULL),
(19, 'Khái niệm', 'Port Nicholeborough', 7, NULL, NULL),
(20, 'Tính chất', 'Lake Matildaville', 7, NULL, NULL),
(21, 'Định lí', 'Paoloville', 7, NULL, NULL),
(22, 'Khái niệm', 'Keelyburgh', 8, NULL, NULL),
(23, 'Tính chất', 'Lake Jordynton', 8, NULL, NULL),
(24, 'Định lí', 'South Cody', 8, NULL, NULL),
(25, 'Khái niệm', 'New Richie', 9, NULL, NULL),
(26, 'Tính chất', 'Hillfort', 9, NULL, NULL),
(27, 'Định lí', 'North Daphne', 9, NULL, NULL),
(28, 'Khái niệm', 'North Evangeline', 10, NULL, NULL),
(29, 'Tính chất', 'East Granville', 10, NULL, NULL),
(30, 'Định lí', 'Ritchiehaven', 10, NULL, NULL),
(31, 'Khái niệm', 'South Nayeliside', 11, NULL, NULL),
(32, 'Tính chất', 'East Buckside', 11, NULL, NULL),
(33, 'Định lí', 'Andersonfort', 11, NULL, NULL),
(34, 'Khái niệm', 'Port Theron', 12, NULL, NULL),
(35, 'Tính chất', 'New Maceymouth', 12, NULL, NULL),
(36, 'Định lí', 'Lake Magdalenatown', 12, NULL, NULL),
(37, 'Khái niệm', 'South Kailey', 13, NULL, NULL),
(38, 'Tính chất', 'Everettmouth', 13, NULL, NULL),
(39, 'Định lí', 'East Julienville', 13, NULL, NULL),
(40, 'Khái niệm', 'Lake Abigail', 14, NULL, NULL),
(41, 'Tính chất', 'East Vivamouth', 14, NULL, NULL),
(42, 'Định lí', 'New Gabriellaview', 14, NULL, NULL),
(43, 'Khái niệm', 'Fadelside', 15, NULL, NULL),
(44, 'Tính chất', 'North Valentin', 15, NULL, NULL),
(45, 'Định lí', 'North Abdielfort', 15, NULL, NULL),
(46, 'Khái niệm', 'Guidofurt', 16, NULL, NULL),
(47, 'Tính chất', 'Stokesshire', 16, NULL, NULL),
(48, 'Định lí', 'East Woodrow', 16, NULL, NULL),
(49, 'Khái niệm', 'Waltertown', 17, NULL, NULL),
(50, 'Tính chất', 'Sheldonside', 17, NULL, NULL),
(51, 'Định lí', 'Quigleyburgh', 17, NULL, NULL),
(52, 'Khái niệm', 'Ullrichport', 18, NULL, NULL),
(53, 'Tính chất', 'New Jed', 18, NULL, NULL),
(54, 'Định lí', 'Simonischester', 18, NULL, NULL),
(55, 'Khái niệm', 'Kuhlmanhaven', 19, NULL, NULL),
(56, 'Tính chất', 'Adamsborough', 19, NULL, NULL),
(57, 'Định lí', 'Lake Carolyn', 19, NULL, NULL),
(58, 'Khái niệm', 'Beiermouth', 20, NULL, NULL),
(59, 'Tính chất', 'Kuhicton', 20, NULL, NULL),
(60, 'Định lí', 'Collierberg', 20, NULL, NULL),
(61, 'Khái niệm', 'Antwonview', 21, NULL, NULL),
(62, 'Tính chất', 'West Ashlynn', 21, NULL, NULL),
(63, 'Định lí', 'Conroybury', 21, NULL, NULL),
(64, 'Khái niệm', 'Jaydonbury', 22, NULL, NULL),
(65, 'Tính chất', 'South Arachester', 22, NULL, NULL),
(66, 'Định lí', 'Gabeland', 22, NULL, NULL),
(67, 'Khái niệm', 'Ziemannhaven', 23, NULL, NULL),
(68, 'Tính chất', 'Port Izaiahchester', 23, NULL, NULL),
(69, 'Định lí', 'Port Fernandofort', 23, NULL, NULL),
(70, 'Khái niệm', 'Addiefort', 24, NULL, NULL),
(71, 'Tính chất', 'New Hilma', 24, NULL, NULL),
(72, 'Định lí', 'Mayerchester', 24, NULL, NULL),
(73, 'Khái niệm', 'Gradyhaven', 25, NULL, NULL),
(74, 'Tính chất', 'West Alexachester', 25, NULL, NULL),
(75, 'Định lí', 'Modestafurt', 25, NULL, NULL),
(76, 'Khái niệm', 'Opheliamouth', 26, NULL, NULL),
(77, 'Tính chất', 'Rosellaport', 26, NULL, NULL),
(78, 'Định lí', 'East Rhett', 26, NULL, NULL),
(79, 'Khái niệm', 'Dorisland', 27, NULL, NULL),
(80, 'Tính chất', 'Ferryborough', 27, NULL, NULL),
(81, 'Định lí', 'East Conner', 27, NULL, NULL),
(82, 'Khái niệm', 'Santosport', 28, NULL, NULL),
(83, 'Tính chất', 'Port Camryn', 28, NULL, NULL),
(84, 'Định lí', 'South Marilyne', 28, NULL, NULL),
(85, 'Khái niệm', 'West Marjoryhaven', 29, NULL, NULL),
(86, 'Tính chất', 'Boyleport', 29, NULL, NULL),
(87, 'Định lí', 'South Charlie', 29, NULL, NULL),
(88, 'Khái niệm', 'New Fannieland', 30, NULL, NULL),
(89, 'Tính chất', 'Spinkaview', 30, NULL, NULL),
(90, 'Định lí', 'East Lourdestown', 30, NULL, NULL),
(91, 'Khái niệm', 'Deronmouth', 31, NULL, NULL),
(92, 'Tính chất', 'Sandrineburgh', 31, NULL, NULL),
(93, 'Định lí', 'Ilianashire', 31, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luachons`
--

CREATE TABLE `luachons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cauhoi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `luachons`
--

INSERT INTO `luachons` (`id`, `noidung`, `status`, `cauhoi_id`, `created_at`, `updated_at`) VALUES
(1, 'Cả hai kết quả đều đúng', 0, 1, NULL, NULL),
(2, 'Cả hai kết quả đều sai', 0, 1, NULL, NULL),
(3, 'Kết quả của B đúng', 1, 1, NULL, NULL),
(4, 'Kết quả của A đúng', 0, 1, NULL, NULL),
(5, 'Đồ thị c', 0, 2, NULL, NULL),
(6, 'Đồ thị b', 0, 2, NULL, NULL),
(7, 'Đồ thị d', 1, 2, NULL, NULL),
(8, 'Đồ thị a', 0, 2, NULL, NULL),
(9, 'Sơ đồ c.', 0, 3, NULL, NULL),
(10, 'Sơ đồ a', 0, 3, NULL, NULL),
(11, 'Sơ đồ b', 0, 3, NULL, NULL),
(12, 'Sơ đồ d', 1, 3, NULL, NULL),
(13, 'Số chỉ của Ampe kế cho biết cường độ của dòng điện trong mạch.', 0, 4, NULL, NULL),
(14, 'Số chỉ của Vôn kế cho biết hiệu điện thế giữa hai đầu vật dẫn R.', 0, 4, NULL, NULL),
(15, 'Các phát biểu còn lại đều đúng', 1, 4, NULL, NULL),
(16, 'Dòng điện chạy qua vật dẫn theo chiều từ A đến B', 0, 4, NULL, NULL),
(17, '0,8 A', 0, 5, NULL, NULL),
(18, '0,9 A', 1, 5, NULL, NULL),
(19, '0,5 A', 0, 5, NULL, NULL),
(20, '0,6 A', 0, 5, NULL, NULL),
(21, 'IA = 0,54A', 1, 6, NULL, NULL),
(22, 'IB = 0,8A', 0, 6, NULL, NULL),
(23, 'UC = 19V', 0, 6, NULL, NULL),
(24, 'UD = 20V', 0, 6, NULL, NULL),
(25, 'Cường độ dòng điện giảm đi 3 lần.', 0, 7, NULL, NULL),
(26, 'Cường độ dòng điện tăng lên 3 lần.', 0, 7, NULL, NULL),
(27, 'Cường độ dòng điện giảm đi 0,2A.', 0, 7, NULL, NULL),
(28, 'Cường độ dòng điện là I = 0,2A.', 1, 7, NULL, NULL),
(29, 'Một kết quả khác', 0, 8, NULL, NULL),
(30, 'U = 40V', 1, 8, NULL, NULL),
(31, 'U = 45,5V', 0, 8, NULL, NULL),
(32, 'U = 50,5V', 0, 8, NULL, NULL),
(33, '3 V', 0, 9, NULL, NULL),
(34, '4 V', 1, 9, NULL, NULL),
(35, '5 V', 0, 9, NULL, NULL),
(36, '6 V', 0, 9, NULL, NULL),
(37, '1,8A', 0, 10, NULL, NULL),
(38, 'Một kết quả khác', 0, 10, NULL, NULL),
(39, '1,2A', 1, 10, NULL, NULL),
(40, '3,6A', 0, 10, NULL, NULL),
(41, '1,5 lần', 0, 11, NULL, NULL),
(42, '3 lần', 0, 11, NULL, NULL),
(43, '2,5 lần', 1, 11, NULL, NULL),
(44, '2 lần', 0, 11, NULL, NULL),
(45, '4V', 1, 12, NULL, NULL),
(46, '2V', 0, 12, NULL, NULL),
(47, '8V', 0, 12, NULL, NULL),
(48, '4000 V', 0, 12, NULL, NULL),
(49, 'Luân phiên tăng giảm', 0, 13, NULL, NULL),
(50, 'Không thay đổi', 0, 13, NULL, NULL),
(51, 'Giảm bấy nhiêu lần', 1, 13, NULL, NULL),
(52, 'Tăng bấy nhiêu lần', 0, 13, NULL, NULL),
(53, 'Tỉ lệ thuận với hiệu điện thế giữa hai đầu dây dẫn đó', 1, 14, NULL, NULL),
(54, 'Tỉ lệ nghịch với hiệu điện thế giữa hai đầu dây dẫn đó', 0, 14, NULL, NULL),
(55, 'Chỉ tỉ lệ khi hiệu điện thế giữa hai đầu dây dẫn đó tăng', 0, 14, NULL, NULL),
(56, 'Chỉ tỉ lệ khi hiệu điện thế giữa hai đầu dây dẫn đó giảm', 0, 14, NULL, NULL),
(57, 'Giảm 3 lần.', 1, 15, NULL, NULL),
(58, 'Không thay đổi', 0, 15, NULL, NULL),
(59, 'Không thể xác định chính xác được', 0, 15, NULL, NULL),
(60, 'Tăng 3 lần.', 0, 15, NULL, NULL),
(61, 'Một kết quả khác', 0, 16, NULL, NULL),
(62, '150V', 0, 16, NULL, NULL),
(63, '15V', 1, 16, NULL, NULL),
(64, '1,5V', 0, 16, NULL, NULL),
(65, '45 V', 1, 17, NULL, NULL),
(66, '30 V', 0, 17, NULL, NULL),
(67, '35 V', 0, 17, NULL, NULL),
(68, '25V', 0, 17, NULL, NULL),
(69, 'Cường độ dòng điện chạy qua một dây dẫn tỉ lệ nghịch với hiệu điện thế đặt vào hai đầu dây dẫn đó', 0, 18, NULL, NULL),
(70, 'Cường độ dòng điện chạy qua một dây dẫn tỉ lệ thuận với hiệu điện thế đặt vào hai đầu dây dẫn đó', 1, 18, NULL, NULL),
(71, 'Cường độ dòng điện chạy qua một dây dẫn có độ lớn bằng hiệu điện thế đặt vào hai đầu dây dẫn đó', 0, 18, NULL, NULL),
(72, 'Cường độ dòng điện chạy qua một dây dẫn luôn gấp hai lần hiệu điện thế đặt vào hai đầu dây dẫn đó', 0, 18, NULL, NULL),
(73, '15,8 V', 0, 19, NULL, NULL),
(74, '17 V', 0, 19, NULL, NULL),
(75, '19,2 V', 1, 19, NULL, NULL),
(76, '16,2 V', 0, 19, NULL, NULL),
(77, 'Tăng 3 lần', 1, 20, NULL, NULL),
(78, 'Không thể xác định chính xác được', 0, 20, NULL, NULL),
(79, 'Không thay đổi', 0, 20, NULL, NULL),
(80, 'Giảm 3 lần', 0, 20, NULL, NULL),
(81, '36V', 0, 21, NULL, NULL),
(82, '45V', 1, 21, NULL, NULL),
(83, '18V', 0, 21, NULL, NULL),
(84, '9V', 0, 21, NULL, NULL),
(85, 'Ampe, ôm, vôn', 0, 22, NULL, NULL),
(86, 'Vôn, ôm, ampe', 0, 22, NULL, NULL),
(87, 'Vôn, ampe, ôm', 1, 22, NULL, NULL),
(88, 'Ôm, vôn, ampe', 0, 22, NULL, NULL),
(89, '1Ω = 0,01kΩ = 0,0001MΩ', 0, 23, NULL, NULL),
(90, '0,5MΩ = 500kΩ = 500 000Ω', 1, 23, NULL, NULL),
(91, '1kΩ = 1 000Ω = 0,01MΩ', 0, 23, NULL, NULL),
(92, '0,0023MΩ = 230Ω = 0,23kΩ.', 0, 23, NULL, NULL),
(93, 'Đại lượng R đặc trưng cho tính cản trở điện lượng của vật gọi là điện trở của vật dẫn.', 0, 24, NULL, NULL),
(94, 'Đại lượng R đặc trưng cho tính cản trở hiệu điện thế của vật gọi là điện trở của vật dẫn.', 0, 24, NULL, NULL),
(95, 'Đại lượng R đặc trưng cho tính cản trở dòng điện của vật gọi là điện trở của vật dẫn.', 1, 24, NULL, NULL),
(96, 'Đại lượng R đặc trưng cho tính cản trở electron của vật gọi là điện trở của vật dẫn', 0, 24, NULL, NULL),
(97, 'Tính cản trở dòng điện nhiều hay ít của dây dẫn', 1, 25, NULL, NULL),
(98, 'Tính cản trở hiệu điện thế nhiều hay ít của dây dẫn', 0, 25, NULL, NULL),
(99, 'Tính cản trở electron nhiều hay ít của dây dẫn', 0, 25, NULL, NULL),
(100, 'Tính cản trở điện lượng nhiều hay ít của dây dẫn.', 0, 25, NULL, NULL),
(101, 'Tính cản trở dòng điện nhiều hay ít của dây dẫn', 1, 26, NULL, NULL),
(102, 'Tính cản trở hiệu điện thế nhiều hay ít của dây dẫn', 0, 26, NULL, NULL),
(103, 'Tính cản trở electron nhiều hay ít của dây dẫn', 0, 26, NULL, NULL),
(104, 'Tính cản trở điện lượng nhiều hay ít của dây dẫn.', 0, 26, NULL, NULL),
(105, 'Ôm  (Ω).', 1, 27, NULL, NULL),
(106, 'Oát (W).', 0, 27, NULL, NULL),
(107, 'Ampe (A).', 0, 27, NULL, NULL),
(108, 'Vôn (V).', 0, 27, NULL, NULL),
(109, 'Đèn sáng yếu hơn bình thường', 0, 28, NULL, NULL),
(110, 'Đèn không sáng', 0, 28, NULL, NULL),
(111, 'Đèn sáng mạnh hơn bình thường và sẽ bị cháy', 1, 28, NULL, NULL),
(112, 'Đèn sáng bình thường', 0, 28, NULL, NULL),
(113, 'Điện trở', 1, 29, NULL, NULL),
(114, 'Chiều dài', 0, 29, NULL, NULL),
(115, 'Cường độ', 0, 29, NULL, NULL),
(116, 'Hiệu điện thế', 0, 29, NULL, NULL),
(117, 'Cường độ dòng điện không những phụ thuộc vào hiệu điện thế mà còn phụ thuộc vào bản thân vật dẫn', 1, 30, NULL, NULL),
(118, 'Cường độ dòng điện không phụ thuộc vào hiệu điện thế mà phụ thuộc vào bản thân vật dẫn.', 0, 30, NULL, NULL),
(119, 'Cường độ dòng điện chỉ phụ thuộc vào hiệu điện thế mà không phụ thuộc vào bản thân vật dẫn.', 0, 30, NULL, NULL),
(120, 'Cường độ dòng điện không phụ thuộc vào hiệu điện thế và cũng không phụ thuộc vào bản thân vật dẫn', 0, 30, NULL, NULL),
(121, 'Tỉ lệ thuận với hiệu điện thế đặt vào hai đầu dây dẫn', 0, 31, NULL, NULL),
(122, 'Tỉ lệ nghịch với cường độ dòng điện chạy qua dây dẫn.', 0, 31, NULL, NULL),
(123, 'Không phụ thuộc vào hiệu điện thế đặt vào hai đầu dây dẫn', 1, 31, NULL, NULL),
(124, 'Giảm khi cường độ dòng điện chạy qua dây dẫn giảm', 0, 31, NULL, NULL),
(125, 'U = I + 30', 0, 32, NULL, NULL),
(126, 'U = I/30', 0, 32, NULL, NULL),
(127, 'I = 30.U', 0, 32, NULL, NULL),
(128, '30 = U/I', 1, 32, NULL, NULL),
(129, 'I = U/R', 0, 33, NULL, NULL),
(130, 'I = U.R', 1, 33, NULL, NULL),
(131, 'R = U/I', 0, 33, NULL, NULL),
(132, 'U = I.R', 0, 33, NULL, NULL),
(133, '1500V', 0, 34, NULL, NULL),
(134, '15V', 1, 34, NULL, NULL),
(135, '60V', 0, 34, NULL, NULL),
(136, '6V', 0, 34, NULL, NULL),
(137, 'U = 6 V', 1, 35, NULL, NULL),
(138, 'U = 9V', 0, 35, NULL, NULL),
(139, 'U = 12V', 0, 35, NULL, NULL),
(140, 'Một giá trị khác', 0, 35, NULL, NULL),
(141, '0,2A', 1, 36, NULL, NULL),
(142, '0,5A', 0, 36, NULL, NULL),
(143, '1A', 0, 36, NULL, NULL),
(144, '0,1A', 0, 36, NULL, NULL),
(145, 'U = 1,2V', 0, 37, NULL, NULL),
(146, 'Một giá trị khác', 0, 37, NULL, NULL),
(147, 'U = 20V', 0, 37, NULL, NULL),
(148, 'U = 240V', 1, 37, NULL, NULL),
(149, '16 Ω', 0, 38, NULL, NULL),
(150, '18 Ω', 1, 38, NULL, NULL),
(151, '20 Ω', 0, 38, NULL, NULL),
(152, 'Một giá trị khác', 0, 38, NULL, NULL),
(153, 'R = 12 Ω', 0, 39, NULL, NULL),
(154, 'R = 1,5 Ω', 0, 39, NULL, NULL),
(155, 'R = 8 Ω', 1, 39, NULL, NULL),
(156, 'R = Một giá trị khác.', 0, 39, NULL, NULL),
(157, '1A', 0, 40, NULL, NULL),
(158, '1,5A', 1, 40, NULL, NULL),
(159, '2A', 0, 40, NULL, NULL),
(160, '2,5A', 0, 40, NULL, NULL),
(161, 'Tăng 5V', 0, 41, NULL, NULL),
(162, 'Tăng 3V', 1, 41, NULL, NULL),
(163, 'Giảm 3V', 0, 41, NULL, NULL),
(164, 'Giảm 2V', 0, 41, NULL, NULL),
(165, 'Cường độ dòng điện chạy qua dây dẫn tỉ lệ thuận với hiệu điện thế đặt vào hai đầu dây dẫn và với điện trở của dây', 0, 42, NULL, NULL),
(166, 'Cường độ dòng điện chạy qua dây dẫn không phụ thuộc vào hiệu điện thế đặt vào hai đầu dây dẫn và điện trở của dây', 0, 42, NULL, NULL),
(167, 'Cường độ dòng điện chạy qua dây dẫn tỉ lệ thuận với hiệu điện thế đặt vào hai đầu dây dẫn và tỉ lệ nghịch với điện trở của dây', 1, 42, NULL, NULL),
(168, 'Cường độ dòng điện chạy qua dây dẫn tỉ lệ nghịch với hiệu điện thế đặt vào hai đầu dây dẫn và tỉ lệ thuận với điện trở của dây.', 0, 42, NULL, NULL),
(169, 'I = 12 A', 0, 43, NULL, NULL),
(170, 'I = 24 A', 0, 43, NULL, NULL),
(171, 'I = 1 A', 0, 43, NULL, NULL),
(172, 'Một giá trị khác', 1, 43, NULL, NULL),
(173, 'UAB = 1V', 0, 44, NULL, NULL),
(174, 'UAB = 2V', 0, 44, NULL, NULL),
(175, 'UAB = 3V', 1, 44, NULL, NULL),
(176, 'UAB = 15V', 0, 44, NULL, NULL),
(177, 'U = U1 + U2 + ... + Un', 0, 45, NULL, NULL),
(178, 'I = I1 = I2 = ... = In', 0, 45, NULL, NULL),
(179, 'R = R1 = R2 = ... = Rn', 1, 45, NULL, NULL),
(180, 'R = R1 + R2 + ... + Rn', 0, 45, NULL, NULL),
(181, 'U1 = 24V; U2 = 16V; U3 = 8V', 0, 46, NULL, NULL),
(182, 'U1 = 16V; U2 = 8V; U3 = 24V', 0, 46, NULL, NULL),
(183, 'U1 = 16V; U2 = 24V; U3 = 8V', 1, 46, NULL, NULL),
(184, 'U1 = 8V; U2 = 24V; U3 = 16V', 0, 46, NULL, NULL),
(185, '2 phương án', 0, 47, NULL, NULL),
(186, '3 phương án', 0, 47, NULL, NULL),
(187, '4 phương án', 0, 47, NULL, NULL),
(188, '5 phương án', 1, 47, NULL, NULL),
(189, 'I = 6A', 0, 48, NULL, NULL),
(190, 'I = 1,5A', 1, 48, NULL, NULL),
(191, 'I = 3,6A', 0, 48, NULL, NULL),
(192, 'I = 4,5A', 0, 48, NULL, NULL),
(193, 'Trong đoạn mạch mắc nối tiếp, cường độ dòng điện qua vật dẫn sẽ càng lớn nếu điện trở vật dẫn đó càng nhỏ', 0, 49, NULL, NULL),
(194, 'Trong đoạn mạch mắc nối tiếp, cường độ dòng điện qua vật dẫn sẽ càng lớn nếu điện trở vật dẫn đó càng lớn', 0, 49, NULL, NULL),
(195, 'Cường độ dòng điện ở bất kì vật dẫn nào mắc nối tiếp với nhau cũng bằng nhau', 1, 49, NULL, NULL),
(196, 'Trong đoạn mạch mắc nối tiếp, cường độ dòng điện qua các vật dẫn không phụ thuộc vào điện trở các vật dẫn đó', 0, 49, NULL, NULL),
(197, 'R12 = 12 Ω', 0, 50, NULL, NULL),
(198, 'R12 = 18Ω', 0, 50, NULL, NULL),
(199, 'R12 = 6Ω', 0, 50, NULL, NULL),
(200, 'R12 = 30 Ω', 1, 50, NULL, NULL),
(201, 'Dùng 2 điện trở 4Ω và 4 điện trở 2Ω', 0, 51, NULL, NULL),
(202, 'Dùng 3 điện trở 4Ωvà 2 điện trở 2Ω', 0, 51, NULL, NULL),
(203, 'Chỉ dùng 4 điện trở 4Ω', 0, 51, NULL, NULL),
(204, 'Dùng 2 điện trở 4Ω và 2 điện trở 2Ω', 1, 51, NULL, NULL),
(205, 'Bằng tổng các hiệu điện thế của các điện trở thành phần', 1, 52, NULL, NULL),
(206, 'Bằng hiệu các hiệu điện thế của các điện trở thành phần', 0, 52, NULL, NULL),
(207, 'Bằng các hiệu điện thế của các điện trở thành phần', 0, 52, NULL, NULL),
(208, 'Luôn nhỏ hơn tổng các hiệu điện thế của các điện trở thành phần.', 0, 52, NULL, NULL),
(209, 'Chỉ dùng 8 điện trở loại 2Ω', 0, 53, NULL, NULL),
(210, 'Dùng 1 điện trở 4Ω và 6 điện trở 2Ω.', 0, 53, NULL, NULL),
(211, 'Dùng 2 điện trở 4Ω và 2 điện trở 2Ω', 1, 53, NULL, NULL),
(212, 'Chỉ dùng 4 điện trở loại 4Ω', 0, 53, NULL, NULL),
(213, 'I = 1,5A', 0, 54, NULL, NULL),
(214, 'I = 2,25A', 0, 54, NULL, NULL),
(215, 'I = 2,5 A', 1, 54, NULL, NULL),
(216, 'I = 3A', 0, 54, NULL, NULL),
(217, 'R12 = 32Ω', 0, 55, NULL, NULL),
(218, 'R12 = 38Ω', 0, 55, NULL, NULL),
(219, 'R12 = 26Ω', 0, 55, NULL, NULL),
(220, 'R12 = 50 Ω', 1, 55, NULL, NULL),
(221, '45V', 0, 56, NULL, NULL),
(222, '15V', 0, 56, NULL, NULL),
(223, '4V', 1, 56, NULL, NULL),
(224, '60V', 0, 56, NULL, NULL),
(225, 'Uv = 4V; IA = 0,4A', 1, 57, NULL, NULL),
(226, 'Uv = 12V; IA = 0,4A.', 0, 57, NULL, NULL),
(227, 'Uv = 0,6V; IA = 0,4A', 0, 57, NULL, NULL),
(228, 'Một cặp giá trị khác', 0, 57, NULL, NULL),
(229, 'Đưa thanh A lại gần thanh B, nếu A hút B thì A là nam châm', 0, 58, NULL, NULL),
(230, 'Đưa thanh A lại gần thanh B, nếu A đẩy B thì A là nam châm', 0, 58, NULL, NULL),
(231, 'Dùng một sợi chỉ mềm buộc vào giữa thanh kim loại rồi treo lên, nếu khi cân bằng thanh đó luôn nằm theo hướng Bắc - Nam thì đó là thanh nam châm', 1, 58, NULL, NULL),
(232, 'Đưa thanh kim loại lên cao rồi thả cho rơi, nếu thanh đó luôn rơi lệch về một cực của Trái Đất thì đó là nam châm', 0, 58, NULL, NULL),
(233, 'La bàn', 0, 59, NULL, NULL),
(234, 'Loa điện', 0, 59, NULL, NULL),
(235, 'Rơ le điện từ', 1, 59, NULL, NULL),
(236, 'Đinamo xe đạp', 0, 59, NULL, NULL),
(237, 'Phần giữa của thanh', 0, 60, NULL, NULL),
(238, 'Chỉ có từ cực Bắc', 0, 60, NULL, NULL),
(239, 'Cả hai từ cực', 1, 60, NULL, NULL),
(240, 'Mọi chỗ đều hút sắt mạnh như nhau', 0, 60, NULL, NULL),
(241, 'Cực Bắc chỉ hướng Bắc, cực Nam chỉ hướng Nam', 1, 61, NULL, NULL),
(242, 'Cực Bắc chỉ hướng Nam, cực Nam chỉ hướng Bắc', 0, 61, NULL, NULL),
(243, 'Kim nam châm có thể chỉ hướng bất kì', 0, 61, NULL, NULL),
(244, 'Các phương án A, B, C đều đúng.', 0, 61, NULL, NULL),
(245, 'Cả hai thanh đều là nam châm', 0, 62, NULL, NULL),
(246, 'Cà hai thanh đều không phải là nam châm', 0, 62, NULL, NULL),
(247, 'Một trong hai thanh là nam châm, thanh còn lại là thép', 1, 62, NULL, NULL),
(248, 'Cả 3 thông  tin A, B, C đều có thể xảy ra.', 0, 62, NULL, NULL),
(249, 'Cực Bắc của nam châm chỉ về hướng Đông địa lí, cực Nam của nam châm chỉ về hướng Tây địa lí.', 0, 63, NULL, NULL),
(250, 'Cực Bắc của nam châm chỉ về hướng Nam địa lí, cực Nam của nam châm chỉ về hướng Bắc địa lí.', 0, 63, NULL, NULL),
(251, 'Cực Bắc của nam châm chỉ về hướng Bắc địa lí, cực Nam của nam châm chỉ về hướng Nam địa lí.', 1, 63, NULL, NULL),
(252, 'Các cực định hướng tự do không theo quy luật nào', 0, 63, NULL, NULL),
(253, 'Đưa thanh kim loại cần kiểm tra đến gần một cái đinh ghim xem thanh kim loại có hút đinh ghim hay không', 1, 64, NULL, NULL),
(254, 'Nung thanh kim loại và kiểm tra nhiệt độ của thanh', 0, 64, NULL, NULL),
(255, 'Tìm hiểu cấu tạo thanh kim loại', 0, 64, NULL, NULL),
(256, 'Đo thể tích và khối lượng thang kim loại.', 0, 64, NULL, NULL),
(257, 'Phương hướng', 1, 65, NULL, NULL),
(258, 'Nhiệt độ', 0, 65, NULL, NULL),
(259, 'Độ cao', 0, 65, NULL, NULL),
(260, 'Hướng gió thổi.', 0, 65, NULL, NULL),
(261, 'Khi bị cọ xát thì hút các vật nhẹ', 0, 66, NULL, NULL),
(262, 'Khi bị nung nóng lên thì có thể hút các vụn sắt', 0, 66, NULL, NULL),
(263, 'Có thể hút các vật bằng sắt', 1, 66, NULL, NULL),
(264, 'Một đầu có thể hút, còn đầu kia thì đẩy các vụn sắt', 0, 66, NULL, NULL),
(265, 'Các cực cùng tên thì hút nhau, khác tên thì đẩy nhau', 0, 67, NULL, NULL),
(266, 'Các cực cùng tên thì đẩy nhau, khác tên thì hút nhau', 1, 67, NULL, NULL),
(267, 'Các cực cùng tên thì đẩy nhau, khác tên thì hút nhau. Các cực cùng tên thì hút nhau, khác tên thì đẩy nhau', 0, 67, NULL, NULL),
(268, 'Các cực cùng tên thì hút nhau, khác tên thì đẩy nhau. Các cực cùng tên thì hút nhau, khác tên thì đẩy nhau', 0, 67, NULL, NULL),
(269, 'Vì Trái Đất hút tất cả các vật về phía nó', 0, 68, NULL, NULL),
(270, 'Vì Trái Đất hút các vật bằng sắt về phía nó.', 0, 68, NULL, NULL),
(271, 'Vì Trái Đất hút các thanh nam châm về phía nó', 0, 68, NULL, NULL),
(272, 'Vì mỗi cực của thanh nam châm để tự do luôn hướng về một cực của Trái Đất.', 1, 68, NULL, NULL),
(273, 'Một thanh nam châm thẳng', 0, 69, NULL, NULL),
(274, 'Một kim nam châm', 1, 69, NULL, NULL),
(275, 'Một cuộn dây', 0, 69, NULL, NULL),
(276, 'Một thanh kim loại', 0, 69, NULL, NULL),
(277, 'Mỗi nửa tạo thành nam châm mới chỉ có một từ cực ở một đầu', 0, 70, NULL, NULL),
(278, 'Hai nữa đều mất hết từ tính', 0, 70, NULL, NULL),
(279, 'Mỗi nửa tạo thành một nam châm mới có hai cực cùng tên ở hai đầu', 0, 70, NULL, NULL),
(280, 'Mỗi nửa tạo thành một nam châm mới có hai cực từ khác tên ở hai đầu', 1, 70, NULL, NULL),
(281, 'Đưa cực Bắc của thanh nam châm thứ nhất lại gần một đầu của nam châm thứ hai, nếu chúng hút nhau thì đầu đó cực Nam, đầu còn lại là cực Bắc', 1, 71, NULL, NULL),
(282, 'Đưa cực Bắc của thanh nam châm thứ nhất lại gần một đầu của nam châm thứ hai, nếu chúng hút nhau thì đầu đó cực Bắc, đầu còn lại là cực Nam.', 0, 71, NULL, NULL),
(283, 'Đưa một đầu thanh nam châm thứ hai lại gần điểm giữa của nam châm thứ nhất, nếu bị hút thì đầu đó là cực Bắc, đầu còn lại là cực Nam.', 0, 71, NULL, NULL),
(284, 'Đưa một đầu thanh nam châm thứ hai lại gần điểm giữa của nam châm thứ nhất, nếu bị hút thì đầu đó là cực Nam, đầu còn lại là cực Bắc.', 0, 71, NULL, NULL),
(285, 'Dùng kéo', 0, 72, NULL, NULL),
(286, 'Dùng nam châm', 1, 72, NULL, NULL),
(287, 'Dùng kìm', 0, 72, NULL, NULL),
(288, 'Dùng một viên bi còn tốt', 0, 72, NULL, NULL),
(289, 'Mỗi nam châm đều có hai cực: cực bắc và cực nam.', 0, 73, NULL, NULL),
(290, 'Cực bắc nam châm sơn màu đỏ còn cực nam sơn màu xanh', 1, 73, NULL, NULL),
(291, '. Cực Nam và cực Bắc của nam châm được kí hiệu lần lượt là chữ S và chữ N', 0, 73, NULL, NULL),
(292, 'Cực Nam và cực Bắc của nam châm được kí hiệu lần lượt là phần đế trống và phần có nét gạch chéo.', 0, 73, NULL, NULL),
(293, 'Vì xung quanh trái đất có từ trường', 0, 74, NULL, NULL),
(294, 'Vì Trái Đất như một nam châm khổng lồ, cực từ Nam của Trái Đất gần với địa cực Bắc và ngược lại cực từ Bắc của Trái Đất gần với địa cực Nam', 1, 74, NULL, NULL),
(295, 'Vì Trái Đât luôn tự quanh xung quanh trục của nó', 0, 74, NULL, NULL),
(296, 'Vì Trái Đất luôn tự quay quanh Mặt Trời', 0, 74, NULL, NULL),
(297, 'Nếu đưa cực Bắc của nam châm thứ nhất lại gần cực Bắc của nam châm thứ hai, chúng sẽ đẩy nhau.', 0, 75, NULL, NULL),
(298, 'Nếu đưa cực Nam của nam châm thứ nhất lại gần cực Nam của nam châm thứ hai, chúng sẽ đẩy nhau', 0, 75, NULL, NULL),
(299, 'Nếu đưa cực Bắc của nam châm thứ nhất lại gần cực Nam của nam châm thứ hai, chúng sẽ hút nhau.', 0, 75, NULL, NULL),
(300, 'Cả 3 hiện tượng A, B, C đều có thể xảy ra', 1, 75, NULL, NULL),
(301, 'Nam châm là những vật có đặc tính hút sắt (hay bị sắt hút).', 1, 76, NULL, NULL),
(302, 'Nam châm nào cũng có hai cực: cực dương và cực âm', 0, 76, NULL, NULL),
(303, 'Khi bẻ gãy nam châm, ta có thể tách hai cực của nam châm ra khỏi nhau', 0, 76, NULL, NULL),
(304, 'Các phát biểu A, B, C đều đúng', 0, 76, NULL, NULL),
(305, 'Một cực', 0, 77, NULL, NULL),
(306, 'Hai cực', 1, 77, NULL, NULL),
(307, 'Ba cực', 0, 77, NULL, NULL),
(308, 'Bốn cực', 0, 77, NULL, NULL),
(309, 'Mệnh đề (I) đúng. Mệnh đề (II) đúng. Hai mệnh đề có liên quan với nhau', 0, 78, NULL, NULL),
(310, 'Mệnh đề (I) đúng. Mệnh đề (II) đúng. Hai mệnh đề không liên quan gì với nhau', 1, 78, NULL, NULL),
(311, 'Mệnh đề (I) đúng. Mệnh đề (II) sai', 0, 78, NULL, NULL),
(312, 'Mệnh đề (I) sai. Mệnh đề (II) đúng', 0, 78, NULL, NULL),
(313, 'không gian xung quanh điện tích đứng yên, xung quanh dòng điện có khả năng tác dụng điện lên kim nam châm đặt trong nó.', 0, 79, NULL, NULL),
(314, 'không gian xung quanh nam châm, xung quanh dòng điện có khả năng tác dụng lực từ lên kim nam châm đặt trong nó.', 1, 79, NULL, NULL),
(315, 'không gian xung quanh điện tích có khả năng tác dụng lực điện lên kim nam châm đặt trong nó', 0, 79, NULL, NULL),
(316, 'không gian xung quanh dòng điện có khả năng tác dụng lực từ lên điện tích đặt trong nó.', 0, 79, NULL, NULL),
(317, 'xung quanh nam châm.', 0, 80, NULL, NULL),
(318, 'xung quanh dòng điện', 0, 80, NULL, NULL),
(319, 'xung quanh điện tích đứng yên.', 1, 80, NULL, NULL),
(320, 'mọi nới trên Trái Đất', 0, 80, NULL, NULL),
(321, 'lực điện', 0, 81, NULL, NULL),
(322, 'lực hấp dẫn', 0, 81, NULL, NULL),
(323, 'lực từ', 1, 81, NULL, NULL),
(324, 'lực đàn hồi', 0, 81, NULL, NULL),
(325, 'Một cục nam châm vĩnh cửu.', 0, 82, NULL, NULL),
(326, 'Điện tích thử.', 0, 82, NULL, NULL),
(327, 'Kim nam châm', 1, 82, NULL, NULL),
(328, 'Điện tích đứng yên', 0, 82, NULL, NULL),
(329, 'Dây dẫn hút các vụn sắt ở gần nó.', 0, 83, NULL, NULL),
(330, 'Dây dẫn hút nam châm ở gần nó.', 0, 83, NULL, NULL),
(331, 'Dòng điện làm cho kim nam châm luôn cùng hướng với dây dẫn', 0, 83, NULL, NULL),
(332, 'Dòng điện làm cho kim nam châm để gần và song song với nó bị lệch khỏi hướng Bắc – Nam ban đầu', 1, 83, NULL, NULL),
(333, 'Dùng ampe kế', 0, 84, NULL, NULL),
(334, 'Dùng vôn kế', 0, 84, NULL, NULL),
(335, 'Dùng áp kế', 0, 84, NULL, NULL),
(336, 'Dùng kim nam châm có trục quay', 1, 84, NULL, NULL),
(337, 'Từ trường là một dạng vật chất đặc biệt tồn tại xung quanh nam châm', 0, 85, NULL, NULL),
(338, 'Từ trường có thể tác dụng lực lên nam châm thử đặt trong nó', 0, 85, NULL, NULL),
(339, 'Từ trường có ở xung quanh Trái Đất', 0, 85, NULL, NULL),
(340, 'Các phát biểu A, B, C đều đúng', 1, 85, NULL, NULL),
(341, 'Điện tích thử', 0, 86, NULL, NULL),
(342, 'Nam châm thử', 1, 86, NULL, NULL),
(343, 'Dòng điện thử', 0, 86, NULL, NULL),
(344, 'Bút thử điện', 0, 86, NULL, NULL),
(345, 'Đưa nam châm đặt trên trục nhọn rồi đặt ra xa dây dẫn AB.', 0, 87, NULL, NULL),
(346, 'Đưa kim nam châm đặt trên trục nhọn rồi đặt lại gần dây dẫn AB xem nó có lệch khỏi hướng ban đầu không', 1, 87, NULL, NULL),
(347, 'Đưa kim nam châm đến sát dây dẫn xem nó có hút dây dẫn không', 0, 87, NULL, NULL),
(348, 'Chỉ đưa cọc nhọn đến gần dây dẫn xem cọc nhọn có bị phóng điện không', 0, 87, NULL, NULL),
(349, 'Tạo với kim nam châm một góc bất kì.', 0, 88, NULL, NULL),
(350, 'song song với kim nam châm', 1, 88, NULL, NULL),
(351, 'Vuông góc với kim nam châm', 0, 88, NULL, NULL),
(352, 'Tạo với kim nam châm một góc nhọn.', 0, 88, NULL, NULL),
(353, '. Một kim nam châm được đặt tự do trên trục thẳng đứng, nó chỉ hướng vị trí Bắc - Nam', 0, 89, NULL, NULL),
(354, 'Khi đưa kim nam châm lại gần dây dẫn và cho dòng điện chạy qua dây dẫn, kim nam châm bị lệch, không còn định hướng Bắc - Nam nữa', 0, 89, NULL, NULL),
(355, 'Khi đưa kim nam châm lại gần dây dẫn và không cho dòng điện chạy qua dây dẫn, kim nam châm lại định hướng Bắc - Nam', 0, 89, NULL, NULL),
(356, 'Các thông tin A, B, C đều đúng', 1, 89, NULL, NULL),
(357, 'Kim nam châm đứng yên không thay đổi.', 1, 90, NULL, NULL),
(358, 'Có lực tác dụng lên kim nam châm', 0, 90, NULL, NULL),
(359, 'Lực tác dụng lên kim nam châm là lực từ', 0, 90, NULL, NULL),
(360, 'Kim nam châm bị lệch khỏi vị trí ban đầu', 0, 90, NULL, NULL),
(361, '. Nó xác định nhay vị trí cân bằng mới  (vị trí mà ta quay đến).', 0, 91, NULL, NULL),
(362, 'Sau khi buông tay, kim nam châm quay ngược trở lại 180o', 0, 91, NULL, NULL),
(363, 'Sau khi buông tay, kim nam châm quay một góc 90o', 0, 91, NULL, NULL),
(364, 'Sau khi đã trở lại vị trí cân bằng, kim nam châm vẫn định hướng giống như vị trí trước khi xoay.', 1, 91, NULL, NULL),
(365, 'Không gian đặt kim nam châm không có gì đặc biệt', 0, 92, NULL, NULL),
(366, 'Không gian đặt kim nam châm có sóng truyền hình truyền qua', 0, 92, NULL, NULL),
(367, 'Không gian đặt kim nam châm có một từ trường rất mạnh, mạnh hơn nhiều so với từ trường của Trái Đất, hướng của từ trường này không trùng với hướng từ trường của Trái Đất', 1, 92, NULL, NULL),
(368, 'Không gian đặt kim nam châm có rất nhiều điện tích', 0, 92, NULL, NULL),
(369, 'Dòng điện gây ra từ trường.', 1, 93, NULL, NULL),
(370, 'Các hạt mang điện có thể tạo ra từ trường', 0, 93, NULL, NULL),
(371, 'Các vật nhiễm điện có thể tạo ra từ trường.', 0, 93, NULL, NULL),
(372, 'Các dây dẫn có thể tạo ra từ trường.', 0, 93, NULL, NULL),
(373, 'Xung quanh bất kì dòng điện nào cũng có từ trường.', 1, 94, NULL, NULL),
(374, 'Từ trường chỉ tồn tại xung quanh những dòng điện có cường độ rất lớn', 0, 94, NULL, NULL),
(375, 'Từ trường chỉ tồn tại ở sát mặt dây dẫn có dòng điện', 0, 94, NULL, NULL),
(376, 'Các phát biểu A, B, C đều đúng', 0, 94, NULL, NULL),
(377, 'Đưa kim nam châm lại gần cực dương của pin, nếu kim nam châm lệch khỏi phương Bắc – Nam ban đầu thì cục pin đó còn điện, nếu không thì cục pin hết điện', 0, 95, NULL, NULL),
(378, 'Đưa kim nam châm lại gần cực âm của pin, nếu kim nam châm lệch khỏi phương Bắc – Nam ban đầu thì cục pin đó còn điện, nếu không thì cục pin hết điện', 0, 95, NULL, NULL),
(379, 'Mắc dây dẫn vào hai cực của pin, rồi đưa kim nam châm lại gần dây dẫn, nếu kim nam châm lệch khỏi phương Bắc – Nam ban đầu thì cục pin đó còn điện, nếu không thì cục pin hết điện.', 1, 95, NULL, NULL),
(380, 'Mắc dây dẫn vào hai cực của pin, rồi đưa kim nam châm lại gần dây dẫn, nếu kim nam châm không lệch khỏi phương Bắc – Nam ban đầu thì cục pin đó còn điện, nếu lệch khỏi vị trí ban đầu đó thì cục pin hết điện3', 0, 95, NULL, NULL),
(381, 'Xung quanh Trái Đất có từ trường', 0, 96, NULL, NULL),
(382, 'Cực từ Nam của Trái Đất gần với cực Nam địa lí và cực từ Bắc ở gần với cực Bắc địa lí.', 1, 96, NULL, NULL),
(383, 'Cực từ Nam của Trái Đất gần với cực Bắc địa lí và cực từ Bắc ở gần với cực Nam địa lí.', 0, 96, NULL, NULL),
(384, 'Do Trái Đất có từ trường mà một kim nam châm khi đặt tự do nó sẽ định hướng Bắc - Nam.', 0, 96, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_06_072731_create_chuongs_table', 1),
(6, '2023_12_06_072823_create_bais_table', 1),
(7, '2023_12_06_072920_create_kienthucs_table', 1),
(8, '2023_12_06_072948_create_cauhois_table', 1),
(9, '2023_12_06_073105_create_luachons_table', 1),
(10, '2023_12_06_073234_create_des_table', 1),
(11, '2023_12_06_073418_create_tralois_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tralois`
--

CREATE TABLE `tralois` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `de_id` bigint(20) UNSIGNED NOT NULL,
  `cauhoi_id` bigint(20) UNSIGNED NOT NULL,
  `luachon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tralois`
--

INSERT INTO `tralois` (`id`, `de_id`, `cauhoi_id`, `luachon_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 92, 367, 1, NULL, NULL),
(3, 1, 12, 45, 1, NULL, NULL),
(4, 1, 18, 70, 1, NULL, NULL),
(5, 1, 83, 332, 1, NULL, NULL),
(6, 1, 76, 301, 1, NULL, NULL),
(7, 2, 17, 65, 1, NULL, NULL),
(8, 2, 87, 346, 1, NULL, NULL),
(9, 2, 42, 167, 1, NULL, NULL),
(10, 2, 20, 77, 1, NULL, NULL),
(11, 2, 26, 101, 1, NULL, NULL),
(12, 2, 48, 190, 1, NULL, NULL),
(13, 2, 86, 342, 1, NULL, NULL),
(14, 2, 50, 200, 1, NULL, NULL),
(15, 2, 23, 90, 1, NULL, NULL),
(16, 2, 5, 18, 1, NULL, NULL),
(17, 3, 27, 105, 1, NULL, NULL),
(18, 3, 50, 200, 1, NULL, NULL),
(19, 3, 63, 251, 1, NULL, NULL),
(20, 3, 57, 225, 1, NULL, NULL),
(21, 3, 68, 272, 1, NULL, NULL),
(22, 3, 53, 211, 1, NULL, NULL),
(23, 3, 50, 200, 1, NULL, NULL),
(24, 3, 15, 57, 1, NULL, NULL),
(25, 3, 34, 134, 1, NULL, NULL),
(26, 3, 41, 162, 1, NULL, NULL),
(27, 3, 29, 113, 1, NULL, NULL),
(28, 3, 88, 350, 1, NULL, NULL),
(29, 3, 56, 223, 1, NULL, NULL),
(30, 3, 85, 340, 1, NULL, NULL),
(31, 3, 35, 137, 1, NULL, NULL),
(32, 4, 24, 95, 1, NULL, NULL),
(33, 4, 84, 336, 1, NULL, NULL),
(34, 4, 10, 39, 1, NULL, NULL),
(35, 4, 67, 266, 1, NULL, NULL),
(36, 4, 94, 373, 1, NULL, NULL),
(37, 4, 41, 162, 1, NULL, NULL),
(38, 4, 82, 327, 1, NULL, NULL),
(39, 4, 42, 167, 1, NULL, NULL),
(40, 4, 38, 150, 1, NULL, NULL),
(41, 4, 46, 183, 1, NULL, NULL),
(42, 4, 94, 373, 1, NULL, NULL),
(43, 4, 34, 134, 1, NULL, NULL),
(44, 4, 81, 323, 1, NULL, NULL),
(45, 4, 18, 70, 1, NULL, NULL),
(46, 4, 35, 137, 1, NULL, NULL),
(47, 4, 93, 369, 1, NULL, NULL),
(48, 4, 81, 323, 1, NULL, NULL),
(49, 4, 70, 280, 1, NULL, NULL),
(50, 4, 40, 158, 1, NULL, NULL),
(51, 4, 3, 12, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin123@gmail.com', NULL, '$2y$12$2ykEsqBVCIoeOujq.//OZ.UvaLO4/jn4zJr4puBzEvRWz40acEcl.', NULL, '2023-12-11 18:59:31', '2023-12-11 18:59:31');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bais`
--
ALTER TABLE `bais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bais_chuong_id_foreign` (`chuong_id`);

--
-- Chỉ mục cho bảng `cauhois`
--
ALTER TABLE `cauhois`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chuongs`
--
ALTER TABLE `chuongs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `des`
--
ALTER TABLE `des`
  ADD PRIMARY KEY (`id`),
  ADD KEY `des_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `kienthucs`
--
ALTER TABLE `kienthucs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kienthucs_bai_id_foreign` (`bai_id`);

--
-- Chỉ mục cho bảng `luachons`
--
ALTER TABLE `luachons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `luachons_cauhoi_id_foreign` (`cauhoi_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tralois`
--
ALTER TABLE `tralois`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tralois_de_id_foreign` (`de_id`),
  ADD KEY `tralois_cauhoi_id_foreign` (`cauhoi_id`);

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
-- AUTO_INCREMENT cho bảng `bais`
--
ALTER TABLE `bais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `cauhois`
--
ALTER TABLE `cauhois`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `chuongs`
--
ALTER TABLE `chuongs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `des`
--
ALTER TABLE `des`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `kienthucs`
--
ALTER TABLE `kienthucs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `luachons`
--
ALTER TABLE `luachons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tralois`
--
ALTER TABLE `tralois`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bais`
--
ALTER TABLE `bais`
  ADD CONSTRAINT `bais_chuong_id_foreign` FOREIGN KEY (`chuong_id`) REFERENCES `chuongs` (`id`);

--
-- Các ràng buộc cho bảng `des`
--
ALTER TABLE `des`
  ADD CONSTRAINT `des_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `kienthucs`
--
ALTER TABLE `kienthucs`
  ADD CONSTRAINT `kienthucs_bai_id_foreign` FOREIGN KEY (`bai_id`) REFERENCES `bais` (`id`);

--
-- Các ràng buộc cho bảng `luachons`
--
ALTER TABLE `luachons`
  ADD CONSTRAINT `luachons_cauhoi_id_foreign` FOREIGN KEY (`cauhoi_id`) REFERENCES `cauhois` (`id`);

--
-- Các ràng buộc cho bảng `tralois`
--
ALTER TABLE `tralois`
  ADD CONSTRAINT `tralois_cauhoi_id_foreign` FOREIGN KEY (`cauhoi_id`) REFERENCES `cauhois` (`id`),
  ADD CONSTRAINT `tralois_de_id_foreign` FOREIGN KEY (`de_id`) REFERENCES `des` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
