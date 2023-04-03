# blogweb
Để chạy ứng dụng, chúng ta cần sử dụng a Dockerfile và Docker Compose. 
Dockerfile chỉ đơn giản là một kịch bản hướng dẫn dựa trên văn bản được sử 
dụng để tạo một container image.
```bash
FROM php:7.4-apache
RUN docker-php-ext-install mysqli
```
Câu lệnh FROM là câu lệnh chạy ở môi trường php:7.4-apache là một cái image trên
docker Hub Nếu không có điều đó trên máy của mình, image đó cần phải được tải xuống.
Câu lệnh FROM là câu lệnh chạy ở môi trường php:7.4-apache là một cái image trên docker Hub 
Nếu không có điều đó trên máy của mình, image đó cần phải được tải xuống.

Còn File docker-compose.yml là một công cụ bổ sung cho dockerfile được phát triển để giúp xác định và 
chia sẻ nhiều container cùng một lúc.

```bash
version: '3.1'
services:
  php:
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - 80:80
    volumes:
      - ./src:/var/www/html/

  db:
    image: mysql
    command: --default-authentication-plugin=mysql_native_password
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: example
    volumes:
      - mysql-data:/var/lib/mysql

  phpmyadmin:
    image: phpmyadmin
    restart: always
    ports:
      - 8080:80
    environment:
      - PMA_ARBITRARY=1

volumes:
  mysql-data:

```
Trong file docker-compose.yml sẽ bắt đầu bằng cách xác định phiên bản của file ở đây là ‘3.1’. 
Tiếp đến là mình sẽ khai báo Services,
Ports: Liệt kê các ánh xạ cổng hoặc một ánh xạ cụ thể cho vùng chứa. Ứng dụng sẽ chạy ở port 80.
Volumes là cơ chế ưu tiên cho dữ liệu lâu dài được tạo và sử dụng bởi vùng chứa Docker.
Sau khi đã cấu hình docker file và docker-compose trong terminal gõ lệnh 
```bash
docker-compose up -d
```
Trong đó -d để chạy mọi thứ trong nền. Sau khi chạy thành công sẽ thấy terminal sẽ thấy báo như hình

![Build](/Build.png)

Khi build thành công trên nền tảng Docker sẽ thấy website chạy trên máy chủ có địa chỉ http://localhost:80

- Giao diện trang chủ
![trang chu](/giaodien1.png)

- Giao diện Admin
![Admin](/giaodien2.png)


