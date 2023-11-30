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
using DAL;
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
            if (e.RowIndex >= 0 && e.ColumnIndex >= 0)
            {
                int productID = Convert.ToInt32(dta1.Rows[e.RowIndex].Cells["Id"].Value);
                btn_xoa.Tag = productID;
                //productBLL.deleteProduct(productID);
                //loadProduct();
            }
            int curow = dta1.CurrentRow.Index;
            txt_id.Text = dta1.Rows[curow].Cells[0].Value.ToString();
            txt_tensp.Text = dta1.Rows[curow].Cells[1].Value.ToString();
            txt_msp.Text = dta1.Rows[curow].Cells[2].Value.ToString();
            txt_giaban.Text = dta1.Rows[curow].Cells[3].Value.ToString();
            txt_solg.Text = dta1.Rows[curow].Cells[4].Value.ToString();
            txt_maLSP.Text = dta1.Rows[curow].Cells[5].Value.ToString();
            txt_gianhap.Text = dta1.Rows[curow].Cells[6].Value.ToString();
            txt_id.Enabled = false;
            btn_them.Enabled = true;
            bnt_sua.Enabled = true;
            btn_xoa.Enabled = true;
            
        }
        private void btn_them_Click(object sender, EventArgs e)
        {
                
            frm_themsanpham f = new frm_themsanpham();
            f.Show();
            this.Hide();
        }

        private void btn_Thoat_Click(object sender, EventArgs e)
        {
            this.Close();
            frm_admin f = new frm_admin();
            f.Show();
        }

        private void btn_xoa_Click(object sender, EventArgs e)
        {
            if (btn_xoa.Tag!=null) // Kiểm tra xem productId đã được chọn từ DataGridView chưa
            {

                DialogResult result = MessageBox.Show("Bạn có chắc chắn muốn xóa không?", "Xác nhận thoát", MessageBoxButtons.YesNo);

                if (result == DialogResult.Yes)
                {
                    int id = (int)btn_xoa.Tag;
                    ProductBLL productBLL = new ProductBLL();
                    productBLL.deleteProduct(id);
                    loadProduct();
                }
                else
                {
                    return;
                }

            }
            else
            {
                MessageBox.Show("Vui lòng chọn dòng để xóa !");
            }
        }

        private void btn_reset_Click(object sender, EventArgs e)
        {
            txt_giaban.Text = "";
            txt_gianhap.Text = "";
            txt_id.Text = "";
            txt_maLSP.Text = "";
            txt_msp.Text = "";
            txt_solg.Text = "";
            txt_tensp.Text = "";
        }

       

        private void search_TextChanged(object sender, EventArgs e)
        {
            string searchText = search.Text.ToLower(); // Lấy giá trị từ TextBox và chuyển đổi sang chữ thường để tìm kiếm không phân biệt hoa thường

            // Duyệt qua tất cả các dòng trong DataGridView để tìm kiếm
            foreach (DataGridViewRow row in dta1.Rows)
            {
                foreach (DataGridViewCell cell in row.Cells)
                {
                    if (cell.Value != null && cell.Value.ToString().ToLower().Contains(searchText))
                    {
                        row.Selected = true; // Nếu tìm thấy, chọn dòng tương ứng
                        dta1.FirstDisplayedScrollingRowIndex = row.Index; // Cuộn đến dòng được chọn
                        return;
                    }
                }
            }
        }
    }
}
