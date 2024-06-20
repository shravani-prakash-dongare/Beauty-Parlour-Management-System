package DAO;

import java.io.InputStream;
import java.sql.*;
import user.ServiceDetails;

public class ServiceDAO {

	private Connection con;

    public ServiceDAO(Connection con) {
        super();
        this.con = con;
    }

    public boolean addservice(ServiceDetails sd) {
        boolean f = false;

        try {
            // The query should specify the columns explicitly
            String query = "INSERT INTO services (sname, img, cost) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
          
            ps.setString(1,sd.getName());
            
            InputStream inputStream = sd.getImagePath();
            ps.setBinaryStream(2, inputStream);
            
            ps.setString(3,sd.getCost());
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }
}
