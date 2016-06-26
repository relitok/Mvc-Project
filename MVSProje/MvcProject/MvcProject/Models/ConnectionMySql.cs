using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;


namespace MvcProject.Models
{
    public class ConnectionMySql
    {
        
        List<Products> pList = new List<Products>();

        private MySqlConnection connection = new MySqlConnection("Server=localhost; Database=mvcdb; Uid=rdp; Pwd='123rdp'; Encrypt=false; AllowUserVariables=True; UseCompression=True");

        private string sql = "select * from urunler";
           
        private void connect()
        {

            try
            {

                connection.Open();

                if (connection.State != System.Data.ConnectionState.Closed)
                {
                    Console.WriteLine("Bağlantı başarılı");
                }
                else
                {
                    Console.WriteLine("Bağlantı başarız !");
                }

            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }

        }

       
        public List<Products> getProducts(){

            connect();

            MySqlCommand command = new MySqlCommand(sql,connection);
            MySqlDataReader read = command.ExecuteReader();

            while(read.Read()){

                Products product = new Products();
                product.urunAdi = read["Urun_Adi"].ToString();
                product.stok = read["Stok"].ToString();
                product.fiyat = read["Fiyat"].ToString();
                product.urunId = Convert.ToInt16(read["Urun_Id"]);
                
               
                pList.Add(product);

            }

            return pList;
        }


    }
}