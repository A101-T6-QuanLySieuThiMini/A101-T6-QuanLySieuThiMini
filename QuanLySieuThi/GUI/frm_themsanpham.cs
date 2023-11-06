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
using DTO;
namespace GUI
{
    public partial class frm_themsanpham : Form
    {
        ProductBLL ProductBLL = new ProductBLL();
        public frm_themsanpham()
        {
            InitializeComponent();
            loadCBB();
        }
        public void loadCBB()
        {           
           comboBox1.DataSource=ProductBLL.loadcbbLSP();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            frm_sanpham f = new frm_sanpham();
            f.Show();
            this.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Products products = new Products(); // Sử dụng giá trị mặc định của tham số `iD`
            products.ID = int.Parse(txt_masp.Text);
            products.Title = (txt_tensp.Text);
            products.Price = Decimal.Parse(txt_giaban.Text);
            products.ProductCategoryID = int.Parse(comboBox1.SelectedValue.ToString());
            products.Quantity = int.Parse(txt_solg.Text);
            products.PriceSale = Decimal.Parse(txt_gianhap.Text);

            ProductBLL.addProduct(products);
        }
    }
}
