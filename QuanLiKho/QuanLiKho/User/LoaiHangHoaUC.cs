using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLiKho.Function;

namespace QuanLiKho.User
{
    public partial class LoaiHangHoaUC : UserControl
    {
        LoaiHangHoa da;
        public LoaiHangHoaUC()
        {
            InitializeComponent();
            da = new LoaiHangHoa();
        }

        private void LoaiHangHoa_Load(object sender, EventArgs e)
        {
            dgView.DataSource = da.GetAllHH();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (da.ThemHangHoa(MaHH.Text, textBox1.Text,  textBox2.Text))
            {
                MessageBox.Show("Thêm thành công");
                MaHH.Text = "";
                textBox1.Text = "";
                textBox2.Text = "";
                dgView.DataSource = da.GetAllHH();
            }
            else
            {
                MessageBox.Show("Thêm không thành công");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (da.SuaHangHoa(MaHH.Text, textBox1.Text, textBox2.Text))
            {
                MessageBox.Show("Sua thành công");
                dgView.DataSource = da.GetAllHH();
            }
            else
            {
                MessageBox.Show("Sua không thành công");
            }
        }

        private void dgView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex == -1)
            {
                return;
            }
            
            textBox1.Text = dgView.Rows[e.RowIndex].Cells[1].Value.ToString();
            MaHH.Text = dgView.Rows[e.RowIndex].Cells[0].Value.ToString(); ;
            textBox2.Text = dgView.Rows[e.RowIndex].Cells[2].Value.ToString();

        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (da.XoaPhieuNhap(MaHH.Text))
            {
                MessageBox.Show("Xoa Thanh công");
                MaHH.Text = "";
                textBox1.Text = "";
                textBox2.Text = "";
                dgView.DataSource = da.GetAllHH();
            }
            else
            {
                MessageBox.Show("Xóa không thành công");
            }
        }
    }
}
