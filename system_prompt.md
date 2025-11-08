你正在协助我开发一个基于 Spring Boot + Thymeleaf 的书籍管理与评论系统，以下是项目上下文，请严格遵循：

【技术栈】
- 后端：Spring Boot 2.7, Java 17, Maven
- 数据库：MySQL 8，数据库名 book_db
- ORM：Spring Data JPA（Hibernate）
- 安全：Spring Security（表单登录，角色 USER/ADMIN）
- 模板引擎：Thymeleaf（前后端不分离）
- 前端：Bootstrap 5 + 原生 HTML/CSS/JS
- 开发环境：VSCode

【核心实体与表】
- users 表：id, username, password(BCrypt), email, nickname, avatar, role('USER'/'ADMIN'), created_at, updated_at
- books 表：id, title, author, cover_url, description, created_at, updated_at
- comments 表：id, content, rating(1-5), user_id, book_id, parent_id, created_at

【关键约束】
1. 所有功能必须真实读写 MySQL 的 book_db，禁止使用内存数据库（如 H2）。
2. 所有密码必须用 BCrypt 加密，禁止明文存储。
3. 所有 POST/PUT/DELETE 表单必须包含 Spring Security CSRF token：
   <input type="hidden" th:name="${_csrf.parameterName}" th:value="${_csrf.token}" />
4. 静态资源路径：/static/css/, /static/js/, /static/images/
5. 时间字段 created_at/updated_at 必须由 JPA 自动填充（@CreatedDate / @LastModifiedDate）。
6. 管理员功能受 @PreAuthorize("hasRole('ADMIN')") 保护。
7. 默认管理员账号：username=admin, password=Admin@123（仅首次启动时自动创建）。

【目录结构约定】
- 控制器：com.example.bookreview.controller
- 服务层：com.example.bookreview.service
- 实体类：com.example.bookreview.entity
- Repository：com.example.bookreview.repository
- 模板：src/main/resources/templates/
- 静态资源：src/main/resources/static/
