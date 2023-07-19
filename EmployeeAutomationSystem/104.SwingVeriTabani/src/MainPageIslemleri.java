
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class MainPageIslemleri {
    
    Baglanti baglanti = new Baglanti();
    private Statement statement = null;
    
    // Veritabanindan verileri cekip ResultSet olarak donduruyoruz.
    public ResultSet veriCek() {
        
        ResultSet veriler = null;
        
        String sorgu = "Select * from tbl_calisanlar";
        
        try {
            
            statement = baglanti.con.createStatement();
            
            veriler = statement.executeQuery(sorgu);
            
        } catch (SQLException ex) {
            Logger.getLogger(MainPageIslemleri.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return veriler;
        
    }
    
    // Veritabanına Veri Ekleme Islemi yapıyor.
    public void veriEkle(String ad, String soyad, String departman, int maas) {
        
        String sorgu = "Insert into tbl_calisanlar (ad, soyad, departman, maas) " + 
                       "values ('" + ad + "','" + soyad + "','" + departman + "','" + maas + "')";
        
        try {
            
            statement = baglanti.con.createStatement();
            
            statement.executeUpdate(sorgu);
            
        } catch (SQLException ex) {
            Logger.getLogger(MainPageIslemleri.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
    // Veritabanındaki Verileri Gunceller.
    public void veriGuncelle(int id, String ad, String soyad, String departman, int maas) {
        
        String sorgu = "Update tbl_calisanlar set ad='" + ad + "', soyad='" + soyad + "', departman='" + departman +
                       "', maas=" + maas + " where id=" + id;
        
        try {
            
            statement = baglanti.con.createStatement();
            
            statement.executeUpdate(sorgu);
            
        } catch (SQLException ex) {
            Logger.getLogger(MainPageIslemleri.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    // Veritabanındaki Verileri Günceller.
    public void veriSil(int id) {
        
        String sorgu = "Delete from tbl_calisanlar where id=" + id;
        
        try {
            
            statement = baglanti.con.createStatement();
            
            statement.executeUpdate(sorgu);
            
        } catch (SQLException ex) {
            Logger.getLogger(MainPageIslemleri.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
