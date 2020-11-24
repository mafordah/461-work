using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace homework3
{
    public class Users
    {
        public DataSet checkUser(string email, string PWD)
        {
            Database database = new Database();
            string query = "checkUser";
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = new SqlParameter("email", email);
            parameters[1] = new SqlParameter("PWD", PWD);
            DataSet dataSet = database.getQueryWithParameters(query, parameters);

            return dataSet;
        }

        public DataSet getSingleUser(int userID)
        {
            Database database = new Database();
            string query = "getSingleUser";
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = new SqlParameter("userID", userID);
            DataSet dataSet = database.getQueryWithParameters(query, parameters);

            return dataSet;
        }

        public DataSet addUser(string company, string firstName, string lastName, string email, string PWD, string subscribed, string admin)
        {
            Database database = new Database();
            string query = "addUser";
            SqlParameter[] parameters = new SqlParameter[7];
            parameters[0] = new SqlParameter("company", company);
            parameters[1] = new SqlParameter("firstName", firstName);
            parameters[2] = new SqlParameter("lastName", lastName);
            parameters[3] = new SqlParameter("email", email);
            parameters[4] = new SqlParameter("PWD", PWD);
            parameters[5] = new SqlParameter("subscribed", subscribed);
            parameters[6] = new SqlParameter("admin", admin);
            DataSet dataSet = database.getQueryWithParameters(query, parameters);

            return dataSet;
        }

        public DataSet addPhone(int userID, string phone)
        {
            Database database = new Database();
            string query = "addPhone";
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = new SqlParameter("userID", userID);
            parameters[1] = new SqlParameter("phone", phone);
            DataSet dataSet = database.getQueryWithParameters(query, parameters);

            return dataSet;
        }

        public DataSet addAddress(int userID, string addressType, string address1, string address2, string city, int stateID, string zip)
        {
            Database database = new Database();
            string query = "addAddress";
            SqlParameter[] parameters = new SqlParameter[7];
            parameters[0] = new SqlParameter("userID", userID);
            parameters[1] = new SqlParameter("addressType", addressType);
            parameters[2] = new SqlParameter("address1", address1);
            parameters[3] = new SqlParameter("address2", address2);
            parameters[4] = new SqlParameter("city", city);
            parameters[5] = new SqlParameter("stateID", stateID);
            parameters[6] = new SqlParameter("zip", zip);
            DataSet dataSet = database.getQueryWithParameters(query, parameters);

            return dataSet;
        }

        public DataSet getAddress(int userID, string addressType)
        {
            Database database = new Database();
            string query = "getAddress";
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = new SqlParameter("userID", userID);
            parameters[1] = new SqlParameter("addressType", addressType);
            DataSet dataSet = database.getQueryWithParameters(query, parameters);

            return dataSet;
        }
    }
}