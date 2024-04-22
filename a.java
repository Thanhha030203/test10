public class Customer {
    private String customerName;
    private String email;

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    // Phương thức getter động
    public String getProperty(String propertyName) {
        // Xử lý tên trường và tên thuộc tính ở đây
        // Ví dụ: chuyển đổi chữ hoa thành chữ thường, loại bỏ dấu _
        if (propertyName.equals("Customer_Name")) {
            return getCustomerName();
        } else if (propertyName.equals("Email")) {
            return getEmail();
        }
        return null;
    }
}
