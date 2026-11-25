# Bài thực hành Session 02 — Docker

Thực hành trên Ubuntu 24.04 WSL2: cài Docker Engine, chạy PostgreSQL 15 Alpine, build QuickBite User Service và chạy JAR trực tiếp trên Linux host.

- [Báo cáo thực hành và các câu lệnh](report_session02.md)
- [Tải bài nộp ZIP](session02-submission.zip)
- [Ảnh Docker Engine](screenshots/01-docker-engine.jpg)
- [Ảnh container PostgreSQL](screenshots/02-postgres-container.jpg)
- [Ảnh build và kết nối ứng dụng](screenshots/03-build-and-connection.jpg)
- [Log thực thi gốc](logs/)

Kết quả thực tế: build thành công, `quickbite-db` đang chạy với port mapping `5432:5432`, HikariCP kết nối PostgreSQL, health endpoint trả về `UP` và truy vấn bảng `users` trả về 3 bản ghi. Mật khẩu `secret` là cấu hình mẫu local được đề bài yêu cầu.
