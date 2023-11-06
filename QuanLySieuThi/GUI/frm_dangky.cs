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
    public partial class frm_dangky : Form
    {
        public frm_dangky()
        {
            InitializeComponent();
        }
        UserBLL UserBLL = new UserBLL();
        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string username = textBox1.Text;
            string password = textBox2.Text;
            string fullname = textBox3.Text;
            int isAdmin = int.Parse(textBox4.Text);

            bool registerResult = UserBLL.Register(username, password,fullname, isAdmin);

            if (registerResult)
            {
                MessageBox.Show("Đăng ký thành công!");
                // Thực hiện các hành động sau khi đăng ký thành công
            }
            else
            {
                MessageBox.Show("Đăng ký thất bại!");
                // Thực hiện các hành động sau khi đăng ký thất bại
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
            frm_dangNhap f = new frm_dangNhap();
            f.Show();
        }
    }
}
