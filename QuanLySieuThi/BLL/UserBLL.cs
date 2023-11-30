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
            var user = db.AspNetUsers.FirstOrDefault(u => u.UserName == username && u.PasswordHash == password);

            return user != null;
        }
        public string getName(string id)
        {
                var userName = (from a in db.AspNetUsers
                                where a.Id == id
                                select a.UserName).FirstOrDefault();
                return userName;
        }
        public bool Register(string id,string username, string password,string phone)
        {
            var existingUser = db.AspNetUsers.FirstOrDefault(u => u.UserName == username);

            if (existingUser != null)
            {
                return false;        
            }
            var newUser = new AspNetUser
            {             
                Id = id,
                UserName = username,
                PasswordHash = password,
                Phone = phone
            };
            db.AspNetUsers.InsertOnSubmit(newUser);
            db.SubmitChanges();
            return true;
        }
        public bool checkAdmin(string username,string password)
        {
            var user = db.AspNetUsers.FirstOrDefault(u => u.UserName == username && u.PasswordHash == password);
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
            var user = db.AspNetUsers.FirstOrDefault(u => u.UserName == username && u.PasswordHash == oldpassword);
            if(user!=null)
            {
                user.PasswordHash = newpassword;
                db.SubmitChanges();
                return true;
            }
            return false;
        }
    }
}
