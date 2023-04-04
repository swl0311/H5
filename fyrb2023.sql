-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2023-04-04 17:52:43
-- 服务器版本： 5.7.26-log
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyrb2023`
--

-- --------------------------------------------------------

--
-- 表的结构 `customer_identification`
--

CREATE TABLE `customer_identification` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `identification_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='客户识别表';

--
-- 转存表中的数据 `customer_identification`
--

INSERT INTO `customer_identification` (`id`, `name`, `identification_code`) VALUES
(1, '测试', 'abcd1234'),
(2, '刘超', 'abcd2345');

-- --------------------------------------------------------

--
-- 表的结构 `lottery`
--

CREATE TABLE `lottery` (
  `id` int(11) NOT NULL,
  `wechat_id` varchar(255) DEFAULT NULL,
  `wechat_nickname` varchar(255) DEFAULT NULL,
  `prize_name` varchar(255) DEFAULT NULL,
  `prize_code` varchar(255) DEFAULT NULL,
  `win_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='抽奖表';

-- --------------------------------------------------------

--
-- 表的结构 `prize_details`
--

CREATE TABLE `prize_details` (
  `id` int(11) NOT NULL,
  `prize_name` varchar(255) DEFAULT NULL,
  `prize_code` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='奖品明细表';

--
-- 转存表中的数据 `prize_details`
--

INSERT INTO `prize_details` (`id`, `prize_name`, `prize_code`, `status`) VALUES
(1, '星巴克30元卡', '42DJddJ2', NULL),
(2, '星巴克30元卡', 'DF249SAS', NULL),
(3, '星巴克30元卡', 'DFH532SF', NULL),
(4, '星巴克30元卡', 'CHS225SG', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `prize_quantity`
--

CREATE TABLE `prize_quantity` (
  `id` int(11) NOT NULL,
  `prize_type` varchar(255) DEFAULT NULL,
  `total_quantity` int(11) DEFAULT NULL,
  `remaining_quantity` int(11) DEFAULT NULL,
  `prize_value` decimal(10,2) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='奖品数量表';

--
-- 转存表中的数据 `prize_quantity`
--

INSERT INTO `prize_quantity` (`id`, `prize_type`, `total_quantity`, `remaining_quantity`, `prize_value`, `notes`) VALUES
(1, '星巴克30元卡', 0, 5, '30.00', '活动测试');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `wechat_id` varchar(255) DEFAULT NULL,
  `wechat_nickname` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `lottery_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_identification`
--
ALTER TABLE `customer_identification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lottery`
--
ALTER TABLE `lottery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prize_details`
--
ALTER TABLE `prize_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prize_quantity`
--
ALTER TABLE `prize_quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `customer_identification`
--
ALTER TABLE `customer_identification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `lottery`
--
ALTER TABLE `lottery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `prize_details`
--
ALTER TABLE `prize_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `prize_quantity`
--
ALTER TABLE `prize_quantity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
