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
    public partial class frm_sanpham : Form
    {
        public frm_sanpham()
        {
            InitializeComponent();
        }
        ProductBLL productBLL = new ProductBLL();
        private void frm_sanpham_Load(object sender, EventArgs e)
        {
            loadProduct();
        }
        public void loadProduct()
        {
            dta1.DataSource = productBLL.loadProduct();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void dta1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int curow = dta1.CurrentRow.Index;
            txt_masp.Text = dta1.Rows[curow].Cells[0].Value.ToString();
            txt_tensp.Text = dta1.Rows[curow].Cells[1].Value.ToString();
            txt_mancc.Text = dta1.Rows[curow].Cells[3].Value.ToString();
            txt_gianhap.Text = dta1.Rows[curow].Cells[2].Value.ToString();
            txt_giaban.Text = dta1.Rows[curow].Cells[5].Value.ToString();
            txt_solg.Text = dta1.Rows[curow].Cells[4].Value.ToString();            
            txt_masp.Enabled = false;
            btn_them.Enabled = false;
            bnt_sua.Enabled = true;
            btn_xoa.Enabled = true;
        }

        private void btn_them_Click(object sender, EventArgs e)
        {
            frm_themsanpham f = new frm_themsanpham();
            f.Show();
            this.Hide();
        }
    }
}
