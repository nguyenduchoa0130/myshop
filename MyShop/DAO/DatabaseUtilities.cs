using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using Microsoft.Data.SqlClient;

namespace MyShop.DAO
{

    // TODO: bắt lỗi exception khi không kết nối DB được => Xử lý App như thế nào?
    class DatabaseUtilitites
    {
        private string _server;
        private string _databaseName;
        private string _user;
        private string _password;

        private static DatabaseUtilitites _instance = null;
        SqlConnection _connection;
        public static DatabaseUtilitites getInstance()
        {
            if (_instance == null)
            {
                _instance = new DatabaseUtilitites();
            }
            return _instance;
        }

        public DatabaseUtilitites() {
            _server = "DESKTOP-4S4FMFG\\DUCHOA";
            _databaseName = "MyShopDB";
            _user = "sa";
            _password = "1234";
            _connection = null;

            string connectionString = $"""Data Source={_server};Initial Catalog={_databaseName};User ID={_user};Password={_password};Trust Server Certificate=True""";

            _connection = new SqlConnection(connectionString);

            try
            {
                _connection.Open();

            }
            catch (Exception ex)
            {
                MessageBox.Show(
                    $"Cannot connect to database. Reason: {ex.Message}");
            }

            _instance = this;
        }


        public SqlConnection connection { get { return _connection; } }
    }
}
