using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class Products
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
        public string Title { get; set; }
        public Decimal Price { get; set; }
        public int ProductCategoryID  { get; set; }
        public int Quantity { get; set; }
        public Decimal PriceSale { get; set; }

    }
}
