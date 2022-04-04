package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class device_infoDAO {
	PreparedStatement psmt = null;
	Connection conn = null;
	ResultSet rs = null;
	int cnt = 0;
	
	// DB���� �޼ҵ�
		public void dbconn() {
			try {
				System.out.println("�׽�Ʈ");
				Class.forName("oracle.jdbc.driver.OracleDriver");
				String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
				String dbid = "campus_b_0310_4";
				String dbpw = "smhrd4";
				conn = DriverManager.getConnection(url, dbid, dbpw);
				System.out.println("db���� ����");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("db���� ����");
			}
		}
	
	// DB���� ���� �޼ҵ�
		public void dbclose() {
			try {
				if (rs != null)
					rs.close();
				if (psmt != null)
					psmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	
	// device 1�� ���� �޼ҵ�
		public void insertUsage1(device_infoDTO dto) {
			
			String sql = "INSERT INTO tbl_device\n"
					+ "    (mb_portserial,\n"
					+ "		dv_name, \n"
					+ "    dv_usage, \n"
					+ "    dv_date) \n"
					+ "VALUES\n"
					+ "    (?,\n"
					+ "		1, \n"
					+ "    ?, \n"
					+ "    sysdate) \n";

					
			try {
				psmt = conn.prepareStatement(sql);
				
				psmt.setString(1, dto.getMb_portserial());
				psmt.setDouble(2, dto.getDv_usage1());

						
				psmt.executeUpdate();
						
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		// device 2�� ���� �޼ҵ�
				public void insertUsage2(device_infoDTO dto) {
					
					String sql = "INSERT INTO tbl_device\n"
							+ "    (mb_portserial,\n"
							+ "		dv_name, \n"
							+ "    dv_usage, \n"
							+ "    dv_date) \n"
							+ "VALUES\n"
							+ "    (?,\n"
							+ "		2, \n"
							+ "    ?, \n"
							+ "    sysdate) \n";

							
					try {
						psmt = conn.prepareStatement(sql);
						
						psmt.setString(1, dto.getMb_portserial());
						psmt.setDouble(2, dto.getDv_usage2());

								
						psmt.executeUpdate();
								
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
				
				
				// device 3�� ���� �޼ҵ�
				public void insertUsage3(device_infoDTO dto) {
					
					String sql = "INSERT INTO tbl_device\n"
							+ "    (mb_portserial,\n"
							+ "		dv_name, \n"
							+ "    dv_usage, \n"
							+ "    dv_date) \n"
							+ "VALUES\n"
							+ "    (?,\n"
							+ "		3, \n"
							+ "    ?, \n"
							+ "    sysdate) \n";

							
					try {
						psmt = conn.prepareStatement(sql);
						
						psmt.setString(1, dto.getMb_portserial());
						psmt.setDouble(2, dto.getDv_usage3());

								
						psmt.executeUpdate();
								
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
	
}