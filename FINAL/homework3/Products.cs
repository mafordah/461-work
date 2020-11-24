using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace homework3
{
    public class Products
    {
        public DataSet getAllProducts()
        {
            Database database = new Database();
            string query = "getAllProducts";
            DataSet dataSet = database.getQueryWithoutParameters(query);

            return dataSet;
        }

        public DataSet getProductsByType(string productType)
        {
            Database database = new Database();
            string query = "getProductsByType";
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = new SqlParameter("productType", productType);
            DataSet dataSet = database.getQueryWithParameters(query, parameters);

            return dataSet;
        }
    }
}