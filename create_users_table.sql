-- 书籍管理与评论系统 - 创建book_db数据库和users表

-- 创建数据库（如果不存在）
CREATE DATABASE IF NOT EXISTS `book_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 使用book_db数据库
USE `book_db`;

-- 在book_db数据库中创建users表
CREATE TABLE `users` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `email` VARCHAR(100) DEFAULT NULL,
  `phone` VARCHAR(20) DEFAULT NULL,
  `nickname` VARCHAR(50) DEFAULT NULL,
  `avatar` VARCHAR(255) DEFAULT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_username` (`username`),
  UNIQUE KEY `uk_email` (`email`),
  UNIQUE KEY `uk_phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 说明：
-- 1. 首先创建名为book_db的数据库（如果不存在），使用utf8mb4字符集
-- 2. 然后在book_db数据库中创建users表，用于存储系统用户的基本信息
-- 3. 主键id使用自增长策略
-- 4. username、email、phone字段均设置为唯一约束
-- 5. 密码字段存储加密后的密码（建议使用BCrypt等加密算法）
-- 6. 创建和更新时间字段使用DATETIME类型，并设置为非空约束