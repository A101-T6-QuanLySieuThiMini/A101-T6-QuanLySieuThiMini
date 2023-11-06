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
    public partial class ChangePW : Form
    {
        public ChangePW()
        {
            InitializeComponent();
        }
        UserBLL UserBLL = new UserBLL();
        private void btn_doiMatKhau_Click(object sender, EventArgs e)
        {
            string username = txt_tk.Text;
            string oldPassword = txt_newmk.Text;
            string newPassword = txt_remk.Text;

            bool changePasswordResult = UserBLL.changePW(username, oldPassword, newPassword);

            if (changePasswordResult)
            {
                MessageBox.Show("Đổi mật khẩu thành công!");
            }
            else
            {
                MessageBox.Show("Đổi mật khẩu thất bại!");
            }
        }
    }
}
