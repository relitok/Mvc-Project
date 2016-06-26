using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcProject.Models
{
    public class Products
    {
        private string _urunAdi;

        public string urunAdi
        {
            get { return _urunAdi; }
            set { _urunAdi = value; }
        }

        private string _stok;

        public string stok
        {
            get { return _stok; }
            set { _stok = value; }
        }

        private string _fiyat;

        public string fiyat
        {
            get { return _fiyat; }
            set { _fiyat = value; }
        }

        private int _urunId;
        public int urunId
        {
            get { return _urunId; }
            set { _urunId = value; }
        }

    }
}