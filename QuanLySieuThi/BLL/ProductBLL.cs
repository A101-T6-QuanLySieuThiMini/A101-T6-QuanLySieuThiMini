using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;
namespace BLL
{
    public class ProductBLL
    {
        WebBanHangOnlineDataContext db = new WebBanHangOnlineDataContext();
        public List<product> loadProduct()
        {
            var lstProduct = from p in db.products select p;
            return lstProduct.ToList();
        }
        public List<int> loadcbbLSP()
        {
            List<int> productCodes = db.tb_ProductCategories.Select(p => p.Id).ToList(); // Lấy danh sách mã sản phẩm từ bảng Products

            return productCodes;
        }
        private ProductDAL productDAL = new ProductDAL();
        public bool addProduct(ProductDTO product)
        {
           return productDAL.addProduct(product);
        }
        public int getID()
        {
            var maxID = db.tb_Products.Max(p => (int?)p.Id) ?? 0;
            return maxID+1;
        }
        public bool deleteProduct(int id)
        {
            var idDelete = db.tb_Products.SingleOrDefault(x => x.Id == id);
            if(idDelete!=null)
            {
                db.tb_Products.DeleteOnSubmit(idDelete);
                db.SubmitChanges();
            }    
            return true;
        }
        public List<tb_Product> getProductsByPrice(bool ascendingOrder)
        {
            var query = db.tb_Products.AsQueryable();
            if(ascendingOrder)
            {
                query = query.OrderBy(p => p.Price);
            }
            else
            {
                query = query.OrderByDescending(p => p.Price);
            }
            return query.ToList();
        }
    }
}
