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
    public partial class frm_dangNhap : Form
    {
        public frm_dangNhap()
        {
            InitializeComponent();
        }
        UserBLL UserBLL = new UserBLL();

        private void btn_dangNhap_Click(object sender, EventArgs e)
        {
            string username = txt_tk.Text;
            string password = txt_mk.Text;

            bool loginResult = UserBLL.Login(username, password);
            bool admin = UserBLL.checkAdmin(txt_tk.Text,txt_mk.Text);
            if (loginResult)
            {
                if (admin)
                {
                    MessageBox.Show("Đăng nhập thành công admin!");
                    frm_sanpham f = new frm_sanpham();
                    f.Show();
                    this.Hide(); 
                }
                else
                {
                    MessageBox.Show("Đăng nhập thành công nhan vien!");
                    frm_sanpham f = new frm_sanpham();
                    f.Show();
                    this.Hide();
                }
                // Thực hiện các hành động sau khi đăng nhập thành công
            }
            else
            {
                MessageBox.Show("Đăng nhập thất bại!");
                // Thực hiện các hành động sau khi đăng nhập thất bại
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Hide();
            frm_dangky f = new frm_dangky();
            f.Show();
        }

        private void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                txt_mk.UseSystemPasswordChar = true;

            }
            else
                txt_mk.UseSystemPasswordChar = false;
        }
    }
}
