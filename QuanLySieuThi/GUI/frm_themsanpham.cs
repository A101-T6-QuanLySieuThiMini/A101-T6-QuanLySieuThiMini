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
            bool ishome = checkBox1.Checked;
            bool isSale = checkBox1.Checked;
            bool isFeature = checkBox1.Checked;
            bool isHot = checkBox1.Checked;
            bool isActive = checkBox1.Checked;
            DateTime createDate = ngaytao.Value;
            DateTime createModifield = ngaydinhnghia.Value;
            if(txt_masp.Text=="" || txt_tensp.Text=="" || txt_solg.Text==""|| txt_giaban.Text==""|| txt_viewcount.Text=="" || txt_gianhap.Text=="")
            {
                MessageBox.Show("Vui lòng nhập đủ thông tin");

            }
            else
            {
                ProductDTO newProducts = new ProductDTO()
                {
                    // Sử dụng giá trị mặc định của tham số `iD`
                    ID = int.Parse(txt_id2.Text),
                    ProductCode = (txt_masp.Text),
                    Title = (txt_tensp.Text),
                    Quantity = int.Parse(txt_solg.Text),
                    isHome = ishome,
                    isSale = isSale,
                    isFeature = isFeature,
                    isHot = isHot,
                    isActive = isActive,
                    CreatedDate = createDate,
                    ModifiedDate = createModifield,
                    Price = Decimal.Parse(txt_giaban.Text),
                    ProductCategoryId = int.Parse(comboBox1.SelectedValue.ToString()),
                    viewCount = int.Parse(txt_viewcount.Text),
                    OriginalPrice = Decimal.Parse(txt_gianhap.Text)
                };
                ProductBLL productBLL = new ProductBLL();
                bool result = productBLL.addProduct(newProducts);
                if (result)
                {
                    MessageBox.Show("Thêm sản phẩm thành công");
                    frm_sanpham f = new frm_sanpham();
                    f.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Thêm sản phẩm thất bại");
                }
            }

        }

        private void label11_Click(object sender, EventArgs e)
        {

        }

        private void frm_themsanpham_Load(object sender, EventArgs e)
        {
            int a = ProductBLL.getID();
            txt_id2.Text = a.ToString();
        }
    }
}
