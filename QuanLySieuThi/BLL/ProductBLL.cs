using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BLL
{
    public class ProductBLL
    {
        WebBanHangOnlineDataContext db = new WebBanHangOnlineDataContext();
        public List<product> loadProduct()
        {
            var lstProduct = from product in db.products select product;

            return lstProduct.ToList();
        }
        public List<int> loadcbbLSP()
        {
            List<int> productCodes = db.tb_Products.Select(p => p.ProductCategoryId).ToList(); // Lấy danh sách mã sản phẩm từ bảng Products

            return productCodes;
        }
        public void addProduct(tb_Product product)
        {
            db.tb_Products.InsertOnSubmit(product);
            db.SubmitChanges();
        }
    }
}
