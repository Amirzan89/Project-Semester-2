package com.window.panels;

import com.window.panels.DetailLaporanBeli;
import com.window.panels.DetailLaporanJual;
import com.media.Gambar;
import com.manage.ManageTransaksiBeli;
import com.manage.ManageTransaksiJual;
import com.manage.Message;
import com.manage.Text;
import com.manage.Waktu;
import com.window.MainWindow;
import java.awt.Cursor;
import java.awt.event.KeyEvent;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.JPanel;
/**
 *
 * @author Amirzan Fikri
 */
public class RiwayatTransaksi extends javax.swing.JPanel {

    private final ManageTransaksiBeli trb = new ManageTransaksiBeli();
    private final ManageTransaksiJual trj = new ManageTransaksiJual();
    private final Text text = new Text();
    private String idTr = "", keyword = "";
    private boolean pembelian = false;
    private final DateFormat tanggalMilis = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
    private final DateFormat tanggalFull = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss ");
    private final DateFormat date = new SimpleDateFormat("dd-MM-yyyy");
    private final DateFormat date1 = new SimpleDateFormat("yyyy-MM-dd");
    private final DateFormat time = new SimpleDateFormat("hh:mm:ss");
    private final DateFormat timeMillis = new SimpleDateFormat("ss.SSS:mm:hh");
    private int hari, hari1, bulan, bulan1, tahun, tahun1, bulanan, tahunan;
    private Date tHarian1, tHarian2, tHarian3, tHarian2_old, tHarian3_old;
    private final Waktu waktu = new Waktu();
    
    public RiwayatTransaksi(boolean pembelian) throws ParseException {
        initComponents();
        this.btnKembali.setUI(new javax.swing.plaf.basic.BasicButtonUI());
        this.btnLihat.setUI(new javax.swing.plaf.basic.BasicButtonUI());
        this.tabelData.setRowHeight(29);
        this.tabelData.getTableHeader().setBackground(new java.awt.Color(255, 255, 255));
        this.tabelData.getTableHeader().setForeground(new java.awt.Color(0, 0, 0));
        
        if (pembelian == true) {
            this.pembelian = true;
            ImageIcon icon1 = new ImageIcon("src\\resources\\image\\gambar\\app-riwayatPembelian.png");
            this.background.setIcon(icon1);
            updateTabel();
        } else {
            this.pembelian = false;
            ImageIcon icon1 = new ImageIcon("src\\resources\\image\\gambar\\app-riwayatPenjualan.png");
            this.background.setIcon(icon1);
            updateTabel();
        }
    }
    private void closeKoneksi(){
        trb.closeConnection();
        trj.closeConnection();
    }
    private Object[][] getDataPenjualan() throws ParseException {
        try {
            Object[][] obj;
            Date tanggalData = new Date();
            int rows = 0, hari_1 = 0, bulan_1 = -1, tahun_1 = 0;
            String tanggalPenuh, tanggalPenuh1;
                String sql = "SELECT id_tr_jual, id_karyawan, nama_karyawan, tanggal FROM transaksi_jual "+this.keyword+" ORDER BY id_tr_jual DESC ";
                obj = new Object[trj.getJumlahData("transaksi_jual",this.keyword)][7];
                trj.res = trj.stat.executeQuery(sql);
                while (trj.res.next()) {
                    obj[rows][0] = trj.res.getString("id_tr_jual");
                    obj[rows][1] = trj.res.getString("id_karyawan");
                    obj[rows][2] = trj.res.getString("nama_karyawan");
                    tanggalPenuh = trj.res.getString("tanggal");
                    tanggalData = tanggalMilis.parse(tanggalPenuh);
                    tanggalPenuh1 = date.format(tanggalData);
                    hari_1 = Integer.parseInt(tanggalPenuh1.substring(0, 2));
                    bulan_1 = Integer.parseInt(tanggalPenuh1.substring(3, 5));
                    tahun_1 = Integer.parseInt(tanggalPenuh1.substring(6));
                    obj[rows][3] = hari_1 + "-" + this.waktu.getNamaBulan(bulan_1 - 1) + "-" + tahun_1;
                    obj[rows][4] = tanggalPenuh.substring(11, 19);
                    rows++;
                }
                return obj;
        } catch (SQLException ex) {
            ex.printStackTrace();
            Message.showException(this, "Terjadi kesalahan saat mengambil data dari database\n" + ex.getMessage(), ex, true);
        }
        return null;
    }
    private Object[][] getDataPembelian() throws ParseException {
        try {
            Object[][] obj;
            Date tanggalData = new Date();
            int rows = 0, hari_1 = 0, bulan_1 = -1, tahun_1 = 0;
            String tanggalPenuh, tanggalPenuh1;
            String sql = "SELECT id_tr_beli, id_karyawan, nama_karyawan, tanggal FROM transaksi_beli "+this.keyword+" ORDER BY id_tr_beli DESC ";
            obj = new Object[trb.getJumlahData("transaksi_beli",this.keyword)][5];
            // mengeksekusi query
            trb.res = trb.stat.executeQuery(sql);
            // mendapatkan semua data yang ada didalam tabel
            while (trb.res.next()) {
                // menyimpan data dari tabel ke object
                obj[rows][0] = trb.res.getString("id_tr_beli");
                obj[rows][1] = trb.res.getString("id_karyawan");
                obj[rows][2] = trb.res.getString("nama_karyawan");
                tanggalPenuh = trb.res.getString("tanggal");
                tanggalData = tanggalMilis.parse(tanggalPenuh);
                tanggalPenuh1 = date.format(tanggalData);
                hari_1 = Integer.parseInt(tanggalPenuh1.substring(0, 2));
                bulan_1 = Integer.parseInt(tanggalPenuh1.substring(3, 5));
                tahun_1 = Integer.parseInt(tanggalPenuh1.substring(6));
                obj[rows][3] = hari_1 + "-" + this.waktu.getNamaBulan(bulan_1 - 1) + "-" + tahun_1;
                obj[rows][4] = tanggalPenuh.substring(11, 19);
                rows++;
            }
            return obj;
        } catch (SQLException ex) {
            ex.printStackTrace();
            Message.showException(this, "Terjadi kesalahan saat mengambil data dari database\n" + ex.getMessage(), ex, true);
        }
        return null;
    }
    private void updateTabel() throws ParseException {
        if(this.pembelian == true){
            this.tabelData.setModel(new javax.swing.table.DefaultTableModel(getDataPembelian(),new String[]{
                        "ID Transaksi Beli", "ID Karyawan", "Nama Karyawan", "Tanggal", "Waktu"
                    }) {
                boolean[] canEdit = new boolean[]{
                   false, false, false, false, false
                };
                @Override
                public boolean isCellEditable(int rowIndex, int columnIndex) {
                    return canEdit[columnIndex];
                }
            });
        } else {
            this.tabelData.setModel(new javax.swing.table.DefaultTableModel(getDataPenjualan(), new String[]{
                        "ID Transaksi Jual", "ID Karyawan", "Nama Karyawan", "Tanggal", "Waktu"
                    }) {
                boolean[] canEdit = new boolean[]{ false, false, false, false, false};
                @Override
                public boolean isCellEditable(int rowIndex, int columnIndex) {
                    return canEdit[columnIndex];
                }
            });
        }
    }
    private void redirect(JPanel pnl) {
        this.setCursor(new Cursor(Cursor.WAIT_CURSOR));
//        MainWindow.setTitle("Data");
        // menghapus panel lama
        MainWindow.pnlMenu.removeAll();
        MainWindow.pnlMenu.repaint();
        MainWindow.pnlMenu.revalidate();
//        pnlMenu.revalidate();
        this.closeKoneksi();
        // menambahkan panel baru
        MainWindow.pnlMenu.add(pnl);
        MainWindow.pnlMenu.validate();
        this.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btnKembali = new javax.swing.JButton();
        btnLihat = new javax.swing.JButton();
        lpSemua = new javax.swing.JScrollPane();
        tabelData = new javax.swing.JTable();
        inpCari = new javax.swing.JTextField();
        background = new javax.swing.JLabel();

        setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnKembali.setBackground(new java.awt.Color(220, 41, 41));
        btnKembali.setForeground(new java.awt.Color(255, 255, 255));
        btnKembali.setIcon(new javax.swing.ImageIcon(getClass().getResource("/resources/image/gambar_icon/btn-kembali-075.png"))); // NOI18N
        btnKembali.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        btnKembali.setMaximumSize(new java.awt.Dimension(130, 28));
        btnKembali.setMinimumSize(new java.awt.Dimension(130, 28));
        btnKembali.setOpaque(false);
        btnKembali.setPreferredSize(new java.awt.Dimension(130, 28));
        btnKembali.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnKembaliMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnKembaliMouseExited(evt);
            }
        });
        btnKembali.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnKembaliActionPerformed(evt);
            }
        });
        add(btnKembali, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 631, 154, 50));

        btnLihat.setBackground(new java.awt.Color(220, 41, 41));
        btnLihat.setForeground(new java.awt.Color(255, 255, 255));
        btnLihat.setIcon(new javax.swing.ImageIcon(getClass().getResource("/resources/image/gambar_icon/btn-lihat-075.png"))); // NOI18N
        btnLihat.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        btnLihat.setMaximumSize(new java.awt.Dimension(130, 28));
        btnLihat.setMinimumSize(new java.awt.Dimension(130, 28));
        btnLihat.setOpaque(false);
        btnLihat.setPreferredSize(new java.awt.Dimension(130, 28));
        btnLihat.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                btnLihatMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                btnLihatMouseExited(evt);
            }
        });
        btnLihat.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLihatActionPerformed(evt);
            }
        });
        add(btnLihat, new org.netbeans.lib.awtextra.AbsoluteConstraints(194, 631, 154, 50));

        tabelData.setBackground(new java.awt.Color(255, 255, 255));
        tabelData.setFont(new java.awt.Font("Ebrima", 1, 14)); // NOI18N
        tabelData.setForeground(new java.awt.Color(0, 0, 0));
        tabelData.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID Transaksi", "ID Karyawan", "Nama Karyawan", "Tanggal", "Waktu"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tabelData.setGridColor(new java.awt.Color(0, 0, 0));
        tabelData.setSelectionBackground(new java.awt.Color(26, 164, 250));
        tabelData.setSelectionForeground(new java.awt.Color(250, 246, 246));
        tabelData.getTableHeader().setReorderingAllowed(false);
        tabelData.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tabelDataMouseClicked(evt);
            }
        });
        tabelData.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                tabelDataKeyPressed(evt);
            }
        });
        lpSemua.setViewportView(tabelData);

        add(lpSemua, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 110, 1120, 500));

        inpCari.setBackground(new java.awt.Color(255, 255, 255));
        inpCari.setFont(new java.awt.Font("Dialog", 1, 14)); // NOI18N
        inpCari.setForeground(new java.awt.Color(0, 0, 0));
        inpCari.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                inpCariActionPerformed(evt);
            }
        });
        inpCari.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                inpCariKeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                inpCariKeyTyped(evt);
            }
        });
        add(inpCari, new org.netbeans.lib.awtextra.AbsoluteConstraints(890, 80, 250, 30));

        background.setIcon(new javax.swing.ImageIcon(getClass().getResource("/resources/image/gambar/app-riwayatPembelian.png"))); // NOI18N
        add(background, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));
    }// </editor-fold>//GEN-END:initComponents

    private void btnKembaliMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnKembaliMouseEntered
        this.btnKembali.setIcon(Gambar.getAktiveIcon(this.btnKembali.getIcon().toString()));
    }//GEN-LAST:event_btnKembaliMouseEntered

    private void btnKembaliMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnKembaliMouseExited
        this.btnKembali.setIcon(Gambar.getBiasaIcon(this.btnKembali.getIcon().toString()));
    }//GEN-LAST:event_btnKembaliMouseExited

    private void btnKembaliActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnKembaliActionPerformed
        if (pembelian == true) {
            TransaksiBeli pnl = new TransaksiBeli();
            this.redirect(pnl);
        } else {
            TransaksiJual pnl = new TransaksiJual();
            this.redirect(pnl);
        }
    }//GEN-LAST:event_btnKembaliActionPerformed

    private void btnLihatMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLihatMouseEntered
        this.btnLihat.setIcon(Gambar.getAktiveIcon(this.btnLihat.getIcon().toString()));
    }//GEN-LAST:event_btnLihatMouseEntered

    private void btnLihatMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnLihatMouseExited
        this.btnLihat.setIcon(Gambar.getBiasaIcon(this.btnLihat.getIcon().toString()));
    }//GEN-LAST:event_btnLihatMouseExited

    private void btnLihatActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLihatActionPerformed
        try {
            if (this.tabelData.getSelectedRow() < 0) {
                System.out.println("Tidak ada data yang dipilih !");
                this.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
                Message.showWarning(this, "Tidak ada data yang dipilih !");
            } else {
                if (pembelian == true) {
                    System.out.println("id riwayat "+this.idTr);
                    DetailLaporanBeli pnl = new DetailLaporanBeli(this.idTr, true);
                    this.redirect(pnl);
                } else {
                    System.out.println("id riwayat "+this.idTr);
                    DetailLaporanJual pnl = new DetailLaporanJual(this.idTr, true);
                    System.out.println("id transaksi "+ this.idTr);
                    this.redirect(pnl);
                }
            }
        } catch (ParseException ex) {
            Logger.getLogger(RiwayatTransaksi.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnLihatActionPerformed

    private void tabelDataMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tabelDataMouseClicked
        this.setCursor(new Cursor(Cursor.WAIT_CURSOR));
        this.idTr = this.tabelData.getValueAt(this.tabelData.getSelectedRow(), 0).toString();
        System.out.println("id transaksi "+ this.idTr);
        this.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
    }//GEN-LAST:event_tabelDataMouseClicked

    private void tabelDataKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_tabelDataKeyPressed
        this.setCursor(new Cursor(Cursor.WAIT_CURSOR));
        if (evt.getKeyCode() == KeyEvent.VK_UP) {
            if (this.tabelData.getSelectedRow() >= 1) {
                this.idTr = this.tabelData.getValueAt(this.tabelData.getSelectedRow() - 1, 0).toString();
                System.out.println("id transaksi "+ this.idTr);
            }
        } else if (evt.getKeyCode() == KeyEvent.VK_DOWN) {
            if (this.tabelData.getSelectedRow() < (this.tabelData.getRowCount() - 1)) {
                this.idTr = this.tabelData.getValueAt(this.tabelData.getSelectedRow() + 1, 0).toString();
                System.out.println("id transaksi "+ this.idTr);
            }
        }
        this.setCursor(new Cursor(Cursor.DEFAULT_CURSOR));
    }//GEN-LAST:event_tabelDataKeyPressed

    private void inpCariActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_inpCariActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_inpCariActionPerformed

    private void inpCariKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_inpCariKeyReleased
        try {
            String key = this.inpCari.getText();
            if (this.pembelian == true) {
                this.keyword = "WHERE id_tr_beli LIKE '%" + key + "%'";
                this.updateTabel();
            } else {
                this.keyword = "WHERE id_tr_jual LIKE '%" + key + "%'";
                this.updateTabel();
            }
        } catch (ParseException ex) {
            Logger.getLogger(RiwayatTransaksi.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_inpCariKeyReleased

    private void inpCariKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_inpCariKeyTyped
        try {
            String key = this.inpCari.getText();
            if (this.pembelian == true) {
                this.keyword = "WHERE id_tr_beli LIKE '%" + key + "%'";
                this.updateTabel();
            } else {
                this.keyword = "WHERE id_tr_jual LIKE '%" + key + "%'";
                this.updateTabel();
            }
        } catch (ParseException ex) {
            Logger.getLogger(RiwayatTransaksi.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_inpCariKeyTyped


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel background;
    private javax.swing.JButton btnKembali;
    private javax.swing.JButton btnLihat;
    private javax.swing.JTextField inpCari;
    private javax.swing.JScrollPane lpSemua;
    private javax.swing.JTable tabelData;
    // End of variables declaration//GEN-END:variables
}
