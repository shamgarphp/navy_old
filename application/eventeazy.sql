-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2019 at 07:01 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventeazy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `created_on`, `updated_on`) VALUES
(1, 'Admin', 'admin@gmail.com', 'MTIzNDU2', '2019-06-11 10:07:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `agms_channel`
--

CREATE TABLE `agms_channel` (
  `chid` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `compartment` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `rad_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agms_channel`
--

INSERT INTO `agms_channel` (`chid`, `location`, `compartment`, `area`, `rad_type`) VALUES
(2, 'wqerqwe', '341', 'dsfaf', 'asfasf'),
(3, 'asfasf', '34', 'fasdf', 'dsfgds');

-- --------------------------------------------------------

--
-- Table structure for table `agms_report`
--

CREATE TABLE `agms_report` (
  `id` int(11) NOT NULL,
  `dtandtm` datetime NOT NULL,
  `channel_no` int(11) NOT NULL,
  `radiation_level` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checkoff_gps`
--

CREATE TABLE `checkoff_gps` (
  `cid` int(11) NOT NULL,
  `dtntm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cl_name` varchar(100) NOT NULL,
  `cl_info` varchar(400) NOT NULL,
  `cl_location` varchar(100) NOT NULL,
  `cl_lat` double(6,6) NOT NULL,
  `cl_long` double(6,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkoff_gps`
--

INSERT INTO `checkoff_gps` (`cid`, `dtntm`, `cl_name`, `cl_info`, `cl_location`, `cl_lat`, `cl_long`) VALUES
(1, '2019-09-08 17:36:17', 'ghgsadha', 'asdasdasfafa', 'c1', 0.999999, 0.999999),
(2, '2019-09-08 17:38:36', 'ghgsadha', 'asdasdasfafa', 'c1', 0.999999, 0.999999);

-- --------------------------------------------------------

--
-- Table structure for table `daywise_report`
--

CREATE TABLE `daywise_report` (
  `daywise_report_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `men` int(11) NOT NULL,
  `women` int(11) NOT NULL,
  `boys` int(11) NOT NULL,
  `girls` int(11) NOT NULL,
  `place_of_work` varchar(250) NOT NULL,
  `work_information` text NOT NULL,
  `prayer_points` varchar(100) NOT NULL,
  `achievements` text NOT NULL,
  `challenges` text NOT NULL,
  `location_id` int(11) NOT NULL,
  `implemented_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daywise_report`
--

INSERT INTO `daywise_report` (`daywise_report_id`, `program_id`, `date`, `men`, `women`, `boys`, `girls`, `place_of_work`, `work_information`, `prayer_points`, `achievements`, `challenges`, `location_id`, `implemented_by`) VALUES
(10, 63, '1970-01-01', 93, 65, 237, 324, 'Brundavan Gardens', 'Stories,Songs Dance', 'Be with in God', 'Reached targets of first day', 'To gather more children', 19, 0),
(11, 65, '1970-01-01', 38, 20, 226, 269, 'daroor open place', 'stories,songs,dance', 'spiritual life of children', 'fulfilled by God\'s help', 'gather more souls for god', 20, 0),
(12, 62, '1970-01-01', 63, 6, 218, 320, 'Side to Corner Stone church,balgera', 'successfully done,without any disturbance ', 'Attended children to reach Heavenly Father through this year\'s THEME.', 'hundreds of smiles in children faces', 'One of our team mate\'s wife and his daughter is not at all ok,her wife\'s  had problem with blood pressure and her daughter with strain in leg ankle,this occurred this afternoon only,so please pray for sudhakar\'s family.', 11, 0),
(13, 56, '1970-01-01', 6, 5, 227, 245, 'Rajoli', 'two new songs,eternity devotion,one part biography,groups lessons,book activity,colouring and craft work', 'pray for tomorrow programme', 'Good co-operation by teachers and vallenters', ' ---', 13, 0),
(14, 62, '1970-01-01', 40, 10, 360, 300, 'balgera', 'successfully completed by the grace of God,many of the children were very interested to every song,actions,..egg and today we played a skit about the eternity life and that was best one for today,many of the volunteers and church youth members were participated and every children enjoyed a lot through that skit and main thing is balgera touch church members were very cooperative and helped very much as they can,and they showed interest about this vbs program.', 'For eternity life,toadys stories,lessons,songs,actions,skit,everything should be useful to them for ', 'God\'s word is entered into the hearts of children and they are very eager to hear new songs,skits,etc... many of the youth members were attended and helped us ,(for example they are cleanings all the surroundings of our program and cleaning it as their own work,)really I was very much happy to see them like that,they were so active than yesterday,church elders and some villagers also attended today,when we are leaving from hundreds of hands were giving send off to us,God helped us today and toady 1 new song and two lessons were completed,food is sufficiently served,.', 'pray for spiritual lives of children, ', 11, 0),
(15, 53, '1970-01-01', 56, 38, 426, 312, 'nandinee', 'we have don very successfully 2day program ', 'one kid is suffring with fever,and pray for kids should know about Christmas more and more', 'we reached many ungodly people and kids', 'here we found many rss people and people disciples.', 22, 0),
(16, 69, '1970-01-01', 40, 20, 320, 443, 'alampur', '15-1-2019', '    ', '    ', '    ', 16, 0),
(17, 67, '1970-01-01', 63, 31, 214, 213, 'kothakota', 'excellent  devotion ', 'for increase children ', 'we reached many childrens ', 'none', 25, 0),
(18, 61, '1970-01-01', 10, 5, 295, 276, 'Itikyala', 'General singing, New song and action, Devotion, class division, crafting,missionary biography ', 'God\'s leading, safe journey, ', 'good strength ', '-', 14, 0),
(19, 58, '1970-01-01', 30, 40, 431, 405, 'mudumala ', 'singing, devotion, classes ,book activiti , biography, magics , colouring,craft work,', 'God\'s leading', 'more childrens', 'By God\'s grace no challenginges', 15, 0),
(20, 53, '1970-01-01', 53, 46, 483, 379, 'nandinee', 'we are successfully completed 3rd day program and we reached some new places.', 'one auto driver came to Christ through this camps pray for his salvation. ', 'we found improvement in kids life', 'we want to do more for his kingdom extenuating. ', 22, 0),
(21, 58, '1970-01-01', 40, 40, 473, 441, '16/1/2019 vbs in Mudumala center', 'singing, devotion,groups,book activity, colouring&craft,song sheet distribution,book distribution, celender distribution,feedbacks, encouraging about final day vbs in ieeja', 'safe journey', 'some children accepted.', 'By God\'s grace no challenges', 15, 0),
(22, 56, '1970-01-01', 5, 7, 250, 270, 'Rajoli', '15.01.2019 total strength and two songs ,bible lessons,craft,samuellito story,magical.', '---', '----', '----', 13, 0),
(23, 56, '1970-01-01', 12, 9, 240, 253, 'Rajoli', '16.01.2019 children strength and one song ,devotion,magics,testimonies,Samuel lito', '-----', '---', '---', 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dept_emp`
--

CREATE TABLE `dept_emp` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dose_history`
--

CREATE TABLE `dose_history` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `dose_history` int(11) NOT NULL,
  `et_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dose_history`
--

INSERT INTO `dose_history` (`id`, `p_id`, `dose_history`, `et_id`) VALUES
(2, 341, 34, 3),
(3, 5, 5, 5),
(4, 1, 1, 1),
(5, 2, 2, 2),
(6, 12, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `emergency_task`
--

CREATE TABLE `emergency_task` (
  `id` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `task` varchar(100) NOT NULL,
  `dispution` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `expection_time` int(11) NOT NULL,
  `time_for_micro` int(11) NOT NULL,
  `time_10m` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency_task`
--

INSERT INTO `emergency_task` (`id`, `area`, `location`, `task`, `dispution`, `date_time`, `expection_time`, `time_for_micro`, `time_10m`) VALUES
(2, 1, 1, '', 1, '2019-10-15 00:14:00', 1, 1, '2019-10-17 04:00:00'),
(3, 112, 12, '', 12, '2019-10-06 00:00:00', 2019, 12, '0000-00-00 00:00:00'),
(4, 321, 32, '', 32, '2019-10-13 00:00:00', 32, 32, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_team`
--

CREATE TABLE `emergency_team` (
  `id` int(11) NOT NULL,
  `et_name` varchar(50) NOT NULL,
  `et_id` varchar(12) NOT NULL,
  `date_of_creation` datetime NOT NULL,
  `date_of_updation` datetime NOT NULL,
  `strength` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency_team`
--

INSERT INTO `emergency_team` (`id`, `et_name`, `et_id`, `date_of_creation`, `date_of_updation`, `strength`) VALUES
(1, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'dsgfsd', '435', '2019-10-07 03:09:14', '2019-10-07 08:15:09', 45),
(3, 'Wer', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 32),
(4, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(5, '1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12);

-- --------------------------------------------------------

--
-- Table structure for table `emergency_team_data`
--

CREATE TABLE `emergency_team_data` (
  `id` int(11) NOT NULL,
  `dtandtm` datetime NOT NULL,
  `name` text NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `dose_history` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency_team_data`
--

INSERT INTO `emergency_team_data` (`id`, `dtandtm`, `name`, `phone_no`, `dose_history`) VALUES
(2, '2019-09-25 00:00:00', 'new', '3425', 45);

-- --------------------------------------------------------

--
-- Table structure for table `emergency_work`
--

CREATE TABLE `emergency_work` (
  `id` int(11) NOT NULL,
  `dtandtm` datetime NOT NULL,
  `team` varchar(100) NOT NULL,
  `compartment` int(11) NOT NULL,
  `expected_time` int(11) NOT NULL,
  `expected_dose` int(11) NOT NULL,
  `time_for_wmsv` int(11) NOT NULL,
  `time_for_100ns` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency_work`
--

INSERT INTO `emergency_work` (`id`, `dtandtm`, `team`, `compartment`, `expected_time`, `expected_dose`, `time_for_wmsv`, `time_for_100ns`) VALUES
(2, '2019-09-18 00:00:00', 'dsafasf', 12, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `esv_report`
--

CREATE TABLE `esv_report` (
  `id` int(11) NOT NULL,
  `dtandtm` int(11) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `Radiation_level` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_id`, `package_id`, `name`, `status`, `created_on`, `updated_on`) VALUES
(8, 52, 'soup', 1, '2019-06-18 16:11:52', '0000-00-00 00:00:00'),
(9, 52, 'starters', 1, '2019-06-18 16:12:00', '0000-00-00 00:00:00'),
(10, 52, 'curries', 1, '2019-06-18 16:12:08', '2019-06-18 16:12:24'),
(11, 52, 'fry', 1, '2019-06-18 16:12:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mpp`
--

CREATE TABLE `mpp` (
  `id` int(11) NOT NULL,
  `dtntm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `power` decimal(5,3) NOT NULL,
  `pressurekgcm` decimal(5,3) NOT NULL,
  `temparaturec` decimal(5,3) NOT NULL,
  `volumec` decimal(5,3) NOT NULL,
  `feedwaterav` decimal(5,3) NOT NULL,
  `s_time` decimal(5,3) NOT NULL,
  `waterfeedinc` decimal(5,3) NOT NULL,
  `waterlevelinnhs` decimal(5,3) NOT NULL,
  `pressureinc` decimal(5,3) NOT NULL,
  `tempinc` decimal(5,3) NOT NULL,
  `cmeans` decimal(5,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mpp`
--

INSERT INTO `mpp` (`id`, `dtntm`, `power`, `pressurekgcm`, `temparaturec`, `volumec`, `feedwaterav`, `s_time`, `waterfeedinc`, `waterlevelinnhs`, `pressureinc`, `tempinc`, `cmeans`) VALUES
(2, '2019-09-02 18:30:00', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000', '2.000'),
(14, '2019-09-05 23:47:48', '99.999', '0.000', '0.000', '0.000', '0.000', '0.000', '0.000', '0.000', '0.000', '0.000', '0.000'),
(15, '2019-09-05 23:51:41', '50.000', '99.999', '99.999', '99.999', '99.999', '99.999', '99.999', '99.999', '99.999', '0.000', '0.000');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_cat_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `price_type_id` int(11) NOT NULL COMMENT '1 = Per Service  ,  2 = Per Unit, 3 =  Per Unit with Min Qty',
  `min_qty` int(11) NOT NULL,
  `price_addl_qty` int(11) NOT NULL,
  `discount` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `catring_type` int(11) NOT NULL COMMENT 'veg=1,non-veg=2',
  `realated_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `service_id`, `service_cat_id`, `name`, `price`, `price_type_id`, `min_qty`, `price_addl_qty`, `discount`, `description`, `status`, `created_on`, `updated_on`, `catring_type`, `realated_product`) VALUES
(41, 9, 13, 'balloon decoration', 5499, 1, 1, 5400, '10', '<ol><li><strong>Balloon decorating</strong></li><li>&nbsp;</li><li><strong>Decorations made of balloons with a combination of stacking and twisting techniques showcasing the deco-twisting style.</strong></li><li><strong>Balloons are used for decorating birthday parties, weddings, corporate functions, school events, and for other festive gatherings. The artists who use the round balloons to build are called &quot;stackers&quot; and the artists who use pencil balloons to build are called &quot;twisters.&quot; Most commonly associated with helium balloon decor, more recently balloon decorators have been moving towards the creation of air-filled balloon decorations due to the non-renewable natural resource of helium limited in supply. The most common types of balloon decor include arches, columns, centerpieces, balloon drops, sculptures, and balloon bouquets. With the increased aptitude for balloon twisting as well as balloon stacking, the rise of the deco-twister manifests itself as the combination of stacking techniques a</strong>s well as twisting techniques to create unique and interesting balloon decor option.</li><li>&nbsp;</li><li>Decorative rainbow colored arches made of party balloons used at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pride_parade\">gay pride parade</a>&nbsp;in S&atilde;o Paulo, Brazil.</li><li><strong>Party balloons</strong>&nbsp;are mostly made of a natural latex tapped from&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hevea_brasiliensis\">rubber trees</a>, and can be filled with air, helium, water, or any other suitable liquid or gas. The rubber&#39;s elasticity makes the volume adjustable.</li><li>&nbsp;</li><li>Twisting balloons can be used to create decor centerpieces for events and to create a more unique look than can be provided by foil balloons.</li><li>Often the term &quot;Party Balloon&quot; will refer to a twisting balloon or pencil balloon. These balloons are manipulated to create shapes and figures for parties and events, typically along with entertainment.</li><li>Filling the balloon with air can be done with the mouth, a manual or electric inflater (such as a hand&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pump\">pump</a>), or with a source of compressed gas.</li><li>When rubber or plastic balloons are filled with helium so that they float, they typically retain their&nbsp;<a href=\"https://en.wikipedia.org/wiki/Buoyancy\">buoyancy</a>&nbsp;for only a day or so, sometimes longer. The enclosed&nbsp;<a href=\"https://en.wikipedia.org/wiki/Helium_atom\">helium atoms</a>escape through small pores in the latex which are larger than the helium atoms. Balloons filled with air usually hold their size and shape much longer, sometimes for up to a week.</li><li>Even a perfect rubber balloon eventually loses gas to the outside. The process by which a substance or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Solution\">solute</a>&nbsp;migrates from a region of high concentration, through a barrier or membrane, to a region of lower concentration is called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Molecular_diffusion\">diffusion</a>. The inside of balloons can be treated with a special gel (for instance, the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Polymer\">polymer</a>&nbsp;solution sold under the &quot;Hi Float&quot; brand) which coats the inside of the balloon to reduce the helium leakage, thus increasing float time to a week or longer.</li></ol><p>&nbsp;</p><p><strong>Animal-shaped balloons</strong></p><p><strong>Beginning in the late 1970s, some more expensive (and longer-lasting) foil balloons made of thin, unstretchable, less permeable&nbsp;<a href=\"https://en.wikipedia.org/wiki/Metallised_film\">metallised films</a>&nbsp;such as Mylar (<a href=\"https://en.wikipedia.org/wiki/BoPET\">BoPET</a>) started being produced. These balloons have attractive shiny reflective surfaces and are often printed with color pictures and patterns for gifts and parties. The most important attribute of metallised nylon for balloons is its lightweight, increasing buoyancy and its ability to keep the helium gas from escaping for several weeks. Foil balloons have been criticized for interfering with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Electric_power_transmission\">power lines</a>.<a href=\"https://en.wikipedia.org/wiki/Balloon#cite_note-2\">[2]</a><a href=\"https://en.wikipedia.org/wiki/Balloon#cite_note-3\">[3]</a></strong></p>', 1, '2019-06-06 16:55:16', '0000-00-00 00:00:00', 0, 0),
(42, 9, 12, 'theme decoration', 5999, 1, 1, 5455, '9', '<ul><li><strong>Here, you will find all of the party decoration ideas you need to host a themed party. Fun, inventive ideas like funky party hats, colorful streamers, and one-of-a-kind garlands, make each soir&eacute;e special. For kid and adult party-goers alike, browse our selection of holiday themes and decorating ideas that make any party worth celebrating.</strong></li><li>&nbsp;</li><li><strong>Here, you will find all of the party decoration ideas you need to host a themed party. Fun, inventive ideas like funky party hats, colorful streamers, and one-of-a-kind garlands, make each soir&eacute;e special. For kid and adult party-goers alike, browse our selection of holiday themes and decorating ideas that make any party worth celebrating.</strong></li><li><strong>Here, you will find all of the party decoration ideas you need to host a themed party. Fun, inventive ideas like funky party hats, colorful streamers, and one-of-a-kind garlands, make each soir&eacute;e special. For kid and adult party-goers alike, browse our selection of holiday themes and decorating ideas that make any party worth celebrating.</strong></li></ul>', 1, '2019-06-06 17:02:17', '2019-06-06 18:45:50', 0, 0),
(43, 9, 14, 'flower decoration', 7999, 1, 1, 7000, '5', '<p><strong><em>Origins of Flower Designing</em></strong></p><p><strong><em>The Chinese were the first to put water in a container of cut flowers. So, while the Chinese were arranging flowers aesthetically in a container, the rest of the world was braiding garlands, making wreaths and flinging petals.</em></strong></p><p><strong><em>Japan grasped the vision of combining cut flowers, water and containers from China with such enthusiasm and inspiration that different schools of flower arrangement art emerged with masters who created philosophies and, design principles sprang into existence. The Japanese culture expanded flower arrangement into a meditative practice, which had its roots in beliefs and philosophies. Flower arrangement became an art form that inspired contemplation and transcended decorative and devotional functions.</em></strong></p><p><strong><em>Different Styles of Flower Arrangements</em></strong></p><ol><li><strong>Broadly, there are three styles of arrangements in the world of floral arrangements. They are:</strong></li><li><strong>1)&nbsp;Oriental Flower Arrangements:&nbsp;The emphasis is on the&nbsp;<em>Lines</em>&nbsp;in the floral arrangement.</strong></li><li><strong>2)&nbsp;Traditional/Western Flower Arrangements:&nbsp;The emphasis is on the&nbsp;<em>Use of many flowers as a mass</em>&nbsp;in the floral arrangement.</strong></li><li><strong>3)&nbsp;Modern Flower Arrangements:&nbsp;There are no rules at all. These floral arrangements are based on the taste of the floral designer. But, it is more close to Oriental than Traditional style of arranging flowers in its inclination towards importance to lines.</strong></li></ol>', 1, '2019-06-06 17:07:01', '2019-06-06 18:39:06', 0, 1),
(44, 11, 0, 'birthday party venue', 10000, 1, 1, 9550, '6', '<ol><li><strong>Event&nbsp;venues&nbsp;are locations where events are taking place. The&nbsp;definition&nbsp;of an event&nbsp;venue&nbsp;can be as endless as the stars in the sky; thus, when selecting the perfect&nbsp;venue&nbsp;for that important event, the sky is the limit. An event&nbsp;venue&nbsp;in simple terms is the location hosting an event</strong></li><li>&nbsp;</li><li><strong>Event&nbsp;venues&nbsp;are locations where events are taking place. The&nbsp;definition&nbsp;of an event&nbsp;venue&nbsp;can be as endless as the stars in the sky; thus, when selecting the perfect&nbsp;venue&nbsp;for that important event, the sky is the limit. An event&nbsp;venue&nbsp;in simple terms is the location hosting an event</strong></li><li>&nbsp;</li><li><strong>Event&nbsp;venues&nbsp;are locations where events are taking place. The&nbsp;definition&nbsp;of an event&nbsp;venue&nbsp;can be as endless as the stars in the sky; thus, when selecting the perfect&nbsp;venue&nbsp;for that important event, the sky is the limit. An event&nbsp;venue&nbsp;in simple terms is the location hosting an event</strong></li></ol>', 1, '2019-06-06 17:13:16', '2019-06-06 18:31:27', 0, 1),
(45, 7, 0, 'photography', 20000, 1, 1, 19000, '10', '<p><strong>Photographers&nbsp;are artists with the camera, using a blend of technical skills and an artistic eye to take pictures of people, places, landscapes, food, you name it.Photographers&nbsp;can work as fine artists, wedding and event&nbsp;photographers, or sell their photos to commercial clients.</strong></p><p><strong>Photographers&nbsp;are artists with the camera, using a blend of technical skills and an artistic eye to take pictures of people, places, landscapes, food, you name it.Photographers&nbsp;can work as fine artists, wedding and event&nbsp;photographers, or sell their photos to commercial clients.</strong></p><p><strong>Photographers&nbsp;are artists with the camera, using a blend of technical skills and an artistic eye to take pictures of people, places, landscapes, food, you name it.Photographers&nbsp;can work as fine artists, wedding and event&nbsp;photographers, or sell their photos to commercial clients.</strong></p>', 1, '2019-06-06 17:22:55', '2019-06-06 18:30:31', 0, 1),
(46, 9, 0, 'twtes1', 331, 2, 2, 222, '5', '<p>sdasdasdasd1111</p>', 1, '2019-06-06 17:30:43', '2019-06-06 17:33:48', 0, 1),
(47, 9, 14, 'flower decoration2', 15000, 1, 2, 14000, '5', '<ul><li><strong>Flowers&nbsp;are the reproductive parts of&nbsp;flowering&nbsp;plants. ...&nbsp;Flowers&nbsp;are also called the bloom or blossom of a plant.&nbsp;Flowers&nbsp;have petals. Inside the part of the&nbsp;flowerthat has petals are the parts which produce pollen and seeds. In all plants, a&nbsp;flower&nbsp;is usually its most colorful part.</strong></li><li><strong>Flowers&nbsp;are the reproductive parts of&nbsp;flowering&nbsp;plants. ...&nbsp;Flowers&nbsp;are also called the bloom or blossom of a plant.&nbsp;Flowers&nbsp;have petals. Inside the part of the&nbsp;flowerthat has petals are the parts which produce pollen and seeds. In all plants, a&nbsp;flower&nbsp;is usually its most colorful part.</strong></li><li><strong>Flowers&nbsp;are the reproductive parts of&nbsp;flowering&nbsp;plants. ...&nbsp;Flowers&nbsp;are also called the bloom or blossom of a plant.&nbsp;Flowers&nbsp;have petals. Inside the part of the&nbsp;flowerthat has petals are the parts which produce pollen and seeds. In all plants, a&nbsp;flower&nbsp;is usually its most colorful part.</strong></li><li><strong>Flowers&nbsp;are the reproductive parts of&nbsp;flowering&nbsp;plants. ...&nbsp;Flowers&nbsp;are also called the bloom or blossom of a plant.&nbsp;Flowers&nbsp;have petals. Inside the part of the&nbsp;flowerthat has petals are the parts which produce pollen and seeds. In all plants, a&nbsp;flower&nbsp;is usually its most colorful part.</strong></li></ul>', 1, '2019-06-06 18:37:04', '2019-06-06 18:38:33', 0, 1),
(48, 10, 0, 'test', 4555, 1, 4, 4500, '12', '<p>DFADFSADDDDD</p>', 1, '2019-06-11 16:07:31', '0000-00-00 00:00:00', 0, 1),
(50, 7, 0, 'fasd', 1222, 1, 0, 0, '', '<p>fasdsa</p>', 1, '2019-06-12 15:24:57', '0000-00-00 00:00:00', 0, 1),
(52, 12, 0, 'non-veg-package', 0, 1, 0, 0, '0', '<p><strong>Comprises of your chosen &#39;16&#39; dishes from our veg menu.&nbsp;<br />*Per plate price mentioned for 1000 &amp; above plates.&nbsp;<br /><br />Available from minimum 100 Plates. Package also available at different rate according to number of plates.</strong></p><p>&nbsp;</p><p>Comprises of your chosen &#39;16&#39; dishes from our veg menu.&nbsp;<br />*Per plate price mentioned for 1000 &amp; above plates.&nbsp;<br /><br />Available from minimum 100 Plates. Package also available at different rate according to number of plates.</p>', 1, '2019-06-18 16:01:38', '2019-06-18 16:02:11', 0, 0),
(53, 10, 0, 'birthday', 23332, 1, 2, 2222, '2', '<p>dfsadsd</p>', 1, '2019-07-18 10:44:50', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL,
  `program_name` varchar(250) NOT NULL,
  `location_id` int(11) NOT NULL,
  `program_aim` text NOT NULL,
  `implemented_by` varchar(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-active,0=inactive',
  `dept_no` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  `approved_rejected` int(11) NOT NULL COMMENT '1 = approve, 0 = rejected',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_id`, `program_name`, `location_id`, `program_aim`, `implemented_by`, `status`, `dept_no`, `title_id`, `approved_rejected`, `created_on`, `updated_on`) VALUES
(52, '', 26, 'to control every location', '', 0, 0, 0, 0, '2019-01-13 10:50:16', '0000-00-00 00:00:00'),
(53, '', 22, 'we are so happy to be in this praogram.', '', 0, 0, 0, 0, '2019-01-13 21:14:29', '0000-00-00 00:00:00'),
(54, '', 21, 'to lead children towards god', '', 0, 0, 0, 0, '2019-01-13 21:14:48', '0000-00-00 00:00:00'),
(55, '', 12, 'good life working for next generation ', '', 0, 0, 0, 0, '2019-01-13 21:14:51', '0000-00-00 00:00:00'),
(56, '', 13, ' To prepare good children ', '', 0, 0, 0, 0, '2019-01-13 21:14:59', '0000-00-00 00:00:00'),
(57, '', 9, 'for children\'s bright Feature ', '', 0, 0, 0, 0, '2019-01-13 21:15:35', '0000-00-00 00:00:00'),
(58, '', 15, 'to ', '', 0, 0, 0, 0, '2019-01-13 21:15:53', '0000-00-00 00:00:00'),
(59, '', 17, 'To lead the children towards our God', '', 0, 0, 0, 0, '2019-01-13 21:16:04', '0000-00-00 00:00:00'),
(60, '', 23, 'children smile ', '', 0, 0, 0, 0, '2019-01-13 21:16:37', '0000-00-00 00:00:00'),
(61, '', 14, 'children smiles ', '', 0, 0, 0, 0, '2019-01-13 21:17:18', '0000-00-00 00:00:00'),
(62, '', 11, 'To Praise God', '', 0, 0, 0, 0, '2019-01-13 21:20:14', '0000-00-00 00:00:00'),
(63, '', 19, 'vbs programme', '', 0, 0, 0, 0, '2019-01-13 21:21:25', '0000-00-00 00:00:00'),
(64, '', 18, 'first day cab camp ', '', 0, 0, 0, 0, '2019-01-13 21:21:48', '0000-00-00 00:00:00'),
(65, '', 20, 'vbs programme', '', 0, 0, 0, 0, '2019-01-13 21:22:57', '0000-00-00 00:00:00'),
(66, '', 10, 'awesome ', '', 0, 0, 0, 0, '2019-01-13 21:35:04', '2019-03-25 10:29:15'),
(67, '', 25, 'to see the smile on children faces ', '', 1, 0, 0, 1, '2019-01-13 21:41:38', '2019-03-25 10:29:14'),
(68, '', 8, 'hi', '', 0, 0, 0, 0, '2019-01-14 12:39:24', '0000-00-00 00:00:00'),
(69, '', 16, 'TO SEE HAPPYNESS IN CHILDREN  FACES', '', 1, 0, 0, 1, '2019-01-15 19:38:20', '2019-03-25 10:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `p_state`
--

CREATE TABLE `p_state` (
  `pid` int(11) NOT NULL,
  `dtntm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `area` varchar(100) NOT NULL,
  `compartment` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `num_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_state`
--

INSERT INTO `p_state` (`pid`, `dtntm`, `area`, `compartment`, `location`, `num_p`) VALUES
(1, '2019-09-08 16:48:27', 'unit1', 'c1', 'dech4', 10);

-- --------------------------------------------------------

--
-- Table structure for table `radsit_reference`
--

CREATE TABLE `radsit_reference` (
  `redsit_ref_id` int(11) NOT NULL,
  `radit_ref_channal` int(11) NOT NULL,
  `radsit_ref_area` int(11) NOT NULL,
  `radsit_ref_compartment` varchar(255) NOT NULL,
  `radsit_ref_location` int(11) NOT NULL,
  `radsir_ref_type1` int(11) NOT NULL,
  `radsir_ref_type2` int(11) NOT NULL,
  `radsir_ref_type3` int(11) NOT NULL,
  `radsir_ref_type4` int(11) NOT NULL,
  `rad_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radsit_reference`
--

INSERT INTO `radsit_reference` (`redsit_ref_id`, `radit_ref_channal`, `radsit_ref_area`, `radsit_ref_compartment`, `radsit_ref_location`, `radsir_ref_type1`, `radsir_ref_type2`, `radsir_ref_type3`, `radsir_ref_type4`, `rad_type`) VALUES
(1, 40, 0, 'C1', 0, 3000, 6000, 7000, 9000, ''),
(2, 41, 0, 'C2', 0, 2000, 3500, 5000, 7000, ''),
(3, 42, 0, 'C3', 0, 4000, 6000, 8000, 9000, ''),
(4, 45, 0, 'C4', 0, 2000, 4000, 6000, 8000, ''),
(5, 46, 0, 'C5', 0, 3000, 4500, 6000, 7000, ''),
(6, 47, 0, 'C6', 0, 2800, 4800, 5800, 6800, '');

-- --------------------------------------------------------

--
-- Table structure for table `rad_threshhold`
--

CREATE TABLE `rad_threshhold` (
  `rth_id` int(11) NOT NULL,
  `compartment` varchar(100) NOT NULL,
  `power` int(11) NOT NULL,
  `threshold` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rad_threshhold`
--

INSERT INTO `rad_threshhold` (`rth_id`, `compartment`, `power`, `threshold`) VALUES
(2, 'C13', 503, '4000.00'),
(3, 'C1', 75, '5000.00'),
(4, 'C2', 50, '4500.00');

-- --------------------------------------------------------

--
-- Table structure for table `resource_staff`
--

CREATE TABLE `resource_staff` (
  `resource_staff_id` int(11) NOT NULL,
  `resource` varchar(255) NOT NULL,
  `program_staff_id` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resource_staff`
--

INSERT INTO `resource_staff` (`resource_staff_id`, `resource`, `program_staff_id`, `created_on`, `updated_on`) VALUES
(1, '25', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '38', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '39', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1, '25', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '38', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '39', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rgms_channel`
--

CREATE TABLE `rgms_channel` (
  `chid` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `compartment` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `rad_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rgms_channel`
--

INSERT INTO `rgms_channel` (`chid`, `location`, `compartment`, `area`, `rad_type`) VALUES
(2, 'in1', 'c4', 'c5', 'c7');

-- --------------------------------------------------------

--
-- Table structure for table `rmc_report`
--

CREATE TABLE `rmc_report` (
  `id` int(11) NOT NULL,
  `dtandtm` int(11) NOT NULL,
  `Location` text NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `Radiation_level` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `name`) VALUES
(1, 'ceo'),
(2, 'admin'),
(3, 'accounts_head'),
(4, 'dept_head'),
(5, 'employee'),
(6, 'volunteer'),
(7, 'others');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=active , 0=inactive	',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `Service_Icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `name`, `description`, `image`, `status`, `created_on`, `updated_on`, `Service_Icon`) VALUES
(7, 'photography1', '<p>asdfasdfasdfas1</p>', 'ca5ee2625572d374e03c3d3a5fa06566.jpg', 1, '2019-06-06 15:28:35', '2019-07-10 15:30:39', 'fa fa-camera'),
(8, 'entertainment', '<p>entertainment&nbsp;entertainment&nbsp;entertainment&nbsp;</p>', 'c6281061ab484835ad1712d77d17ff94.png', 1, '2019-06-06 16:02:55', '2019-07-10 15:31:41', 'fa fa-american-sign-language-interpreting'),
(9, 'decoration', '<p>DecorationDecorationDecoration</p>', '9374764ea75e9d70de5b342fb19b3a9f.jpg', 1, '2019-06-06 16:12:17', '2019-07-10 15:32:32', 'fa fa-gift'),
(10, 'lighting', '<p>LightingLighting</p>', 'b7ca64d2ebba2302cff77dc060f15dc3.jpg', 1, '2019-06-06 16:13:40', '2019-07-10 15:28:17', 'fa fa-lightbulb-o'),
(11, 'venue', '<p>Venues</p>', 'af5beb1b3dcaf2a6bdcab4ac97d798bd.jpg', 1, '2019-06-06 16:14:30', '2019-07-10 15:33:17', 'fa fa-venus'),
(12, 'catering', '', '35df23be702269c9a44efb3db59c4191.jpg', 1, '2019-06-13 10:02:09', '2019-07-10 15:34:20', 'fa fa-cutlery');

-- --------------------------------------------------------

--
-- Table structure for table `smrs`
--

CREATE TABLE `smrs` (
  `id` int(11) NOT NULL,
  `dtntm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `compartment` varchar(100) NOT NULL,
  `rgms_channel` int(11) NOT NULL,
  `radiation_level` int(11) NOT NULL,
  `radsit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smrs`
--

INSERT INTO `smrs` (`id`, `dtntm`, `compartment`, `rgms_channel`, `radiation_level`, `radsit`) VALUES
(5, '0000-00-00 00:00:00', 'C6', 1, 1, 1),
(6, '2019-09-03 23:53:16', 'C5', 40, 4500, 12312);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `rid`) VALUES
(3, 'admin', '$2y$10$xuR3OieCkW96rrGsMHt2HeSigJCB4ZLhU7YFeTVTaN1HXJjuNeLm.', 0),
(4, 'user1', '$2y$10$hIAHjVlHUGVsDuQMy3YMMe9EybCuzY4ut3Pf99EJy7kTcQejvpTNS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `waterorboat_report`
--

CREATE TABLE `waterorboat_report` (
  `id` int(11) NOT NULL,
  `dtandtm` int(11) NOT NULL,
  `Location` text NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `Radiation_level` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weather_state`
--

CREATE TABLE `weather_state` (
  `wid` int(11) NOT NULL,
  `dtntm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `wind_direction` decimal(5,2) NOT NULL,
  `wind_speed` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `weather_station`
--

CREATE TABLE `weather_station` (
  `wid` int(11) NOT NULL,
  `dtntm` datetime NOT NULL,
  `wind_direction` decimal(5,2) NOT NULL,
  `wind_speed` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `agms_channel`
--
ALTER TABLE `agms_channel`
  ADD PRIMARY KEY (`chid`);

--
-- Indexes for table `agms_report`
--
ALTER TABLE `agms_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkoff_gps`
--
ALTER TABLE `checkoff_gps`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `daywise_report`
--
ALTER TABLE `daywise_report`
  ADD PRIMARY KEY (`daywise_report_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `dept_emp`
--
ALTER TABLE `dept_emp`
  ADD PRIMARY KEY (`emp_no`,`dept_no`),
  ADD KEY `emp_no` (`emp_no`),
  ADD KEY `dept_no` (`dept_no`);

--
-- Indexes for table `dose_history`
--
ALTER TABLE `dose_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_task`
--
ALTER TABLE `emergency_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_team`
--
ALTER TABLE `emergency_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_team_data`
--
ALTER TABLE `emergency_team_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_work`
--
ALTER TABLE `emergency_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `esv_report`
--
ALTER TABLE `esv_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `package_id` (`package_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`),
  ADD KEY `packages_ibfk_1` (`service_id`);

--
-- Indexes for table `p_state`
--
ALTER TABLE `p_state`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `smrs`
--
ALTER TABLE `smrs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `checkoff_gps`
--
ALTER TABLE `checkoff_gps`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dose_history`
--
ALTER TABLE `dose_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `emergency_task`
--
ALTER TABLE `emergency_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `emergency_team`
--
ALTER TABLE `emergency_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emergency_team_data`
--
ALTER TABLE `emergency_team_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emergency_work`
--
ALTER TABLE `emergency_work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `p_state`
--
ALTER TABLE `p_state`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `smrs`
--
ALTER TABLE `smrs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`package_id`) REFERENCES `packages` (`package_id`) ON DELETE CASCADE;

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
