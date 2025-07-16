# BMI Calculator

Ứng dụng tính toán chỉ số khối cơ thể (BMI) được phát triển bằng Flutter với kiến trúc MVVM và quản lý trạng thái GetX.

## 📱 Tính năng

- **Chọn giới tính**: Nam/Nữ
- **Nhập thông tin cơ thể**:
  - Chiều cao (slider)
  - Cân nặng (increment/decrement)
  - Tuổi (increment/decrement)
- **Tính toán BMI**: Tự động tính toán và phân loại tình trạng sức khỏe
- **Kết quả chi tiết**: Hiển thị BMI, trạng thái và lời khuyên


## 📋 Tính năng chính

### 1. **Quản lý Input**
- Validation giới tính bắt buộc
- Giới hạn giá trị tối thiểu (weight > 1, age > 1)
- Cập nhật chiều cao qua slider

## 🛠️ Công nghệ sử dụng

- **State Management**: GetX
- **Architecture**: MVVM Pattern
- **Navigation**: GetX Navigation
- **Reactive Programming**: GetX Observables (Rx)

### **MVVM + GetX**
- **Tách biệt logic**: UI và business logic hoàn toàn tách biệt
- **Reactive UI**: Tự động cập nhật khi dữ liệu thay đổi
- **Memory Management**: GetX tự động dispose controllers
- **Simple Navigation**: Navigate management với GetX
- **Dependency Injection**: Binding

### **Reactive Programming**
- **Real-time Updates**: UI tự động cập nhật khi observable thay đổi
- **Clean Code**: Code ngắn gọn và dễ đọc
- **Performance**: Chỉ rebuild những widget cần thiết

### **DEMO**

https://github.com/user-attachments/assets/b29f85c5-b1fd-48d9-ace5-ae92d1a53a85


