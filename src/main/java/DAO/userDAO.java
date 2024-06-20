package DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Project.ConnectionProvider;
import user.ServiceDetails;
import user.userDetails;

public class userDAO {
	private Connection con;

	public userDAO(Connection con) {
		super();
		this.con = con;
	}

	public boolean adduser(userDetails us) {
		boolean f = false;

		try {
			// The query should specify the columns explicitly
			String status = "pending";
			String query = "INSERT INTO register (fname, lname, contact, gender, email, password, pid, img,status) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, us.getFname());
			ps.setString(2, us.getLname());
			ps.setString(3, us.getContact());
			ps.setString(4, us.getGender());
			ps.setString(5, us.getEmail());
			ps.setString(6, us.getPassword());
			ps.setString(7, us.getPid());

			// Set the image input stream using setBinaryStream method
			// Assuming the img column in the database is of BLOB type
			InputStream inputStream = us.getInputStream();
			ps.setBinaryStream(8, inputStream);
			ps.setString(9, status);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public userDetails loginUser(userDetails us) {
		userDetails user = null;
		try {
			PreparedStatement ps = con.prepareStatement("SELECT * FROM register WHERE pid=? AND password=?");
			ps.setString(1, us.getPid());
			ps.setString(2, us.getPassword());
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				user = new userDetails();
				user.setFname(rs.getString(1));
				user.setLname(rs.getString(2));
				user.setContact(rs.getString(3));
				user.setGender(rs.getString(4));
				user.setEmail(rs.getString(5));
				user.setPassword(rs.getString(6));
				user.setPid(rs.getString(7));
				user.setInputStream(rs.getBinaryStream(8));

				// Note: Retrieving image data from the database should be handled appropriately
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	public boolean updateuser(String id, String fname, String lname, String contact, String email, InputStream img) {
		boolean f = false;
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = ConnectionProvider.getCon();
			String query = "UPDATE register SET fname=?, lname=?, contact=?, email=?, img=? WHERE pid=?";
			ps = con.prepareStatement(query);
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, contact);
			ps.setString(4, email);

			// Set the image input stream using setBinaryStream method
			ps.setBinaryStream(5, img);
			ps.setString(6, id);

			// Debugging: Print query values
			System.out.println("Executing query with values: fname=" + fname + ", lname=" + lname + ", contact="
					+ contact + ", email=" + email + ", id=" + id);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return f;
	}

}
