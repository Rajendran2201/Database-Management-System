import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class FetchEmployeeData {
    public static void main(String[] args) {

        String jdbcURL = "jdbc:mysql://localhost:3306/Employee_Data"; 
        String username = "root";
        String password = "raj2201"; 

        String query = "SELECT * FROM Employee";

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcURL, username, password);
            System.out.println("Connected to the database successfully!");
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);

            System.out.println("Employee Details:");
            System.out.println("ID\tName\t\tDepartment\tSalary");
            System.out.println("----------------------------------------------");

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String department = rs.getString("department");
                double salary = rs.getDouble("salary");

                System.out.println(id + "\t" + name + "\t\t" + department + "\t\t" + salary);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
