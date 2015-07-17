/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inventorymanagement;

import BusinessLayer.DamageBl;
import ObjectFactory.DamageOF;
import java.text.MessageFormat;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author chabbi
 */
public class ReportDamage extends javax.swing.JInternalFrame {

    /**
     * Creates new form ReportDamage
     */
    public ReportDamage() {
        initComponents();
        
        damage = new DamageOF();
        bldamage = new DamageBl();
        DefaultTableModel dtm = new DefaultTableModel();
        try{

            dtm.addColumn("Damage Id");
            dtm.addColumn("Damage Name");
            dtm.addColumn("Damage Quantity");
            dtm.addColumn("Damage Date");
            dtm.addColumn("Damage Detail");
            dtm.addColumn("Item Name");
                        
            ArrayList<DamageOF> damages = bldamage.getdamageList();
            for(int i=0; i<damages.size(); ++i ){
              Object[] data = { damages.get(i).getDamage_id(), damages.get(i).getDamage_name(), damages.get(i).getDamage_quantity(), damages.get(i).getDamage_date(), damages.get(i).getDamage_detail(), damages.get(i).getItem_name() };
              dtm.addRow(data);
            }
            tblViewDamage.setModel(dtm);

        }
        catch(Exception ex){
            JOptionPane.showMessageDialog(this, ex);
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblViewDamage = new javax.swing.JTable();
        btnPrintDamage = new javax.swing.JButton();
        btnCancelDamage = new javax.swing.JButton();

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel1.setText("View Detail Report of Damage Items");

        tblViewDamage.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "", "", "", "", "", ""
            }
        ));
        jScrollPane1.setViewportView(tblViewDamage);

        btnPrintDamage.setText("Save & Print");
        btnPrintDamage.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnPrintDamageActionPerformed(evt);
            }
        });

        btnCancelDamage.setText("Cancel");
        btnCancelDamage.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelDamageActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel1)
                .addGap(176, 176, 176))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 630, Short.MAX_VALUE)
                .addContainerGap())
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(197, 197, 197)
                .addComponent(btnPrintDamage, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(41, 41, 41)
                .addComponent(btnCancelDamage, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 261, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(38, 38, 38)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnPrintDamage, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnCancelDamage, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(97, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnPrintDamageActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnPrintDamageActionPerformed
        // TODO add your handling code here:
        MessageFormat header = new MessageFormat("Inventory Management System ");
        MessageFormat footer = new MessageFormat("Page{0,number,integer}");

        try{
            tblViewDamage.print(JTable.PrintMode.NORMAL, header, footer);
        }catch(java.awt.print.PrinterException e){
            System.err.format("Can not print the page", e.getMessage());
        }
        
    }//GEN-LAST:event_btnPrintDamageActionPerformed

    private void btnCancelDamageActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelDamageActionPerformed
        // TODO add your handling code here:
        this.dispose();
    }//GEN-LAST:event_btnCancelDamageActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCancelDamage;
    private javax.swing.JButton btnPrintDamage;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tblViewDamage;
    // End of variables declaration//GEN-END:variables
    private DamageOF damage;
    private DamageBl bldamage;
}
