# 🚀 SETUP DATABASE - HƯỚNG DẪN SIÊU ĐƠN GIẢN

## Làm theo 4 bước này (5 phút):

### BƯỚC 1: Mở Neon Console

1. Truy cập: https://console.neon.tech
2. Đăng nhập vào tài khoản của bạn
3. Bạn sẽ thấy database `VoCucPHuong_Database` (đã tạo trước đó)
4. Click vào database đó

### BƯỚC 2: Mở SQL Editor

1. Trong trang database, tìm tab **SQL Editor** (thanh menu bên trái)
2. Click vào **SQL Editor**
3. Bạn sẽ thấy một ô text lớn để nhập SQL

### BƯỚC 3: Copy & Paste SQL

1. Mở file `migration.sql` (trong thư mục project này)
2. Copy **TOÀN BỘ** nội dung (Cmd+A, Cmd+C)
3. Paste vào SQL Editor trong Neon (Cmd+V)
4. Click nút **Run** (hoặc Cmd+Enter)

### BƯỚC 4: Chờ hoàn tất

- Nếu thấy thông báo màu xanh "Success" → **XONG!** 🎉
- Nếu thấy lỗi "already exists" → Database đã được tạo rồi, bỏ qua và chuyển bước 5

### BƯỚC 5: Kiểm tra kết quả

1. Vào tab **Tables** (bên trái)
2. Bạn sẽ thấy 8 tables:
   - ✅ users
   - ✅ accounts
   - ✅ sessions
   - ✅ routes
   - ✅ schedules
   - ✅ buses
   - ✅ bookings
   - ✅ payments

---

## 🎊 HOÀN TẤT!

Website của bạn đã sẵn sàng 100%:

🌐 **https://cong-ty-tnhh-vo-cuc-phuong-public.vercel.app**

### Test ngay các tính năng:

1. **Đăng ký tài khoản** → /auth/register
2. **Đăng nhập** → /auth/login
3. **Đặt vé** → /dat-ve
4. **Xem lịch trình** → /lich-trinh

---

## ❓ Gặp vấn đề?

### Lỗi: "type already exists"
→ Bỏ qua, database đã được setup rồi

### Lỗi: "permission denied"
→ Kiểm tra bạn đang ở đúng database `VoCucPHuong_Database`

### Không thấy tab SQL Editor
→ Click vào tên database trước, sau đó mới thấy SQL Editor

### Vẫn không được
→ Chụp screenshot lỗi và hỏi lại tôi

---

**Chúc mừng bạn đã deploy thành công!** 🚀
