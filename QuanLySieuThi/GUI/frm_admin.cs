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
    public partial class frm_admin : Form
    {
        public frm_admin()
        {
            InitializeComponent();
        }
        UserBLL UserBll = new UserBLL();
        private void đăngXuấtToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
            frm_dangNhap f = new frm_dangNhap();
            f.Show();
        }

        private void frm_admin_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
            frm_sanpham f = new frm_sanpham(); ;
            f.Show();
        }
    }
}
