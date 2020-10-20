using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace homework3
{
    public class Events
    {

        public DataSet getPeople()
        {

            Database myDatabase = new Database();
            string myQuery = "getPeople";
            DataSet myDataSet = myDatabase.getQueryWithoutParameters(myQuery);

            return myDataSet;

        }

        public DataSet getPerson(int personalID)
        {

            Database myDatabase = new Database();
            string myQuery = "getPerson";
            SqlParameter[] myParameters = new SqlParameter[1];
            myParameters[0] = new SqlParameter("personalID", personalID);
            DataSet myDataSet = myDatabase.getQueryWithParameters(myQuery, myParameters);

            return myDataSet;

        }


    }
}