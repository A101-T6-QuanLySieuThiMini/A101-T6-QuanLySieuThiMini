using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class ProductDTO
    {
        //public Products(int iD, string title, decimal price, int productCategoryID, int quantity, int priceSale)
        //{
        //    ID = iD;
        //    Title = title;
        //    Price = price;
        //    ProductCategoryID = productCategoryID;
        //    Quantity = quantity;
        //    PriceSale = priceSale;
        //}

        public int ID { get; set; }
        public string ProductCode { get; set; }

        public string Title { get; set; }
        public Decimal Price { get; set; }
        public int Quantity { get; set; }

        public bool isHome { get; set; }
        public bool isSale { get; set; }
        public bool isFeature { get; set; }
        public bool isHot { get; set; }
        public int ProductCategoryId { get; set; }

        public DateTime CreatedDate { get; set; }
        public DateTime ModifiedDate { get; set; }

        public bool isActive { get; set; }
        public int viewCount { get; set; }

        public Decimal OriginalPrice { get; set; }

    }
}
