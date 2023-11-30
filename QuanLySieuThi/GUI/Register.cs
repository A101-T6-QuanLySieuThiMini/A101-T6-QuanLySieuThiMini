using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;
namespace GUI
{
    public partial class Register : Form
    {
        public Register()
        {
            InitializeComponent();
        }
        UserBLL UserBLL = new UserBLL();

        private void button1_Click(object sender, EventArgs e)
        {
            string manv = textBox5.Text;
            string username = textBox1.Text;
            string password = textBox2.Text;
            string phone = textBox3.Text;
            bool registerResult = UserBLL.Register(manv, username, password, phone);
            if (registerResult)
            {   
                MessageBox.Show("Đăng ký thành công!");
                DialogResult result = MessageBox.Show("Bạn có muốn quay về đăng nhập?", "Xác nhận", MessageBoxButtons.YesNo);

                if (result == DialogResult.Yes)
                {
                    frm_dangNhap f = new frm_dangNhap();
                    f.Show();
                    this.Close();
                }
                else
                {
                    return;
                }
                // Thực hiện các hành động sau khi đăng ký thành công            
            }
            else
            {
                MessageBox.Show("Đăng ký thất bại!");
                // Thực hiện các hành động sau khi đăng ký thất bại
            }
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            frm_dangNhap f = new frm_dangNhap();
            f.Show();
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
            string password = textBox2.Text;
            if (!IsPasswordValid(password) || password.Length<=8)
            {
                erorlabel.Text = "Mật khẩu không đúng định dạng!";
                textBox3.Enabled = false;
            }
            else
            {
                erorlabel.Text = ""; // Xóa thông báo lỗi nếu mật khẩu hợp lệ
                textBox3.Enabled = true;

            }
        }
        private bool IsPasswordValid(string password)
        {
            // Kiểm tra xem mật khẩu có ít nhất một ký tự viết hoa và một ký tự đặc biệt không
            bool hasUpperCase = false;
            bool hasSpecialChar = false;
            foreach (char c in password)
            {
                if (char.IsUpper(c))
                {
                    hasUpperCase = true;
                }
                if (char.IsPunctuation(c) || char.IsSymbol(c))
                {
                    hasSpecialChar = true;
                }
            }
            return hasUpperCase && hasSpecialChar;
        }

        private void Register_Load(object sender, EventArgs e)
        {

        }
    }
}
