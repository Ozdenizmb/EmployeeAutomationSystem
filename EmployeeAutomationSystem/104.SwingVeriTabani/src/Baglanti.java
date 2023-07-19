
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Baglanti {
    
    // Burada cekilen veritabani bilgileri kullanarak, veritabanina baglanti kurulmaya calisilir.
    
    public Connection con = null;
    
    public Baglanti() {
        
        // jdbc:mysql://localhost:3306/db_sirket
        String url = "jdbc:mysql://" + Database.host + ":" + Database.port + "/" + Database.dbname +
                    "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
        } catch (ClassNotFoundException ex) {
            ex.toString();
        }
        
        try {
            
            con = DriverManager.getConnection(url, Database.username, Database.password);
            
        } catch (SQLException ex) {
            ex.toString();
        }
        
    }
    
}
