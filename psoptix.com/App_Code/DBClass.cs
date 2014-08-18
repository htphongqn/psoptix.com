using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Services;

/**
* \brief select, insert, update, delete database sql server
*/
public class DBClass : BaseServ
{
    private int result;
    public DBClass()
    {
        this.result = 0;
    }

    #region sqlHelper
    public static SqlConnection GetDefaultConnection()
    {
        SqlConnection connection = null;
        connection = new SqlConnection(dbConnString);
        return connection;
    }
    public DataSet ExecuteQuery(string query)
    {
        SqlCommand cmd = new SqlCommand(query);
        return this.ExecuteQuery(cmd);
    }

    public DataSet ExecuteQuery(SqlCommand cmd)
    {
        DataSet ds = new DataSet();
        try
        {

            using (SqlConnection conn = GetDefaultConnection())
            {

                if (conn.State != ConnectionState.Open)
                    conn.Open();

                if (conn.State == ConnectionState.Open)
                {
                    cmd.Connection = conn;
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);

                    dataAdapter.Fill(ds);


                }

                conn.Close();
            }
        }

        catch
        {
            ds = null;

        }
        return ds;

        //throw new Exception("SQLDatabase not ready.");
    }

    public object ExecuteScalar(string query)
    {
        SqlCommand cmd = new SqlCommand(query);
        return this.ExecuteScalar(cmd);
    }

    public int ExecuteInt(string query)
    {
        SqlCommand cmd = new SqlCommand(query);
        return this.ExecuteInt(cmd);
    }

    public object ExecuteScalar(SqlCommand cmd)
    {
        object obj = null;
        using (SqlConnection conn = GetDefaultConnection())
        {

            if (conn.State != ConnectionState.Open)
                conn.Open();

            if (conn.State == ConnectionState.Open)
            {
                cmd.Connection = conn;
                obj = cmd.ExecuteScalar();
            }

            conn.Close();
        }

        return obj;
    }

    public int ExecuteInt(SqlCommand cmd)
    {
        int result = -1;
        using (SqlConnection conn = GetDefaultConnection())
        {

            if (conn.State != ConnectionState.Open)
                conn.Open();

            if (conn.State == ConnectionState.Open)
            {
                cmd.Connection = conn;
                result = cmd.ExecuteNonQuery();
            }

            conn.Close();
        }
        return result;
    }

    #endregion
}