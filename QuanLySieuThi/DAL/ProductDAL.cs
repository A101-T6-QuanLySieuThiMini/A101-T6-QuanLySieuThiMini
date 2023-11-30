using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
namespace DAL
{
    public class ProductDAL
    {
        public bool addProduct(ProductDTO product)
        {
            WebBanHangOnlineDataContext db = new WebBanHangOnlineDataContext();
            tb_Product newProduct = new tb_Product
            {
                Id = product.ID,
                Title = product.Title,
                ProductCode = product.ProductCode,
                Price = product.Price,
                Quantity = product.Quantity,
                IsHome=product.isHome,
                IsSale = product.isSale,
                IsFeature = product.isFeature,
                IsHot = product.isHot,
                ProductCategoryId = product.ProductCategoryId,
                CreatedDate=product.CreatedDate,
                ModifiedDate = product.ModifiedDate,
                IsActive=product.isActive,
                ViewCount=product.viewCount,
                OriginalPrice = product.OriginalPrice
            };
            db.tb_Products.InsertOnSubmit(newProduct);
            db.SubmitChanges();
            return true;
        }
    }
}
    