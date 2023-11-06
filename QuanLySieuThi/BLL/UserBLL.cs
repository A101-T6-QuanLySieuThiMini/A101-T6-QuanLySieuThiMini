using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BLL
{
    public class UserBLL
    {
        public WebBanHangOnlineDataContext db = new WebBanHangOnlineDataContext();
        public bool Login(string username, string password)
        {
            var user = db.accounts.FirstOrDefault(u => u.username == username && u.password == password);

            return user != null;
        }

        public bool Register(string username, string password,string fullname,int isAdmin)
        {
            var existingUser = db.accounts.FirstOrDefault(u => u.username == username);

            if (existingUser != null)
            {
                return false; // Tài khoản đã tồn tại
            }
            var newUser = new account
            {             
                username = username,
                password = password,
                fullname=fullname,
                isAdmin=isAdmin
            };
            db.accounts.InsertOnSubmit(newUser);
            db.SubmitChanges();
            return true;
        }
        public bool checkAdmin(string username,string password)
        {
            var user = db.accounts.FirstOrDefault(u => u.username == username && u.password == password);
            if (user != null)
            {
                if (user.isAdmin == 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            return false;
        }
        public bool changePW(string username,string oldpassword,string newpassword)
        {
            var user = db.accounts.FirstOrDefault(u => u.username == username && u.password == oldpassword);
            if(user!=null)
            {
                user.password = newpassword;
                db.SubmitChanges();
                return true;
            }
            return false;
        }
    }
}
