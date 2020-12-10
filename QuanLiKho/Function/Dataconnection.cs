using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace QuanLiKho.Function
{
    class Dataconnection
    {
        public SqlConnection GetSqlConnection()
        {
            return new SqlConnection("Data Source=DESKTOP-M2D74G7;Initial Catalog=quanlikhoMTA;Integrated Security=True");
        }
    }
}
