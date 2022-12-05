package to.msn.wings.chap6;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Address implements Serializable {
	private int id;
	private String name;
	private String address;
	private String tel;
	private String email;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public static ArrayList<Address> getInfos() {
		ArrayList<Address> list = new ArrayList<Address>();
		Connection cn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String url = "jdbc:mysql://localhost/selfjsp";
		String usr = "root";
		String pw = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection(url, usr, pw);
			ps = cn.prepareStatement("SELECT * FROM address ORDER BY id");
			rs = ps.executeQuery();
			//結果セットを順に読み込み、その内容をAddressオブジェクトにセット
			while(rs.next()){
				Address addr = new Address();
				addr.setId(rs.getInt("id"));
				addr.setName(rs.getString("name"));
				addr.setAddress(rs.getString("address"));
				addr.setTel(rs.getString("tel"));
				addr.setEmail(rs.getString("email"));
				//Addressオブジェクトを配列に追加
				list.add(addr);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) {rs.close();}
				if(ps != null) {ps.close();}
				if(cn != null) {cn.close();}
			}catch(Exception e) {}
		}
		return list;
	}

}
