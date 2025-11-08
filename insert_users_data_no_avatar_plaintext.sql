-- 使用book_db数据库
USE `book_db`;

-- 插入管理员用户数据（不包含avatar，明文密码版本）
INSERT INTO `users` (`username`, `password`, `email`, `phone`, `nickname`, `created_at`, `updated_at`)
VALUES ('admin', 'admin', 'admin@example.com', '13800138000', '系统管理员', NOW(), NOW());

-- 插入普通用户数据1（不包含avatar，明文密码版本）
INSERT INTO `users` (`username`, `password`, `email`, `phone`, `nickname`, `created_at`, `updated_at`)
VALUES ('张三', '123456', 'user1@example.com', '13800138001', '普通用户1', NOW(), NOW());
-- 插入普通用户数据2（不包含avatar，明文密码版本）
INSERT INTO `users` (`username`, `password`, `email`, `phone`, `nickname`, `created_at`, `updated_at`)
VALUES ('李四', '123456789', 'user2@example.com', '13800138002', '普通用户2', NOW(), NOW());

-- 说明：
-- 1. 管理员用户：用户名admin，密码为'admin'（明文存储）
-- 2. 普通用户1：用户名张三，密码为'123456'（明文存储）
-- 3. 普通用户2：用户名李四，密码为'123456789'（明文存储）
-- 4. 此版本不包含avatar字段数据
-- 5. 此版本为明文密码版本，仅建议在开发测试环境临时使用
-- 6. 【重要安全警告】：在生产环境中，请务必使用加密方式存储密码，如BCrypt等
-- 7. created_at和updated_at字段使用NOW()函数自动设置为当前时间