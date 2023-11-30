﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="WebBanHangOnline")]
	public partial class WebBanHangOnlineDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void Inserttb_Product(tb_Product instance);
    partial void Updatetb_Product(tb_Product instance);
    partial void Deletetb_Product(tb_Product instance);
    partial void InsertAspNetUser(AspNetUser instance);
    partial void UpdateAspNetUser(AspNetUser instance);
    partial void DeleteAspNetUser(AspNetUser instance);
    partial void Inserttb_ProductCategory(tb_ProductCategory instance);
    partial void Updatetb_ProductCategory(tb_ProductCategory instance);
    partial void Deletetb_ProductCategory(tb_ProductCategory instance);
    #endregion
		
		public WebBanHangOnlineDataContext() : 
				base(global::DAL.Properties.Settings.Default.WebBanHangOnlineConnectionString1, mappingSource)
		{
			OnCreated();
		}
		
		public WebBanHangOnlineDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public WebBanHangOnlineDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public WebBanHangOnlineDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public WebBanHangOnlineDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<product> products
		{
			get
			{
				return this.GetTable<product>();
			}
		}
		
		public System.Data.Linq.Table<tb_Product> tb_Products
		{
			get
			{
				return this.GetTable<tb_Product>();
			}
		}
		
		public System.Data.Linq.Table<AspNetUser> AspNetUsers
		{
			get
			{
				return this.GetTable<AspNetUser>();
			}
		}
		
		public System.Data.Linq.Table<tb_ProductCategory> tb_ProductCategories
		{
			get
			{
				return this.GetTable<tb_ProductCategory>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.product")]
	public partial class product
	{
		
		private int _Id;
		
		private string _Title;
		
		private string _ProductCode;
		
		private decimal _Price;
		
		private int _Quantity;
		
		private int _ProductCategoryID;
		
		private decimal _OriginalPrice;
		
		public product()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", AutoSync=AutoSync.Always, DbType="Int NOT NULL IDENTITY", IsDbGenerated=true)]
		public int Id
		{
			get
			{
				return this._Id;
			}
			set
			{
				if ((this._Id != value))
				{
					this._Id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Title", DbType="NVarChar(250) NOT NULL", CanBeNull=false)]
		public string Title
		{
			get
			{
				return this._Title;
			}
			set
			{
				if ((this._Title != value))
				{
					this._Title = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ProductCode", DbType="NVarChar(50)")]
		public string ProductCode
		{
			get
			{
				return this._ProductCode;
			}
			set
			{
				if ((this._ProductCode != value))
				{
					this._ProductCode = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Price", DbType="Decimal(18,2) NOT NULL")]
		public decimal Price
		{
			get
			{
				return this._Price;
			}
			set
			{
				if ((this._Price != value))
				{
					this._Price = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Quantity", DbType="Int NOT NULL")]
		public int Quantity
		{
			get
			{
				return this._Quantity;
			}
			set
			{
				if ((this._Quantity != value))
				{
					this._Quantity = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ProductCategoryID", DbType="Int NOT NULL")]
		public int ProductCategoryID
		{
			get
			{
				return this._ProductCategoryID;
			}
			set
			{
				if ((this._ProductCategoryID != value))
				{
					this._ProductCategoryID = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_OriginalPrice", DbType="Decimal(18,2) NOT NULL")]
		public decimal OriginalPrice
		{
			get
			{
				return this._OriginalPrice;
			}
			set
			{
				if ((this._OriginalPrice != value))
				{
					this._OriginalPrice = value;
				}
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tb_Product")]
	public partial class tb_Product : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Id;
		
		private string _Title;
		
		private string _ProductCode;
		
		private string _Description;
		
		private string _Detail;
		
		private string _Image;
		
		private decimal _Price;
		
		private System.Nullable<decimal> _PriceSale;
		
		private int _Quantity;
		
		private bool _IsHome;
		
		private bool _IsSale;
		
		private bool _IsFeature;
		
		private bool _IsHot;
		
		private int _ProductCategoryId;
		
		private string _SeoTitle;
		
		private string _SeoDescription;
		
		private string _SeoKeywords;
		
		private string _CreatedBy;
		
		private System.DateTime _CreatedDate;
		
		private System.DateTime _ModifiedDate;
		
		private string _Modifiedby;
		
		private string _Alias;
		
		private bool _IsActive;
		
		private int _ViewCount;
		
		private decimal _OriginalPrice;
		
		private EntityRef<tb_ProductCategory> _tb_ProductCategory;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OnTitleChanging(string value);
    partial void OnTitleChanged();
    partial void OnProductCodeChanging(string value);
    partial void OnProductCodeChanged();
    partial void OnDescriptionChanging(string value);
    partial void OnDescriptionChanged();
    partial void OnDetailChanging(string value);
    partial void OnDetailChanged();
    partial void OnImageChanging(string value);
    partial void OnImageChanged();
    partial void OnPriceChanging(decimal value);
    partial void OnPriceChanged();
    partial void OnPriceSaleChanging(System.Nullable<decimal> value);
    partial void OnPriceSaleChanged();
    partial void OnQuantityChanging(int value);
    partial void OnQuantityChanged();
    partial void OnIsHomeChanging(bool value);
    partial void OnIsHomeChanged();
    partial void OnIsSaleChanging(bool value);
    partial void OnIsSaleChanged();
    partial void OnIsFeatureChanging(bool value);
    partial void OnIsFeatureChanged();
    partial void OnIsHotChanging(bool value);
    partial void OnIsHotChanged();
    partial void OnProductCategoryIdChanging(int value);
    partial void OnProductCategoryIdChanged();
    partial void OnSeoTitleChanging(string value);
    partial void OnSeoTitleChanged();
    partial void OnSeoDescriptionChanging(string value);
    partial void OnSeoDescriptionChanged();
    partial void OnSeoKeywordsChanging(string value);
    partial void OnSeoKeywordsChanged();
    partial void OnCreatedByChanging(string value);
    partial void OnCreatedByChanged();
    partial void OnCreatedDateChanging(System.DateTime value);
    partial void OnCreatedDateChanged();
    partial void OnModifiedDateChanging(System.DateTime value);
    partial void OnModifiedDateChanged();
    partial void OnModifiedbyChanging(string value);
    partial void OnModifiedbyChanged();
    partial void OnAliasChanging(string value);
    partial void OnAliasChanged();
    partial void OnIsActiveChanging(bool value);
    partial void OnIsActiveChanged();
    partial void OnViewCountChanging(int value);
    partial void OnViewCountChanged();
    partial void OnOriginalPriceChanging(decimal value);
    partial void OnOriginalPriceChanged();
    #endregion
		
		public tb_Product()
		{
			this._tb_ProductCategory = default(EntityRef<tb_ProductCategory>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int Id
		{
			get
			{
				return this._Id;
			}
			set
			{
				if ((this._Id != value))
				{
					this.OnIdChanging(value);
					this.SendPropertyChanging();
					this._Id = value;
					this.SendPropertyChanged("Id");
					this.OnIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Title", DbType="NVarChar(250) NOT NULL", CanBeNull=false)]
		public string Title
		{
			get
			{
				return this._Title;
			}
			set
			{
				if ((this._Title != value))
				{
					this.OnTitleChanging(value);
					this.SendPropertyChanging();
					this._Title = value;
					this.SendPropertyChanged("Title");
					this.OnTitleChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ProductCode", DbType="NVarChar(50)")]
		public string ProductCode
		{
			get
			{
				return this._ProductCode;
			}
			set
			{
				if ((this._ProductCode != value))
				{
					this.OnProductCodeChanging(value);
					this.SendPropertyChanging();
					this._ProductCode = value;
					this.SendPropertyChanged("ProductCode");
					this.OnProductCodeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Description", DbType="NVarChar(MAX)")]
		public string Description
		{
			get
			{
				return this._Description;
			}
			set
			{
				if ((this._Description != value))
				{
					this.OnDescriptionChanging(value);
					this.SendPropertyChanging();
					this._Description = value;
					this.SendPropertyChanged("Description");
					this.OnDescriptionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Detail", DbType="NVarChar(MAX)")]
		public string Detail
		{
			get
			{
				return this._Detail;
			}
			set
			{
				if ((this._Detail != value))
				{
					this.OnDetailChanging(value);
					this.SendPropertyChanging();
					this._Detail = value;
					this.SendPropertyChanged("Detail");
					this.OnDetailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Image", DbType="NVarChar(250)")]
		public string Image
		{
			get
			{
				return this._Image;
			}
			set
			{
				if ((this._Image != value))
				{
					this.OnImageChanging(value);
					this.SendPropertyChanging();
					this._Image = value;
					this.SendPropertyChanged("Image");
					this.OnImageChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Price", DbType="Decimal(18,2) NOT NULL")]
		public decimal Price
		{
			get
			{
				return this._Price;
			}
			set
			{
				if ((this._Price != value))
				{
					this.OnPriceChanging(value);
					this.SendPropertyChanging();
					this._Price = value;
					this.SendPropertyChanged("Price");
					this.OnPriceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PriceSale", DbType="Decimal(18,2)")]
		public System.Nullable<decimal> PriceSale
		{
			get
			{
				return this._PriceSale;
			}
			set
			{
				if ((this._PriceSale != value))
				{
					this.OnPriceSaleChanging(value);
					this.SendPropertyChanging();
					this._PriceSale = value;
					this.SendPropertyChanged("PriceSale");
					this.OnPriceSaleChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Quantity", DbType="Int NOT NULL")]
		public int Quantity
		{
			get
			{
				return this._Quantity;
			}
			set
			{
				if ((this._Quantity != value))
				{
					this.OnQuantityChanging(value);
					this.SendPropertyChanging();
					this._Quantity = value;
					this.SendPropertyChanged("Quantity");
					this.OnQuantityChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsHome", DbType="Bit NOT NULL")]
		public bool IsHome
		{
			get
			{
				return this._IsHome;
			}
			set
			{
				if ((this._IsHome != value))
				{
					this.OnIsHomeChanging(value);
					this.SendPropertyChanging();
					this._IsHome = value;
					this.SendPropertyChanged("IsHome");
					this.OnIsHomeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsSale", DbType="Bit NOT NULL")]
		public bool IsSale
		{
			get
			{
				return this._IsSale;
			}
			set
			{
				if ((this._IsSale != value))
				{
					this.OnIsSaleChanging(value);
					this.SendPropertyChanging();
					this._IsSale = value;
					this.SendPropertyChanged("IsSale");
					this.OnIsSaleChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsFeature", DbType="Bit NOT NULL")]
		public bool IsFeature
		{
			get
			{
				return this._IsFeature;
			}
			set
			{
				if ((this._IsFeature != value))
				{
					this.OnIsFeatureChanging(value);
					this.SendPropertyChanging();
					this._IsFeature = value;
					this.SendPropertyChanged("IsFeature");
					this.OnIsFeatureChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsHot", DbType="Bit NOT NULL")]
		public bool IsHot
		{
			get
			{
				return this._IsHot;
			}
			set
			{
				if ((this._IsHot != value))
				{
					this.OnIsHotChanging(value);
					this.SendPropertyChanging();
					this._IsHot = value;
					this.SendPropertyChanged("IsHot");
					this.OnIsHotChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ProductCategoryId", DbType="Int NOT NULL")]
		public int ProductCategoryId
		{
			get
			{
				return this._ProductCategoryId;
			}
			set
			{
				if ((this._ProductCategoryId != value))
				{
					if (this._tb_ProductCategory.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnProductCategoryIdChanging(value);
					this.SendPropertyChanging();
					this._ProductCategoryId = value;
					this.SendPropertyChanged("ProductCategoryId");
					this.OnProductCategoryIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SeoTitle", DbType="NVarChar(250)")]
		public string SeoTitle
		{
			get
			{
				return this._SeoTitle;
			}
			set
			{
				if ((this._SeoTitle != value))
				{
					this.OnSeoTitleChanging(value);
					this.SendPropertyChanging();
					this._SeoTitle = value;
					this.SendPropertyChanged("SeoTitle");
					this.OnSeoTitleChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SeoDescription", DbType="NVarChar(500)")]
		public string SeoDescription
		{
			get
			{
				return this._SeoDescription;
			}
			set
			{
				if ((this._SeoDescription != value))
				{
					this.OnSeoDescriptionChanging(value);
					this.SendPropertyChanging();
					this._SeoDescription = value;
					this.SendPropertyChanged("SeoDescription");
					this.OnSeoDescriptionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SeoKeywords", DbType="NVarChar(250)")]
		public string SeoKeywords
		{
			get
			{
				return this._SeoKeywords;
			}
			set
			{
				if ((this._SeoKeywords != value))
				{
					this.OnSeoKeywordsChanging(value);
					this.SendPropertyChanging();
					this._SeoKeywords = value;
					this.SendPropertyChanged("SeoKeywords");
					this.OnSeoKeywordsChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CreatedBy", DbType="NVarChar(MAX)")]
		public string CreatedBy
		{
			get
			{
				return this._CreatedBy;
			}
			set
			{
				if ((this._CreatedBy != value))
				{
					this.OnCreatedByChanging(value);
					this.SendPropertyChanging();
					this._CreatedBy = value;
					this.SendPropertyChanged("CreatedBy");
					this.OnCreatedByChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CreatedDate", DbType="DateTime NOT NULL")]
		public System.DateTime CreatedDate
		{
			get
			{
				return this._CreatedDate;
			}
			set
			{
				if ((this._CreatedDate != value))
				{
					this.OnCreatedDateChanging(value);
					this.SendPropertyChanging();
					this._CreatedDate = value;
					this.SendPropertyChanged("CreatedDate");
					this.OnCreatedDateChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ModifiedDate", DbType="DateTime NOT NULL")]
		public System.DateTime ModifiedDate
		{
			get
			{
				return this._ModifiedDate;
			}
			set
			{
				if ((this._ModifiedDate != value))
				{
					this.OnModifiedDateChanging(value);
					this.SendPropertyChanging();
					this._ModifiedDate = value;
					this.SendPropertyChanged("ModifiedDate");
					this.OnModifiedDateChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Modifiedby", DbType="NVarChar(MAX)")]
		public string Modifiedby
		{
			get
			{
				return this._Modifiedby;
			}
			set
			{
				if ((this._Modifiedby != value))
				{
					this.OnModifiedbyChanging(value);
					this.SendPropertyChanging();
					this._Modifiedby = value;
					this.SendPropertyChanged("Modifiedby");
					this.OnModifiedbyChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Alias", DbType="NVarChar(250)")]
		public string Alias
		{
			get
			{
				return this._Alias;
			}
			set
			{
				if ((this._Alias != value))
				{
					this.OnAliasChanging(value);
					this.SendPropertyChanging();
					this._Alias = value;
					this.SendPropertyChanged("Alias");
					this.OnAliasChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsActive", DbType="Bit NOT NULL")]
		public bool IsActive
		{
			get
			{
				return this._IsActive;
			}
			set
			{
				if ((this._IsActive != value))
				{
					this.OnIsActiveChanging(value);
					this.SendPropertyChanging();
					this._IsActive = value;
					this.SendPropertyChanged("IsActive");
					this.OnIsActiveChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ViewCount", DbType="Int NOT NULL")]
		public int ViewCount
		{
			get
			{
				return this._ViewCount;
			}
			set
			{
				if ((this._ViewCount != value))
				{
					this.OnViewCountChanging(value);
					this.SendPropertyChanging();
					this._ViewCount = value;
					this.SendPropertyChanged("ViewCount");
					this.OnViewCountChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_OriginalPrice", DbType="Decimal(18,2) NOT NULL")]
		public decimal OriginalPrice
		{
			get
			{
				return this._OriginalPrice;
			}
			set
			{
				if ((this._OriginalPrice != value))
				{
					this.OnOriginalPriceChanging(value);
					this.SendPropertyChanging();
					this._OriginalPrice = value;
					this.SendPropertyChanged("OriginalPrice");
					this.OnOriginalPriceChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="tb_ProductCategory_tb_Product", Storage="_tb_ProductCategory", ThisKey="ProductCategoryId", OtherKey="Id", IsForeignKey=true, DeleteOnNull=true, DeleteRule="CASCADE")]
		public tb_ProductCategory tb_ProductCategory
		{
			get
			{
				return this._tb_ProductCategory.Entity;
			}
			set
			{
				tb_ProductCategory previousValue = this._tb_ProductCategory.Entity;
				if (((previousValue != value) 
							|| (this._tb_ProductCategory.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._tb_ProductCategory.Entity = null;
						previousValue.tb_Products.Remove(this);
					}
					this._tb_ProductCategory.Entity = value;
					if ((value != null))
					{
						value.tb_Products.Add(this);
						this._ProductCategoryId = value.Id;
					}
					else
					{
						this._ProductCategoryId = default(int);
					}
					this.SendPropertyChanged("tb_ProductCategory");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.AspNetUsers")]
	public partial class AspNetUser : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _Id;
		
		private string _FullName;
		
		private string _Phone;
		
		private string _Email;
		
		private bool _EmailConfirmed;
		
		private string _PasswordHash;
		
		private string _SecurityStamp;
		
		private string _PhoneNumber;
		
		private bool _PhoneNumberConfirmed;
		
		private bool _TwoFactorEnabled;
		
		private System.Nullable<System.DateTime> _LockoutEndDateUtc;
		
		private bool _LockoutEnabled;
		
		private int _AccessFailedCount;
		
		private string _UserName;
		
		private System.Nullable<int> _isAdmin;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(string value);
    partial void OnIdChanged();
    partial void OnFullNameChanging(string value);
    partial void OnFullNameChanged();
    partial void OnPhoneChanging(string value);
    partial void OnPhoneChanged();
    partial void OnEmailChanging(string value);
    partial void OnEmailChanged();
    partial void OnEmailConfirmedChanging(bool value);
    partial void OnEmailConfirmedChanged();
    partial void OnPasswordHashChanging(string value);
    partial void OnPasswordHashChanged();
    partial void OnSecurityStampChanging(string value);
    partial void OnSecurityStampChanged();
    partial void OnPhoneNumberChanging(string value);
    partial void OnPhoneNumberChanged();
    partial void OnPhoneNumberConfirmedChanging(bool value);
    partial void OnPhoneNumberConfirmedChanged();
    partial void OnTwoFactorEnabledChanging(bool value);
    partial void OnTwoFactorEnabledChanged();
    partial void OnLockoutEndDateUtcChanging(System.Nullable<System.DateTime> value);
    partial void OnLockoutEndDateUtcChanged();
    partial void OnLockoutEnabledChanging(bool value);
    partial void OnLockoutEnabledChanged();
    partial void OnAccessFailedCountChanging(int value);
    partial void OnAccessFailedCountChanged();
    partial void OnUserNameChanging(string value);
    partial void OnUserNameChanged();
    partial void OnisAdminChanging(System.Nullable<int> value);
    partial void OnisAdminChanged();
    #endregion
		
		public AspNetUser()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", DbType="NVarChar(128) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string Id
		{
			get
			{
				return this._Id;
			}
			set
			{
				if ((this._Id != value))
				{
					this.OnIdChanging(value);
					this.SendPropertyChanging();
					this._Id = value;
					this.SendPropertyChanged("Id");
					this.OnIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FullName", DbType="NVarChar(MAX)")]
		public string FullName
		{
			get
			{
				return this._FullName;
			}
			set
			{
				if ((this._FullName != value))
				{
					this.OnFullNameChanging(value);
					this.SendPropertyChanging();
					this._FullName = value;
					this.SendPropertyChanged("FullName");
					this.OnFullNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Phone", DbType="NVarChar(MAX)")]
		public string Phone
		{
			get
			{
				return this._Phone;
			}
			set
			{
				if ((this._Phone != value))
				{
					this.OnPhoneChanging(value);
					this.SendPropertyChanging();
					this._Phone = value;
					this.SendPropertyChanged("Phone");
					this.OnPhoneChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Email", DbType="NVarChar(256)")]
		public string Email
		{
			get
			{
				return this._Email;
			}
			set
			{
				if ((this._Email != value))
				{
					this.OnEmailChanging(value);
					this.SendPropertyChanging();
					this._Email = value;
					this.SendPropertyChanged("Email");
					this.OnEmailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_EmailConfirmed", DbType="Bit NOT NULL")]
		public bool EmailConfirmed
		{
			get
			{
				return this._EmailConfirmed;
			}
			set
			{
				if ((this._EmailConfirmed != value))
				{
					this.OnEmailConfirmedChanging(value);
					this.SendPropertyChanging();
					this._EmailConfirmed = value;
					this.SendPropertyChanged("EmailConfirmed");
					this.OnEmailConfirmedChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PasswordHash", DbType="NVarChar(MAX)")]
		public string PasswordHash
		{
			get
			{
				return this._PasswordHash;
			}
			set
			{
				if ((this._PasswordHash != value))
				{
					this.OnPasswordHashChanging(value);
					this.SendPropertyChanging();
					this._PasswordHash = value;
					this.SendPropertyChanged("PasswordHash");
					this.OnPasswordHashChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SecurityStamp", DbType="NVarChar(MAX)")]
		public string SecurityStamp
		{
			get
			{
				return this._SecurityStamp;
			}
			set
			{
				if ((this._SecurityStamp != value))
				{
					this.OnSecurityStampChanging(value);
					this.SendPropertyChanging();
					this._SecurityStamp = value;
					this.SendPropertyChanged("SecurityStamp");
					this.OnSecurityStampChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PhoneNumber", DbType="NVarChar(MAX)")]
		public string PhoneNumber
		{
			get
			{
				return this._PhoneNumber;
			}
			set
			{
				if ((this._PhoneNumber != value))
				{
					this.OnPhoneNumberChanging(value);
					this.SendPropertyChanging();
					this._PhoneNumber = value;
					this.SendPropertyChanged("PhoneNumber");
					this.OnPhoneNumberChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PhoneNumberConfirmed", DbType="Bit NOT NULL")]
		public bool PhoneNumberConfirmed
		{
			get
			{
				return this._PhoneNumberConfirmed;
			}
			set
			{
				if ((this._PhoneNumberConfirmed != value))
				{
					this.OnPhoneNumberConfirmedChanging(value);
					this.SendPropertyChanging();
					this._PhoneNumberConfirmed = value;
					this.SendPropertyChanged("PhoneNumberConfirmed");
					this.OnPhoneNumberConfirmedChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TwoFactorEnabled", DbType="Bit NOT NULL")]
		public bool TwoFactorEnabled
		{
			get
			{
				return this._TwoFactorEnabled;
			}
			set
			{
				if ((this._TwoFactorEnabled != value))
				{
					this.OnTwoFactorEnabledChanging(value);
					this.SendPropertyChanging();
					this._TwoFactorEnabled = value;
					this.SendPropertyChanged("TwoFactorEnabled");
					this.OnTwoFactorEnabledChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LockoutEndDateUtc", DbType="DateTime")]
		public System.Nullable<System.DateTime> LockoutEndDateUtc
		{
			get
			{
				return this._LockoutEndDateUtc;
			}
			set
			{
				if ((this._LockoutEndDateUtc != value))
				{
					this.OnLockoutEndDateUtcChanging(value);
					this.SendPropertyChanging();
					this._LockoutEndDateUtc = value;
					this.SendPropertyChanged("LockoutEndDateUtc");
					this.OnLockoutEndDateUtcChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LockoutEnabled", DbType="Bit NOT NULL")]
		public bool LockoutEnabled
		{
			get
			{
				return this._LockoutEnabled;
			}
			set
			{
				if ((this._LockoutEnabled != value))
				{
					this.OnLockoutEnabledChanging(value);
					this.SendPropertyChanging();
					this._LockoutEnabled = value;
					this.SendPropertyChanged("LockoutEnabled");
					this.OnLockoutEnabledChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_AccessFailedCount", DbType="Int NOT NULL")]
		public int AccessFailedCount
		{
			get
			{
				return this._AccessFailedCount;
			}
			set
			{
				if ((this._AccessFailedCount != value))
				{
					this.OnAccessFailedCountChanging(value);
					this.SendPropertyChanging();
					this._AccessFailedCount = value;
					this.SendPropertyChanged("AccessFailedCount");
					this.OnAccessFailedCountChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserName", DbType="NVarChar(256) NOT NULL", CanBeNull=false)]
		public string UserName
		{
			get
			{
				return this._UserName;
			}
			set
			{
				if ((this._UserName != value))
				{
					this.OnUserNameChanging(value);
					this.SendPropertyChanging();
					this._UserName = value;
					this.SendPropertyChanged("UserName");
					this.OnUserNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_isAdmin", DbType="Int")]
		public System.Nullable<int> isAdmin
		{
			get
			{
				return this._isAdmin;
			}
			set
			{
				if ((this._isAdmin != value))
				{
					this.OnisAdminChanging(value);
					this.SendPropertyChanging();
					this._isAdmin = value;
					this.SendPropertyChanged("isAdmin");
					this.OnisAdminChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tb_ProductCategory")]
	public partial class tb_ProductCategory : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Id;
		
		private string _Title;
		
		private string _Description;
		
		private string _Icon;
		
		private string _SeoTitle;
		
		private string _SeoDescription;
		
		private string _SeoKeywords;
		
		private string _CreatedBy;
		
		private System.DateTime _CreatedDate;
		
		private System.DateTime _ModifiedDate;
		
		private string _Modifiedby;
		
		private string _Alias;
		
		private EntitySet<tb_Product> _tb_Products;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OnTitleChanging(string value);
    partial void OnTitleChanged();
    partial void OnDescriptionChanging(string value);
    partial void OnDescriptionChanged();
    partial void OnIconChanging(string value);
    partial void OnIconChanged();
    partial void OnSeoTitleChanging(string value);
    partial void OnSeoTitleChanged();
    partial void OnSeoDescriptionChanging(string value);
    partial void OnSeoDescriptionChanged();
    partial void OnSeoKeywordsChanging(string value);
    partial void OnSeoKeywordsChanged();
    partial void OnCreatedByChanging(string value);
    partial void OnCreatedByChanged();
    partial void OnCreatedDateChanging(System.DateTime value);
    partial void OnCreatedDateChanged();
    partial void OnModifiedDateChanging(System.DateTime value);
    partial void OnModifiedDateChanged();
    partial void OnModifiedbyChanging(string value);
    partial void OnModifiedbyChanged();
    partial void OnAliasChanging(string value);
    partial void OnAliasChanged();
    #endregion
		
		public tb_ProductCategory()
		{
			this._tb_Products = new EntitySet<tb_Product>(new Action<tb_Product>(this.attach_tb_Products), new Action<tb_Product>(this.detach_tb_Products));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int Id
		{
			get
			{
				return this._Id;
			}
			set
			{
				if ((this._Id != value))
				{
					this.OnIdChanging(value);
					this.SendPropertyChanging();
					this._Id = value;
					this.SendPropertyChanged("Id");
					this.OnIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Title", DbType="NVarChar(150) NOT NULL", CanBeNull=false)]
		public string Title
		{
			get
			{
				return this._Title;
			}
			set
			{
				if ((this._Title != value))
				{
					this.OnTitleChanging(value);
					this.SendPropertyChanging();
					this._Title = value;
					this.SendPropertyChanged("Title");
					this.OnTitleChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Description", DbType="NVarChar(MAX)")]
		public string Description
		{
			get
			{
				return this._Description;
			}
			set
			{
				if ((this._Description != value))
				{
					this.OnDescriptionChanging(value);
					this.SendPropertyChanging();
					this._Description = value;
					this.SendPropertyChanged("Description");
					this.OnDescriptionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Icon", DbType="NVarChar(250)")]
		public string Icon
		{
			get
			{
				return this._Icon;
			}
			set
			{
				if ((this._Icon != value))
				{
					this.OnIconChanging(value);
					this.SendPropertyChanging();
					this._Icon = value;
					this.SendPropertyChanged("Icon");
					this.OnIconChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SeoTitle", DbType="NVarChar(250)")]
		public string SeoTitle
		{
			get
			{
				return this._SeoTitle;
			}
			set
			{
				if ((this._SeoTitle != value))
				{
					this.OnSeoTitleChanging(value);
					this.SendPropertyChanging();
					this._SeoTitle = value;
					this.SendPropertyChanged("SeoTitle");
					this.OnSeoTitleChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SeoDescription", DbType="NVarChar(500)")]
		public string SeoDescription
		{
			get
			{
				return this._SeoDescription;
			}
			set
			{
				if ((this._SeoDescription != value))
				{
					this.OnSeoDescriptionChanging(value);
					this.SendPropertyChanging();
					this._SeoDescription = value;
					this.SendPropertyChanged("SeoDescription");
					this.OnSeoDescriptionChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SeoKeywords", DbType="NVarChar(250)")]
		public string SeoKeywords
		{
			get
			{
				return this._SeoKeywords;
			}
			set
			{
				if ((this._SeoKeywords != value))
				{
					this.OnSeoKeywordsChanging(value);
					this.SendPropertyChanging();
					this._SeoKeywords = value;
					this.SendPropertyChanged("SeoKeywords");
					this.OnSeoKeywordsChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CreatedBy", DbType="NVarChar(MAX)")]
		public string CreatedBy
		{
			get
			{
				return this._CreatedBy;
			}
			set
			{
				if ((this._CreatedBy != value))
				{
					this.OnCreatedByChanging(value);
					this.SendPropertyChanging();
					this._CreatedBy = value;
					this.SendPropertyChanged("CreatedBy");
					this.OnCreatedByChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CreatedDate", DbType="DateTime NOT NULL")]
		public System.DateTime CreatedDate
		{
			get
			{
				return this._CreatedDate;
			}
			set
			{
				if ((this._CreatedDate != value))
				{
					this.OnCreatedDateChanging(value);
					this.SendPropertyChanging();
					this._CreatedDate = value;
					this.SendPropertyChanged("CreatedDate");
					this.OnCreatedDateChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ModifiedDate", DbType="DateTime NOT NULL")]
		public System.DateTime ModifiedDate
		{
			get
			{
				return this._ModifiedDate;
			}
			set
			{
				if ((this._ModifiedDate != value))
				{
					this.OnModifiedDateChanging(value);
					this.SendPropertyChanging();
					this._ModifiedDate = value;
					this.SendPropertyChanged("ModifiedDate");
					this.OnModifiedDateChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Modifiedby", DbType="NVarChar(MAX)")]
		public string Modifiedby
		{
			get
			{
				return this._Modifiedby;
			}
			set
			{
				if ((this._Modifiedby != value))
				{
					this.OnModifiedbyChanging(value);
					this.SendPropertyChanging();
					this._Modifiedby = value;
					this.SendPropertyChanged("Modifiedby");
					this.OnModifiedbyChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Alias", DbType="NVarChar(150) NOT NULL", CanBeNull=false)]
		public string Alias
		{
			get
			{
				return this._Alias;
			}
			set
			{
				if ((this._Alias != value))
				{
					this.OnAliasChanging(value);
					this.SendPropertyChanging();
					this._Alias = value;
					this.SendPropertyChanged("Alias");
					this.OnAliasChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="tb_ProductCategory_tb_Product", Storage="_tb_Products", ThisKey="Id", OtherKey="ProductCategoryId")]
		public EntitySet<tb_Product> tb_Products
		{
			get
			{
				return this._tb_Products;
			}
			set
			{
				this._tb_Products.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_tb_Products(tb_Product entity)
		{
			this.SendPropertyChanging();
			entity.tb_ProductCategory = this;
		}
		
		private void detach_tb_Products(tb_Product entity)
		{
			this.SendPropertyChanging();
			entity.tb_ProductCategory = null;
		}
	}
}
#pragma warning restore 1591
