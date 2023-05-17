package Report;

import com.data.app.Log;
import com.data.db.Database;
import com.manage.Waktu;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

import net.sf.jasperreports.view.*;

public class cetak extends javax.swing.JFrame {
    Waktu waktu = new Waktu();
    Log log = new Log();
    Database db = new Database();

    /**
     * Creates new form cetak
     */
    public cetak() {
        log.createLog();
        db.startConnection();
        initComponents();
    }
    private void cetakStrukPenjualan(){
        try {
            JasperDesign jasperDesign = JRXmlLoader.load("src\\Report\\strukPenjualan.jrxml");
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
            Map parameters = new HashMap();
            parameters.put("id_tr_jual","TRJ0001");
            JasperPrint jPrint = JasperFillManager.fillReport(jasperReport, parameters, db.conn);
            JasperViewer.viewReport(jPrint);
        } catch (JRException ex) {
            Logger.getLogger(cetak.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    private void cetakNotaPenjualan(){
        try {
            JasperDesign jasperDesign = JRXmlLoader.load("src\\Report\\notaPenjualan.jrxml");
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
            Map parameters = new HashMap();
            parameters.put("id_tr_jual","TRJ0001");
            JasperPrint jPrint = JasperFillManager.fillReport(jasperReport, parameters, db.conn);
            JasperViewer.viewReport(jPrint);
        } catch (JRException ex) {
            Logger.getLogger(cetak.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private void cetakNotaPembelian(){
        try {
            JasperDesign jasperDesign = JRXmlLoader.load("src\\Report\\notaPembelian.jrxml");
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
            Map parameters = new HashMap();
            parameters.put("id_tr_beli","TRB0001");
            JasperPrint jPrint = JasperFillManager.fillReport(jasperReport, parameters, db.conn);
            JasperViewer.viewReport(jPrint);
        } catch (JRException ex) {
            Logger.getLogger(cetak.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private void cetakLaporanPemasukan(int opsi){
        try {
            ProcessBuilder processBuilder = new ProcessBuilder("path/to/jasperview.exe");
            Process jasperProcess = processBuilder.start();
            JasperDesign jasperDesign = JRXmlLoader.load("src\\Report\\LaporanPengeluaran.jrxml");
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
            Map parameters = new HashMap();
            switch(opsi){
                case 1:
                break;
                case 2:
                    parameters.put("tanggal","2023-05-10");
                break;
                case 3:
                    parameters.put("bulan","05");
                    parameters.put("tahun","2023");
                break;
                case 4:
                    parameters.put("tanggalAwal","2023-05-05");
                    parameters.put("tanggalAwal","2023-05-10");
                break;
            }
            JasperPrint jPrint = JasperFillManager.fillReport(jasperReport, parameters, db.conn);
            JasperViewer.viewReport(jPrint);
        } catch (JRException ex) {
            Logger.getLogger(cetak.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(cetak.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    private void cetakLaporanPengeluaran(int opsi){
        try {
            JasperDesign jasperDesign = JRXmlLoader.load("src\\Report\\laporanPengeluaran.jrxml");
            JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
            Map parameters = new HashMap();
            switch(opsi){
                case 1:
                break;
                case 2:
                    parameters.put("tanggal","2023-05-10");
                break;
                case 3:
                    parameters.put("bulan","05");
                    parameters.put("tahun","2023");
                break;
                case 4:
                    parameters.put("tanggalAwal","2023-05-05");
                    parameters.put("tanggalAwal","2023-05-10");
                break;
            }
            JasperPrint jPrint = JasperFillManager.fillReport(jasperReport, parameters, db.conn);
            JasperViewer.viewReport(jPrint);
        } catch (JRException ex) {
            Logger.getLogger(cetak.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 100, Short.MAX_VALUE)
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jButton1.setText("cetak");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(94, Short.MAX_VALUE)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 89, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(74, 74, 74))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(34, 34, 34)
                .addComponent(jButton1)
                .addContainerGap(41, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(131, 131, 131)
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(39, 39, 39)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(161, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        this.cetakLaporanPemasukan(1);

    }//GEN-LAST:event_jButton1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(cetak.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(cetak.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(cetak.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(cetak.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new cetak().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    // End of variables declaration//GEN-END:variables
}
