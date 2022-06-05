-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 04, 2022 at 05:49 PM
-- Server version: 8.0.29
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$i4LMfeFPQpGSNPTaccIkKuwxAkJ4PhBr3JND7FpXwWFjRvchQn17C', 'phpgurukulofficial@gmail.com', 1, '2018-05-27 17:51:00', '2018-10-24 18:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Is_Active` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(6, 'Công nghệ ', 'Tin tức về công nghệ', '2022-06-01 15:46:09', '2022-06-03 09:55:19', 1),
(12, 'Sức khỏe', 'Các vấn đề liên quan đến sức khỏe', '2022-06-03 03:13:08', '2022-06-03 03:13:08', 1),
(13, 'Lập trình', 'Các tin tức liên quan đến ngôn ngữ lập trình', '2022-06-03 03:14:25', '2022-06-03 03:14:25', 1),
(14, 'Thể thao', 'Các tin tức về thể thao', '2022-06-03 03:15:01', '2022-06-03 03:15:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(4, '15', 'Tạ Tiến Duật', 'duatta07@gmail.com', 'Mới không có gì thực sự.\r\n\r\n1. Muốn chụp cửa sổ tốt hơn như Windows\r\n2. Hiển thị / mở rộng giao diện người dùng tốt hơn\r\n3. Sửa lỗi\r\n4. Phiên bản API kim loại mới\r\n5. Làm cho Homepod mini có thể sử dụng làm loa (chúng vẫn hấp dẫn).', '2022-06-03 18:10:14', 1),
(6, '15', 'company1', 'v0931@kientruchanoi.edu.vn', 'Điều chính tôi muốn thấy trong macOS 13 là một ứng dụng Âm nhạc được cải tiến. Mô hình \"trình duyệt nhúng\" mà nó hiện nay rất phức tạp và có một số vấn đề, đặc biệt là với cách thức hoạt động của tìm kiếm. Nếu bạn tìm kiếm trong cửa hàng và duyệt nó một lúc, bạn phải nhấn \"back\" nhiều lần để có thể tìm kiếm thư viện của bạn. Cửa hàng cũng thường ế ẩm. Tách các dịch vụ không phải âm nhạc khác nhau khỏi iTunes là một bước đầu tiên tốt, nhưng ứng dụng Âm nhạc vẫn còn lộn xộn và tôi nghĩ rằng còn rất nhiều chỗ để cải thiện.\r\n\r\nMong chờ ứng dụng Cổ điển mới. Đây cuối cùng có thể là thay đổi khiến tôi chuyển từ Qobuz', '2022-06-03 18:24:07', 1),
(8, '15', 'duatta', 'v0931@kientruchanoi.edu.vn', 'Sau khi Big Sur phá vỡ khả năng tương thích của máy in và tôi mất hàng tuần để tìm ra giải pháp ổn định hơn hoặc ít hơn, tôi quyết định \"cập nhật\" sau 2 năm và chỉ sau vài tháng kể từ khi phát hành và sau khi kiểm tra khắp nơi \"điều gì đã phá vỡ Apple bây giờ\". Không có gì liên quan để tôi thực hiện muốn cập nhật.', '2022-06-03 18:35:39', 1),
(9, '16', 'Tạ Tiến Duật', 'duatta200@gmail.com', 'Rất hữu ích', '2022-06-03 19:08:08', 1),
(10, '18', 'Tạ Tiến Duật', 'v0931@kientruchanoi.edu.vn', 'Bài viết rất hữu ích', '2022-06-04 04:37:06', 1),
(11, '15', 'tatienduat', 'duatta07@gmail.com', 'Bai viet rat huu ich', '2022-06-04 17:11:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br>', '2018-06-30 18:01:03', '2018-06-30 19:19:51'),
(2, 'contactus', 'Thông tin', '<p><br></p><p><b>Địa chỉ:&nbsp; </b>Việt Nam</p><p><b>Số điện thoại : </b>01234567890</p><p><b>Email -id : </b>hellovietnam@gmail.com</p>', '2018-06-30 18:01:36', '2022-06-04 17:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int DEFAULT NULL,
  `SubCategoryId` int DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8mb3 COLLATE utf8_general_ci,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(13, 'IPad cuối cùng đã được thiết lập để trở thành một máy tính xách tay thay thế iPadOS 16', 6, 10, 'iPad rất phù hợp cho năng suất, chơi game , tiêu thụ phương tiện và hơn thế nữa. Các thiết bị đa năng này có một số tùy chọn để bạn lựa chọn. Có những mô hình thân thiện với ngân sách hoạt động mà không để lại lỗ trong túi của bạn. Mặt khác, có những mẫu cao cấp hơn dành cho người dùng Pro (một số thậm chí còn được hỗ trợ bởi Mackhoai tây chiên). Tuy nhiên, tất cả những chiếc iPad này đều có một điểm chung hạn chế - iPadOS. Có, hệ điều hành này đã đạt được một số đặc quyền kể từ khi đổi thương hiệu. Tuy nhiên, nó vẫn được xây dựng trên cùng một nền tảng hạn chế của iOS. Apple không nên tiếp thị thiết bị này như một sự thay thế PC khi các tác vụ PC cơ bản không tương thích với các máy tính bảng cao cấp nhất của hãng. Tuy nhiên, thay đổi để tốt hơn cần có thời gian. Điều quan trọng là đi đúng hướng để đạt được sự thay đổi này. Và bây giờ có vẻ như Apple đã chọn làm điều đúng đắn và tiếp tục khai thác tiềm năng của iPad thông qua iPadOS 16.\r\n\r\nTheo báo cáo của Mark Gurman của Bloomberg , iPadOS 16 có thể giới thiệu các cửa sổ ứng dụng có thể thay đổi kích thước trên iPad. Hiện tại, hình thức đa nhiệm rất cơ bản đã hạn chế người dùng theo nhiều cách. Bạn có thể chạy hai ứng dụng song song trên toàn màn hình, trong khi ứng dụng thứ ba di chuột qua chúng trong Slide Over. Tuy nhiên, đó là khá nhiều. Bạn không thể tự do di chuyển và thay đổi kích thước ứng dụng, và điều này giới hạn iPad như một thiết bị thay thế PC .\r\n\r\nBản cập nhật phần mềm lớn tiếp theo của iPad, iPadOS 16, sẽ có giao diện đa nhiệm được thiết kế lại giúp dễ dàng xem ứng dụng nào đang mở và chuyển đổi giữa các tác vụ dễ dàng hơn. Nó cũng sẽ cho phép người dùng thay đổi kích thước cửa sổ ứng dụng và cung cấp các cách mới để người dùng xử lý nhiều ứng dụng cùng một lúc.\r\n\r\nVới việc iPad có khả năng sẽ sớm hỗ trợ các tính năng đa nhiệm thích hợp  , chúng tôi chắc chắn hy vọng rằng Apple sẽ giới thiệu các ứng dụng Pro, như Xcode, trên iPadOS. Cuối cùng, những người trong một số lĩnh vực hạn chế có thể phụ thuộc vào nó thay vì máy tính xách tay. Tuy nhiên, máy tính bảng vẫn không phục vụ cho nhiều công việc khác.\r\n\r\nBạn có thấy mình đang sử dụng iPad để thay thế PC không? Tại sao hoặc tại sao không? Cho chúng tôi biết trong phần ý kiến ​​dưới đây.', '2022-06-03 16:40:38', NULL, 1, 'IPad-cuối-cùng-đã-được-thiết-lập-để-trở-thành-một-máy-tính-xách-tay-thay-thế-iPadOS-16', 'd362e2ead8e1b9dfcdb0c12aa3167362.jpg'),
(14, 'Điều gì sẽ xảy ra tại WWDC 2022', 6, 11, 'Hy vọng đang tăng cao cho WWDC 2022 . Có tin đồn là Apple có thể cung cấp những nâng cấp lớn cho hệ điều hành của mình. Hơn nữa, công ty sắp kết thúc quá trình chuyển đổi khoảng hai năm sang chip ARM và nhiều người dự đoán sẽ có một số nâng cấp được chờ đợi từ lâu cho Mac. Hãy ném vào tai nghe những lời xì xào về tai nghe thực tế hỗn hợp và bài phát biểu ngày 6 tháng 6 có thể chứng tỏ là một trong những bài phát biểu đáng nhớ nhất trong những năm gần đây.\r\n\r\n <br> <br><h5>iOS 16 và iPadOS 16</h5>  <br>\r\n\r\n<img height=\"400px\" src=\"https://o.aolcdn.com/images/dims?image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2022-06%2Fdca0bd00-e1b3-11ec-bb5f-63a45f7d6d63&thumbnail=675%2C&client=49kdj93ncb8s938hkdo&signature=77b688aed21098037e284e88af0a815553fd3016\" alt=\"\"> <br>\r\n\r\nCác bản cập nhật phần mềm iPhone và iPad của Apple thường là trọng tâm của WWDC , nhưng năm nay chúng có thể quan trọng hơn bình thường. Mark Gurman của Bloomberg gần đây đã tuyên bố rằng iOS 16 và iPadOS 16 sẽ đại diện cho những nâng cấp “khá quan trọng” liên quan đến nhiều khía cạnh của giao diện.\r\n\r\nCác ứng dụng quan trọng, chẳng hạn như Sức khỏe và Tin nhắn, cũng như thông báo sẽ được cải thiện. Chúng ta cũng có thể thấy tính năng phát hiện tai nạn ô tô kiểu Android tự động quay số khẩn cấp. Quan trọng hơn, iOS 16 cũng có thể mang đến những thay đổi có ý nghĩa đầu tiên cho màn hình khóa trong nhiều năm. Gurman gợi ý về “những cải tiến lớn” có thể bao gồm các hình nền với chức năng kiểu widget. Tuy nhiên, các tính năng hiển thị luôn bật được đồn đại có thể bị giới hạn trên iPhone 14 Pro trong tương lai .\r\n\r\nCác bản cập nhật hệ điều hành cũng có thể tinh chỉnh đa nhiệm, đặc biệt là đối với người dùng iPad. Giám đốc điều hành Steve Troughton-Smith nhận thấy rằng nhóm WebKit gần đây đã thêm các hook cho “chế độ đa nhiệm” iOS cho phép các cửa sổ có thể thay đổi kích thước tự do. Mặc dù chúng tôi sẽ không tin tưởng vào trải nghiệm đầy đủ giống như Mac với iPadOS 16, nhưng máy tính bảng của Apple có thể trở nên hữu ích hơn cho các máy tính hạng nặng.\r\n\r\nÍt nhất là có thể dự đoán được lịch trình phát hành. Apple đã từng cung cấp các bản xem trước dành cho nhà phát triển đầu tiên của iOS và iPadOS xung quanh WWDC và các bản xem trước công khai vài tuần sau đó. Phần mềm hoàn thiện có xu hướng ra mắt vào tháng 9 cùng với phần cứng iPhone và iPad mới. Chúng tôi hy vọng iOS 16 và iPadOS 16 sẽ tuân theo một mô hình tương tự.\r\n<br> <br><h5>MacBook Air M2</h5> <br>\r\n\r\n<img height=\"390px\" src=\"https://o.aolcdn.com/images/dims?image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2022-06%2F475c6350-e1b5-11ec-833f-4f0ff76b4ef4&thumbnail=675%2C&client=49kdj93ncb8s938hkdo&signature=e935127dbd1fe47b3a238df530e8dc9a12db3557\" alt=\"\"> <br>\r\n\r\nMáy Mac bắt đầu chuyển sang sử dụng silicon nội bộ của Apple cách đây một năm rưỡi. Trong khi sức mạnh xử lý đã được duy trì, không có gì phải bàn cãi khi các hệ thống dựa trên M1 đời đầu như MacBook Air bắt đầu cảm thấy lỗi thời khi PC Windows hỗ trợ x86 bắt kịp hoặc tăng vọt. Rất may, bạn có thể chỉ thấy một bản cập nhật mới tại WWDC. Gurman trước đây cho biết Apple đang thử nghiệm chín máy Mac trở lên và dự định ra mắt MacBook Air được thiết kế lại sử dụng M2 tại hội nghị.\r\n\r\nAir mới có thể đại diện cho sự suy nghĩ lại lớn đầu tiên về thiết bị di động mỏng nhẹ kể từ khi mô hình Màn hình Retina ra mắt vào năm 2018 . Như Jon Prosser và những người khác đã tuyên bố , nó được cho là sẽ có thiết kế vuông vắn hơn gợi nhớ đến iMac 24 inch năm ngoái và có nhiều màu sắc tươi sáng với bàn phím màu trắng. Không rõ liệu notch camera có được chuyển sang từ MacBook Pro 14 và 16 inch hay không, nhưng có khả năng bạn sẽ thấy kết nối nguồn MagSafe và nhiều cổng Thunderbolt hơn. Rất tiếc, đầu đọc thẻ SD và cổng HDMI từ Ưu điểm mới hơn có thể không thực hiện được.\r\n\r\nNếu một chiếc MacBook Air mới ra mắt tại WWDC, không có gì đảm bảo rằng nó sẽ xuất xưởng kịp thời. Chuỗi cung ứng của Apple (giống như nhiều hãng khác) đã bị ảnh hưởng bởi việc COVID-19 ngừng hoạt động ở Trung Quốc. \r\n\r\n<br> <br><h5> MacOS 13, tvOS 16 và watchOS 9</h5> <br>\r\n\r\n<img height=\"430px\" src=\"https://o.aolcdn.com/images/dims?image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-uploaded-images%2F2021-06%2F34072a20-c6e4-11eb-bfff-6b094b5d778f&thumbnail=675%2C&client=49kdj93ncb8s938hkdo&signature=9ba74506c8a6d586b04759a2efd079b27073f180\" alt=\"\"> <br> <br>\r\n\r\nCũng quan trọng như iOS và iPadOS, có những dấu hiệu cho thấy các nền tảng khác của Apple đang chuẩn bị cho các cuộc đại tu.\r\n\r\nGurman của Bloomberg đã gợi ý rằng watchOS 9 có thể nhận được một số thay đổi lớn nhất. Bạn có thể thấy chế độ năng lượng thấp giúp kéo dài tuổi thọ pin mà không giới hạn bạn ở chế độ giờ hiện hành cơ bản (như với chế độ dự trữ năng lượng hiện có). Gần đây, phóng viên tuyên bố phần mềm Apple Watch mới sẽ có những cải tiến điều hướng rõ ràng. Bạn cũng có thể thấy tính năng theo dõi sức khỏe mạnh mẽ hơn, mang lại nhiều số liệu thống kê hoạt động hơn, theo dõi giấc ngủ tốt hơn và tính năng \"gánh nặng\" phát hiện bạn đang ở trạng thái bao lâu.\r\n\r\nCác nền tảng khác có thể không thấy những thay đổi sâu rộng như nhau. MacOS 13 được cho là sẽ bao gồm ngăn Tùy chọn hệ thống được cải tiến đồng bộ hơn với cài đặt của iOS, chưa kể một số ứng dụng mặc định được thiết kế lại. Trong khi đó, chủ sở hữu Apple TV nên dự đoán nhiều tính năng nhà thông minh hơn (nếu không xác định).\r\n\r\n<br> <br><h5>Tai nghe thực tế hỗn hợp và nhiều máy Mac khác</h5> <br>\r\n\r\n<img height=\"60%\" src=\"https://o.aolcdn.com/images/dims?image_uri=https%3A%2F%2Fs.yimg.com%2Fos%2Fcreatr-images%2F2019-11%2Fe9503250-0485-11ea-92f9-f25df63dfb60&thumbnail=675%2C&client=49kdj93ncb8s938hkdo&signature=f1421eb6c350a70f61796835c51f29fb28903dec\" alt=\"\">\r\n\r\nCó rất nhiều sự cường điệu xung quanh tai nghe AR / VR được đồn đại từ lâu của Apple , nhưng chúng tôi sẽ không đặt cược vào màn ra mắt WWDC. Mặc dù công ty dường như đang đăng ký nhãn hiệu và chuẩn bị giới thiệu, Gurman và nhà phân tích Ming-Chi Kuo đều lên tiếng nghi ngờ. Công nghệ này dường như chưa sẵn sàng để ra mắt công chúng; cuối năm 2022 hoặc 2023 có nhiều khả năng xuất hiện hơn. Chúng tôi sẽ không loại trừ một bản tóm tắt ngắn gọn để giúp các nhà phát triển chuẩn bị ứng dụng, nhưng điều đó có vẻ đáng ngờ nếu không có thêm bằng chứng.\r\n\r\nTương tự như vậy, chúng tôi sẽ không mong đợi máy tính ngoài MacBook Air. Bất chấp những tin đồn về việc Apple đang thử nghiệm chín máy Mac dựa trên M2, vẫn chưa có dấu hiệu nào về việc sắp phát hành cho hầu hết chúng. Một chiếc Mac Pro dựa trên ARM vẫn có vẻ xa vời và Gurman không mong đợi bất kỳ bản làm mới dựa trên M2 nào khác cho đến cuối năm 2022. Như đã nói, hãy chuẩn bị cho những điều bất ngờ - Apple đã ra mắt M1 với ba máy Mac.\r\n\r\nBạn có thể sẽ không nhìn thấy phần cứng tiêu dùng khác. WWDC vẫn là cuộc họp dành cho các nhà phát triển đầu tiên và Apple thường dự trữ iPhone mới, Đồng hồ và hầu hết các thiết bị phổ biến khác cho mùa thu. Phần cứng có bề mặt hướng đến những người sáng tạo nội dung chuyên nghiệp (chẳng hạn như Mac Pro được xem trước vào năm 2019 ) hoặc nhằm mục đích giúp các nhà phát triển làm quen với các công nghệ mới (như các tấm thử nghiệm dựa trên M1 của năm 2020). Nếu MacBook Air M2 ra mắt vào ngày 6 tháng 6, nó sẽ đại diện cho một ngoại lệ đối với một quy tắc thông thường chắc chắn.\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2022-06-03 16:48:27', '2022-06-04 17:09:50', 1, 'Điều-gì-sẽ-xảy-ra-tại-WWDC-2022', '9ecc167fdde046520f3fa6ba6fc0aca8.jpg'),
(15, 'macOS 13: Những gì chúng ta biết cho đến nay', 6, 12, 'Hội nghị các nhà phát triển toàn cầu (WWDC), hội nghị định hướng phần mềm và nhà phát triển hàng năm của Apple, hiện sẽ diễn ra một tuần nữa. Chúng tôi đã nghe rất ít về macOS 13 trước khi công bố vào năm nay, vì vậy chúng tôi có thể có một số bất ngờ lớn khi ngày 6 tháng 6 đến. Đây là những gì chúng ta biết cho đến nay về phiên bản tiếp theo của hệ điều hành Mac của Apple.\r\n<br> \r\n\r\n<h5>macOS 13 Tên?</h5> <br> \r\n\r\nMỗi năm đến WWDC, một câu hỏi trong tâm trí của nhiều người hâm mộ Mac là Apple sẽ chọn gì làm tên cho phiên bản tiếp theo của macOS. Truyền thống bắt nguồn từ sự khởi đầu của Mac OS X với những cái tên nổi tiếng của nó, và sau đó vào năm 2013, Apple chuyển sang những cái tên theo chủ đề Calfornia với sự ra mắt của OS X Mavericks.\r\n\r\nQuay trở lại những ngày đầu sau khi OS X Mavericks ra mắt, chúng tôi đã phát hiện ra tổng cộng hơn 20 đơn đăng ký nhãn hiệu theo chủ đề California được nộp bởi các công ty trách nhiệm hữu hạn khác nhau, tất cả đều là những công ty vỏ bọc do Apple tạo ra để che giấu danh tính của mình.\r\n\r\nTheo thời gian, một số nhãn hiệu như Yosemite, Sierra, Mojave và Monterey đã thực sự được Apple sử dụng cho các bản cập nhật hệ điều hành Mac lớn của mình, trong khi các đơn đăng ký nhãn hiệu cho hầu hết các tên khác đã bị loại bỏ, chẳng hạn như Rincon, Redwood, Pacific và Skyline.\r\n\r\n<br> \r\n<h5>Khả năng tương thích</h5> <br> \r\n\r\n<img height=\"390px\" src=\"https://images.macrumors.com/t/Y1cLw9qZ1z5OLtH9JlTVFhQQ4Iw=/800x0/article-new/2021/06/macOS-Monterey-on-MBP-Feature.jpg?lossy\" alt=\"\"> <br>  <br>\r\n\r\nĐiều đó nói rằng, Apple cần đảm bảo rằng macOS tiếp tục hỗ trợ các máy Mac chạy bằng Intel trong một vài năm tới, vì vậy có thể macOS 13 sẽ tương thích với một loạt các máy Mac tương tự như macOS Monterey hỗ trợ:\r\n\r\n-‌IMac‌ - Cuối năm 2015 trở về sau\r\n-iMac‌ Pro - 2017 trở lên\r\n‌-MacBook Air‌ - Đầu năm 2015 trở về sau\r\n-MacBook Pro - Đầu năm 2015 trở lên\r\n-Mac Pro - Cuối năm 2013 trở lên\r\n-Mac mini - Cuối năm 2014 trở về sau\r\n-MacBook - Đầu năm 2016 trở về sau\r\nCần lưu ý rằng có một số tính năng trong macOS 12 chỉ khả dụng cho các máy được cung cấp bởi chip silicon của Apple , vì vậy rất có thể macOS 13 cũng giống như vậy.\r\n<br> \r\n\r\n\r\n<h5>Các tính năng mới được đồn đại</h5>\r\n\r\nNhà báo Mark Gurman của Bloomberg có mối quan hệ tốt đã tuyên bố rằng macOS 13 sẽ đi kèm với Tùy chọn hệ thống được đại tu để phù hợp hơn với ứng dụng Cài đặt trên iPhone và iPad, bao gồm các cài đặt riêng lẻ được sắp xếp theo ứng dụng.\r\n\r\n<img height=\"390px\" src=\"https://images.macrumors.com/t/Uc5dtO3PwqanjB7ANiY4ei3NyZA=/800x0/article-new/2022/05/system-prefs.jpg?lossy\" alt=\"\"> <br> <br>\r\n\r\n\r\nGurman cũng tin rằng chúng ta sẽ thấy các thiết kế lại cho các ứng dụng mặc định khác, trong đó đặt các bản cập nhật cho các ứng dụng như Thư, Ghi chú, Lời nhắc, Podcast, Safari, Tin nhắn, Nhạc và hơn thế nữa.\r\n\r\nMặt khác, tin đồn về macOS 13 từ các nguồn đáng tin cậy là rất ít và xa vời. Một số người đã giải thích điều này là một dấu hiệu cho thấy Apple đã dành nhiều thời gian hơn để tối ưu hóa mã macOS cho các máy Mac silicon Apple mới nhất của mình và sửa lỗi, nhưng chúng tôi sẽ không biết chắc chắn cho đến khi công ty giới thiệu phiên bản mới của hệ điều hành lâu đời của mình tại WWDC vào tuần tới.\r\n\r\n<br> <br><h5>Các tính năng có thể có khác</h5> <br> \r\n\r\năm ngoái, macOS Monterey đã chia sẻ một số cải tiến mới với iOS 15 và iPadOS 15, bao gồm các tính năng mới trong Tin nhắn và FaceTime, SharePlay, Live Text và Visual Lookup, cùng với ứng dụng Phím tắt dành riêng cho Mac.\r\n\r\nTrên cơ sở đó, chúng ta có thể thu thập được gì từ những tin đồn về iOS 16 năm nay? Trong thực tế, không nhiều. Trong những năm trước, chúng tôi đã có những phiên bản iOS đầu tiên bị rò rỉ, cho chúng tôi một ý tưởng khá tốt về những gì sẽ xảy ra. Đó không phải là trường hợp của năm nay và chúng tôi chỉ có một số chi tiết về những gì có thể được đưa vào iOS 16.\r\n\r\n<br> \r\n<img height=\"390px\" src=\" https://images.macrumors.com/t/lsMFQ4wzuPpjQPS1EScQ7ib_jZA=/800x0/article-new/2022/05/macos-monterey-mbp-messages-hero.jpg?lossy\" alt=\"\"> <br>\r\n\r\nTheo Gurman , ứng dụng Tin nhắn trong iOS 16 có khả năng đạt được \"nhiều chức năng giống mạng xã hội hơn, đặc biệt là xung quanh tin nhắn âm thanh,\" để có thể xâm nhập vào ứng dụng Tin nhắn cho macOS 13.\r\n\r\nApple cũng được đồn đại là đang lên kế hoạch cho những cải tiến lớn đối với Màn hình khóa của iOS, bao gồm các hình nền có \"khả năng giống như tiện ích\". Các cải tiến của Màn hình khóa có thể chỉ dành riêng cho iPhone và iPad, nhưng vẫn có phạm vi cho các tiện ích nâng cao của Mac. Các widget trong macOS hiện nằm trong Trung tâm Thông báo dạng trượt, nhưng một số người dùng sử dụng các widget linh hoạt hơn, chẳng hạn như khả năng di chuyển chúng trên màn hình hoặc giữ chúng ở chế độ xem vĩnh viễn.\r\n\r\n<img height=\"390px\" src=\"https://images.macrumors.com/t/cg8DbVS7zTh-zlCrOeOD1Ab3TFU=/800x0/article-new/2022/05/music-app-monterey.jpg?lossy\" alt=\"\"> <br> <br>\r\n\r\nApple cũng được cho là đang phát triển một ứng dụng iOS Apple Music chuyên dụng tùy chọn cho nhạc cổ điển . Hiện tại vẫn chưa rõ liệu đây có phải là một ứng dụng riêng biệt trong macOS hay là một phần của cuộc đại tu ứng dụng Âm nhạc (một số người nói là rất cần thiết).\r\n<br> \r\n\r\n\r\n<h5>Ngày phát hành</h5> <br> \r\n\r\nApple thường xem trước hệ điều hành thế hệ tiếp theo dành cho Mac trong Hội nghị các nhà phát triển toàn cầu hàng năm ở San Jose, California vào đầu tháng 6 và phát hành bản beta dành cho nhà phát triển đầu tiên ngay sau sự kiện này. iOS 16, iPadOS 16, watchOS 9 và tvOS 16 có thể sẽ được phát hành vào tháng 9, tiếp theo là macOS 13 vào tháng 10.\r\n\r\n\r\n', '2022-06-03 17:46:05', '2022-06-04 04:13:12', 1, 'macOS-13:-Những-gì-chúng-ta-biết-cho-đến-nay', '32982480e5df306a36924c856f969b10jpeg'),
(16, 'Nỗ lực lớn hơn nữa để chinh phục những đỉnh cao mới trong thể thao', 14, 13, ' Thủ tướng Phạm Minh Chính đã tới dự, chúc mừng và chia vui với các vận động viên, huấn luyện viên. Chủ tịch nước Nguyễn Xuân Phúc đã gửi lẵng hoa chúc mừng.\r\n\r\nPhát biểu tại buổi lễ, Thủ tướng đặc biệt biểu dương những thành tích xuất sắc mà Đoàn Thể thao Việt Nam đã đạt được, mang lại cho đất nước, cho hàng triệu người hâm mộ cả nước niềm vui, niềm hạnh phúc, tự hào với những cung bậc cảm xúc rất khó quên.\r\n<br> \r\n<img height=\"390px\" src=\"https://vtv1.mediacdn.vn/thumb_w/640/2022/6/1/vnapotalseagames31letongketkhenthuongdaihoithethaodongnamalanthu316148408-1654088044150324678258.jpeg\" alt=\"\"> <br> <br>\r\nTại SEA Games 31, đoàn Thể thao Việt Nam đã thể hiện quyết tâm lớn, vượt qua chính mình bằng những thành tích vượt trội với 446 Huy chương các loại, trong đó, đạt kỷ lục với 205 Huy chương vàng, phá 21/41 kỷ lục SEA Games, củng cố vị trí dẫn đầu ở môn Điền kinh và xếp thứ hai ở môn Bơi, bảo vệ thành công Huy chương vàng môn bóng đá nam và nữ.\r\n\r\nThủ tướng Phạm Minh Chính nhấn mạnh, Việt Nam đăng cai tổ chức SEA Games 31 với rất nhiều khó khăn, thách thức trong bối cảnh đại dịch COVID-19 diễn biến phức tạp; thậm chí kế hoạch tổ chức đã phải lùi lại 6 tháng so với dự kiến.\r\n\r\nVới sự lãnh đạo, chỉ đạo, quyết tâm cao của Đảng, Nhà nước; sự nỗ lực, quyết liệt của các bộ, ngành, cơ quan, địa phương; sự đồng hành, ủng hộ của doanh nghiệp và nhân dân; và đặc biệt là sự cố gắng vượt bậc trong tập luyện và thi đấu của gần 5.000 vận động viên, ở 40 môn thể thao mà phần lớn là các môn Olympic và ASIAD, chúng ta đã có một kỳ SEA Games thành công rực rỡ. Đó cũng là minh chứng cho việc Việt Nam thích ứng an toàn, linh hoạt, kiểm soát hiệu quả dịch COVID-19, đang trên đà phục hồi mạnh mẽ và phát triển kinh tế, tự tin mở cửa với thế giới.\r\n<br> \r\n\r\n<img height=\"390px\" src=\"https://vtv1.mediacdn.vn/thumb_w/640/2022/6/1/vnapotalseagames31letongketkhenthuongdaihoithethaodongnamalanthu316148410-1654088065873658787202.jpeg\" alt=\"\"> <br> <br>\r\n\r\nThay mặt lãnh đạo Đảng, Nhà nước, Thủ tướng biểu dương và đánh giá cao sự nỗ lực, tinh thần trách nhiệm của các bộ, ngành, địa phương, cơ quan liên quan đã tạo ra một kỳ SEA Games công bằng, trung thực, một tinh thần thể thao cao thượng với chất lượng chuyên môn cao; đồng thời, lan tỏa tinh thần đoàn kết - hữu nghị giữa 11 nền văn hóa trong khu vực.\r\n\r\nNhắc lại lời căn dặn của Tổng Bí thư Nguyễn Phú Trọng: \"Bất kỳ lúc nào chúng ta cũng không được say sưa và ngủ quên trên vòng nguyệt quế\", Thủ tướng đề nghị các vận động viên giữ vững tinh thần \"thắng không kiêu, bại không nản\", giữ vững ý chí, phấn đấu nhiều hơn nữa, quyết tâm cao hơn nữa, nỗ lực lớn hơn để chinh phục những đỉnh cao mới.\r\n\r\nThủ tướng đã gửi lời cảm ơn, tri ân đến các cổ động viên, các doanh nghiệp, tổ chức, gia đình người thân của các vận động viên, đồng thời, cảm ơn các vận động viên chưa giành được huy chương - những người đã rất nỗ lực, cố gắng hết mình, trải qua nhiều khó khăn trong 2 năm qua để tập luyện với trách nhiệm cao nhất. Thủ tướng nhấn mạnh, điều quan trọng nhất là họ đã thi đấu hết mình, cố gắng vượt qua chính mình và đó chính là thành tích lớn nhất.\r\n\r\nThủ tướng yêu cầu ngành thể dục, thể thao cần tiếp tục duy trì, củng cố vị thế thể thao thành tích cao, đặt ra những mục tiêu cao hơn, đầu tư có trọng tâm, trọng điểm, từng bước tiệm cận với trình độ châu lục và thế giới, đồng thời chú trọng phát triển thể thao quần chúng.\r\n\r\nThủ tướng đề nghị tiếp tục nghiên cứu, đề xuất chính sách và quan tâm hơn nữa đến các vận động viên, huấn luyện viên về đời sống vật chất, tinh thần, điều kiện luyện tập, chế độ đãi ngộ, việc làm sau khi rời sân đấu… bảo đảm tổng thể, hài hòa, phù hợp điều kiện đất nước.\r\n\r\n\r\n\r\n', '2022-06-03 19:04:53', '2022-06-03 19:10:11', 1, 'Nỗ-lực-lớn-hơn-nữa-để-chinh-phục-những-đỉnh-cao-mới-trong-thể-thao', 'e4625c0a233ef6f7959ff5fde9832accjpeg'),
(17, '9 lưu ý khi uống cà phê để tốt cho sức khỏe ai cũng cần nhớ', 12, 14, '<h5>(VTC News) - Cà phê là một trong những đồ uống phổ biến mang lợi ích cho sức khỏe nếu được sử dụng đúng cách.</h5>\r\n\r\nDưới đây là một vài lưu ý khi uống cà phê rất có lợi cho sức khỏe.\r\n\r\n<br> <br> <h6>Không uống cà phê sau 2 giờ chiều</h6>\r\n\r\nCaffeine là chất kích thích, cung cấp cho cơ thể nguồn năng lượng và giúp tỉnh táo hơn. Nhưng nếu uống cà phê vào cuối ngày thì có thể gây khó ngủ, ngủ kém kèm thêm nhiều vấn đề sức khỏe khác. Tránh uống cà phê sau 2 giờ chiều đến 3 giờ chiều sẽ giúp cải thiện giấc ngủ. Có thể thay thế cà phê bằng trà với hàm lượng caffeine thấp hơn.\r\n\r\n<br> <br><h6>Không uống cà phê với nhiều đường</h6>\r\n\r\nMột số người thích uống cà phê nhưng lại không thể chấp nhận vị đắng và chát của cà phê mới xay và quen với việc thêm đường để tạo hương vị. Cà phê đem lại nhiều lợi ích sức khỏe nhưng khi thêm nhiều đường sẽ làm giảm các lợi ích vốn có của cà phê, thậm chí là gây hại cho sức khỏe như béo phì hoặc thừa cân theo thời gian.\r\n\r\nKhông những thế, uống đồ ngọt còn có thể gây sâu răng, xỉn màu răng. Do đó, không nên thêm đường khi uống cà phê mới xay, hãy thưởng thức hương thơm của cà phê nguyên chất, hoặc thêm một ít lượng sữa thích hợp để tăng mùi thơm.\r\n\r\n<img height=\"390px\" src=\"https://image.vtc.vn/resize/th/upload/2022/06/03/ca-phe-06585545.jpg\" alt=\"\"> <br> <br>\r\n\r\n<br> <br><h6>Lựa chọn các hãng cà phê chất lượng</h6>\r\n\r\nChất lượng cà phê có thể thay đổi rất nhiều tùy thuộc vào phương pháp chế biến và cách trồng hạt cà phê. Hạt cà phê đang có xu hướng bị phun thuốc trừ sâu và các hóa chất khác, gây hại cho sức khỏe con người. Do đó, cần chọn những loại cà phê đến từ các thương hiệu uy tín.\r\n\r\n<br> <br><h6> Tránh uống quá nhiều</h6>\r\n\r\nUống một lượng cà phê vừa phải sẽ có lợi cho sức khỏe, nhưng lạm dụng cà phê sẽ gây ra các tác dụng phụ.\r\n\r\n<br> <br><h6> Tránh thêm kem nhân tạo </h6>\r\n\r\nKhi thêm kem nhân tạo vào cà phê sẽ làm giảm đi các lợi ích vốn có của chúng. Thay vì thêm kem nhân tạo, có thể thay thế bằng sữa bò có chứa một số chất dinh dưỡng quan trọng. Ví dụ, sữa là một nguồn canxi tuyệt vời, làm giảm nguy cơ loãng xương và gãy xương. Ngoài ra, sữa bò có chứa một số vitamin K, giúp cải thiện sức khỏe của xương.\r\n\r\n<br> <br><h6> Thêm một ít cacao vào cà phê</h6>\r\n\r\nCacao chứa chất chống oxy hóa giúp làm giảm nguy cơ mắc bệnh tim. Thêm một ít cacao vào cà phê không chỉ gia tăng hương vị cho đồ uống mà còn đem lại nhiều lợi ích sức khỏe.\r\n\r\n<br> <br><h6> Không uống vào buổi sáng khi bụng đói</h6>\r\n\r\nTuyệt đối không nên uống khi bụng đói. Quá nhiều caffeine trong cà phê có thể kích thích tiết axit dịch vị và làm tăng nồng độ axit dịch vị. Hơn nữa, uống quá nhiều cà phê espresso khi bụng đói có thể làm tăng nhịp tim, dẫn đến tức ngực và đánh trống ngực, đồng thời đẩy nhanh tốc độ tiêu hao năng lượng và dễ gây hạ đường huyết.\r\n\r\n<br> <br><h6> Pha cà phê bằng bộ lọc giấy</h6>\r\n\r\nCà phê pha có chứa cafestol, một diterpene có thể làm tăng mức cholesterol trong máu. Để làm giảm tác dụng phụ này, hãy pha cà phê bằng bộ lọc giấy. Pha cà phê bằng bộ lọc giấy có tác dụng làm giảm lượng cafestol nhưng cho phép caffeine và chất chống oxy hóa có lợi đi qua.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2022-06-04 04:03:46', '2022-06-04 04:10:21', 1, '9-lưu-ý-khi-uống-cà-phê-để-tốt-cho-sức-khỏe-ai-cũng-cần-nhớ', 'a564f2e18a244641dbd7d57a636ef859.jpg'),
(18, 'Tự học Java | Top 5 IDE Java tốt nhất năm', 13, 15, 'Mặc dù bạn có thể viết các chương trình Java của mình trong một trình soạn thảo văn bản đơn giản, nhưng một IDE Java với các công cụ hữu ích sẽ làm tăng đáng kể hiệu quả của bạn. Một IDE sẽ bao gồm một trình soạn thảo mã nguồn, xây dựng các công cụ tự động hóa và một trình gỡ lỗi để giúp lập trình Java dễ dàng hơn. Nhưng với rất nhiều lựa chọn trên thị trường, thật khó để xác định IDE nào là tốt nhất cho bạn.\r\n\r\nHôm nay, cafedev sẽ thảo luận về các yêu cầu cơ bản cần xem xét khi chọn một IDE Java và top 5 IDE Java tốt nhất cho năm 2022.\r\n<br> <br><h5>Điều gì tạo nên một Java IDE tốt là gì?</h5>\r\n\r\nMôi trường phát triển tích hợp (IDE) bao gồm tất cả các công cụ bạn cần để viết, gỡ lỗi và kiểm tra code của mình. IDE cho phép các developer làm việc trong một môi trường duy nhất và cải thiện quy trình lập trình của họ. Mỗi IDE có các tài nguyên khác nhau, nhưng tất cả đều bao gồm trình soạn thảo văn bản, công cụ xây dựng và trình gỡ lỗi.\r\n\r\nKhi quyết định một IDE Java, điều quan trọng trước tiên là phải xác định những gì bạn cần từ nó để đảm bảo rằng nó có các công cụ cần thiết cho nhu cầu của bạn. Bất kể mức độ kinh nghiệm của bạn là gì, vẫn có một Java IDE lý tưởng dành cho bạn.\r\n\r\n<br> <br><h5>Các công cụ Java IDE cần thiết phải có</h5> <br>\r\n\r\n- Gỡ lỗi: Mặc dù các trình gỡ lỗi khác nhau giữa các IDE khác nhau, nhưng điều quan trọng là phải có một công cụ để đánh dấu các lỗi tiềm ẩn và giúp bạn xử lý code của mình.\r\n\r\nCú pháp Đánh dấu: Tính hợp Đánh dấu là rất quan trọng để dễ đọc và hiệu quả. Công cụ này có thể giúp bạn tìm lỗi trong code của mình và cho phép bạn sàng lọc code của mình với tốc độ nhanh hơn.\r\n\r\n- Tự động hóa xây dựng: Một IDE tốt sẽ cho phép bạn viết và chạy code Java của mình trong cùng một cửa sổ, giúp tăng năng suất và hiệu quả của chương trình của bạn.\r\n\r\n- Hoàn thành code: Công cụ này xác định và chèn các thành phần code để giúp bạn tiết kiệm thời gian và giảm nguy cơ mắc lỗi chính tả và lỗi.\r\n\r\n- Giao diện người dùng đồ họa (GUI): GUI hiệu quả cho phép giao diện lập trình trực quan.\r\n\r\n<br> <br><h5>Top 5 IDE Java hàng đầu</h5>\r\n\r\n<br> <br><h4>Eclipse</h4> <br>\r\n\r\n<img height=\"390px\" src=\"https://cafedev.vn/wp-content/uploads/2022/05/Eclipse-IDE-cafedev.jpg\" alt=\"\"> <br> <br>\r\n\r\nEclipse là một trong những Java IDE phổ biến nhất trên thị trường . Nó miễn phí, mã nguồn mở và có hệ sinh thái plugin mở rộng cho phép người dùng tùy chỉnh các chức năng để phát triển ứng dụng.\r\n\r\nEclipse IDE có cả phiên bản dành cho máy tính để bàn và đám mây, với phiên bản đám mây cho phép các nhà phát triển viết mã trong trình duyệt web.\r\n\r\nEclipse là một lựa chọn hàng đầu vì các công cụ phát triển của nó. Eclipse cung cấp Thị trường Eclipse chứa nhiều plugin có sẵn để tải xuống , cùng với Môi trường phát triển plugin cho phép các developer tạo các tính năng của riêng họ.\r\n\r\nEclipse hỗ trợ hơn 100 ngôn ngữ lập trình , bao gồm JavaScript, Groovy và Scala, và nó có một bộ công cụ mô hình hóa, biểu đồ và thử nghiệm mạnh mẽ . Eclipse cũng hỗ trợ các công cụ xây dựng Java phổ biến, Maven và Gradle .\r\n\r\nƯu điểm:\r\n\r\n-->\r\n- Có Lõi runtime\r\n- Trình biên dịch có thể tùy chỉnh\r\n- Tích hợp Easy Git và Apache Maven\r\n- Hỗ trợ nhiều plugin để cài đặt \r\n- Các tính năng chỉnh sửa, gỡ lỗi, duyệt và cấu trúc lại code\r\n- Hoàn thành code\r\nNhược điểm:\r\n\r\n- Danh tiếng vì chạy chậm\r\n- Sử dụng nhiều CPU\r\n- Một công cụ nặng với sự cố thường xuyên\r\n- Môi trường plugin phức tạp\r\n- Trường hợp sử dụng: Bạn là developer đa ngôn ngữ đang tìm kiếm một IDE cung cấp môi trường plugin mở rộng và đừng ngại dành thời gian để tùy chỉnh trải nghiệm của mình.\r\n\r\n- Đa nền tảng: Windows, Mac OS, Linux, Solaris\r\n\r\nGiá: Miễn phí\r\n\r\n<br> <br><h4>NetBeans</h4> <br>\r\n\r\n<img height=\"390px\" src=\"https://cafedev.vn/wp-content/uploads/2022/05/cafdev_netbean.jpg\" alt=\"\"> <br> <br>\r\n\r\nApache NetBeans là IDE chính thức cho Java 8 , khiến nó trở thành IDE Java hàng đầu để tạo các ứng dụng máy tính để bàn, thiết bị di động và web. NetBeans là mã nguồn mở và được sử dụng để phát triển các ứng dụng máy tính để bàn, web và di động cùng với HTML5 và C ++.\r\n\r\nVới NetBeans, thật dễ dàng để tùy chỉnh các ứng dụng phần mềm vì nó làm nổi bật code Java về mặt cú pháp và ngữ nghĩa .\r\n\r\nVới các công cụ tái cấu trúc và gỡ lỗi mạnh mẽ, NetBeans giúp tăng độ chính xác và hiệu quả. Các developer chủ yếu sử dụng NetBeans cho Java, nhưng nó có các phần mở rộng cho phép bạn làm việc bằng các ngôn ngữ lập trình khác, chẳng hạn như C, C ++ và JavaScript.\r\n\r\n<br> <br><h4>IntelliJ IDEA</h4> <br>\r\n\r\n<img height=\"390px\" src=\"https://cafedev.vn/wp-content/uploads/2022/05/cafdev-i%CC%A3.png\" alt=\"\"> <br> <br>\r\n\r\nIntelliJ là một trong những IDE tốt nhất để phát triển Java. Đó là một IDE có các tính năng để tăng năng suất mà không làm lộn xộn giao diện người dùng. Nó bao gồm một bộ công cụ giúp lập trình dễ dàng hơn, như hoàn toàn thông minh, tái cấu trúc đa ngôn ngữ, phân tích luồng dữ liệu và đưa vào ngôn ngữ.\r\n\r\nIntelliJ có sẵn trong hai phiên bản: phiên bản cộng đồng được cấp phép Apache 2 và phiên bản cuối cùng độc quyền. Phiên bản cộng đồng là miễn phí và mã nguồn mở, tập trung vào phát triển Máy ảo Android và Java (JVM). Phiên bản cuối cùng được trả phí, tập trung vào phát triển web và doanh nghiệp.\r\n', '2022-06-04 04:30:17', '2022-06-04 04:36:32', 1, 'Tự-học-Java-|-Top-5-IDE-Java-tốt-nhất-năm', 'd1056affd5274c6fd910b309cbb5bd10.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int NOT NULL,
  `CategoryId` int DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(10, 6, 'Bloomberg', 'Bloomberg cung cấp tin tức, dữ liệu, phân tích và video về kinh doanh và thị trường cho thế giới, bao gồm các câu chuyện từ Businessweek và Bloomberg News.', '2022-06-03 16:36:42', NULL, 1),
(11, 6, 'Engadget', 'Engadget là mạng blog công nghệ đa ngôn ngữ với phạm vi bao phủ hàng ngày về các tiện ích và thiết bị điện tử tiêu dùng. Engadget điều hành tổng cộng mười blog — bốn blog viết bằng tiếng Anh và sáu phiên bản quốc tế với đội ngũ biên tập viên độc lập.', '2022-06-03 16:44:21', NULL, 1),
(12, 6, 'Macrumors', 'MacRumors.com là trang web tổng hợp các tin tức, tin đồn và báo cáo liên quan đến Mac và Apple. Trang web được đưa ra vào ngày 24 tháng 2 năm 2000, tại Richmond, Virginia, và thuộc sở hữu của Arnold Kim. Bằng cách hợp nhất các báo cáo và các tuyên bố tham khảo chéo, MacRumors cố gắng theo dõi cộng đồng tin đồn.', '2022-06-03 17:35:02', NULL, 1),
(13, 14, 'vtv', 'Đài Truyền hình Việt Nam, là đài truyền hình quốc gia trực thuộc Chính phủ nước Cộng hòa Xã hội chủ nghĩa Việt Nam. Đài có nhiệm vụ \"tuyên truyền đường lối của Đảng, chính sách pháp luật của Nhà nước và Quốc hội, góp phần giáo dục, nâng cao dân trí, phục vụ đời sống tinh thần của nhân dân\".', '2022-06-03 18:44:25', NULL, 1),
(14, 12, 'vtc', 'Đài Truyền hình Kỹ thuật số VTC, còn gọi là Đài Truyền hình Kỹ thuật số Việt Nam, gọi tắt là VTC hay Đài VTC, là một đài truyền hình thành viên của Đài Tiếng nói Việt Nam. Đây là đài truyền hình đầu tiên tại Việt Nam phát sóng truyền hình kỹ thuật số và truyền hình kỹ thuật số mặt đất.', '2022-06-04 03:34:14', NULL, 1),
(15, 13, 'Cafe Dev', 'trang thông tin về lập trình', '2022-06-04 04:22:01', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
