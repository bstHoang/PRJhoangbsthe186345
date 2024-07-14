/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author admin
 */
public class OrderDAO extends MyDAO {

    public void insert(Order x) {
        xSql = "insert into [Order] (IDuser,IDclothes,Price,Quantity,OrderDate,NameClothes,total) values (?,?,?,?,?,?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, x.getUserID());
            ps.setInt(2, x.getClothesID());
            ps.setFloat(3, x.getPrice());
            ps.setInt(4, x.getQuantity());
            ps.setString(5, x.getOrderDate());
            ps.setString(6, x.getNameClothes());
            ps.setFloat(7, x.getTotal());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Order> getOrders() {
        List<Order> OrderList = new ArrayList<>();
        xSql = "select * from [Order]";

        int UserID, ClothesID, Quantity;
        float Price, total;
        String OrderDate, NameClothes;

        Order x;
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                UserID = rs.getInt("IDuser");
                ClothesID = rs.getInt("IDclothes");
                Quantity = rs.getInt("Quantity");
                Price = rs.getFloat("Price");
                total = rs.getFloat("total");
                OrderDate = rs.getString("OrderDate");
                NameClothes = rs.getString("NameClothes");
                x = new Order(UserID, ClothesID, Quantity, Price, total, OrderDate, NameClothes);
                OrderList.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (OrderList);
    }

    public List<Order> getOrder(int UserID) {
        List<Order> orders = new ArrayList<>();
        xSql = "SELECT * FROM [Order] WHERE IDuser = ?";

        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, UserID);
            rs = ps.executeQuery();

            while (rs.next()) {
                int ClothesID = rs.getInt("IDclothes");
                int Quantity = rs.getInt("Quantity");
                float Price = rs.getFloat("Price");
                float total = rs.getFloat("total");
                String OrderDate = rs.getString("OrderDate");
                String NameClothes = rs.getString("NameClothes");
                Order order = new Order(UserID, ClothesID, Quantity, Price, total, OrderDate, NameClothes);
                orders.add(order);
            }

            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return orders;
    }

    public List<Order> getOrderDESC() {
        List<Order> t = new ArrayList<>();
        xSql = "SELECT SUM(total) AS total, IDuser\n"
                + "FROM [Order]\n"
                + "GROUP BY IDuser\n"
                + "ORDER BY total DESC;";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();

            int UserID, ClothesID, Quantity;
            float Price, total;
            String OrderDate, NameClothes;

            Order x;
            while (rs.next()) {
                UserID = rs.getInt("IDuser");
//                ClothesID = rs.getInt("IDclothes");
//                Quantity = rs.getInt("Quantity");
//                Price = rs.getFloat("Price");
                total = rs.getFloat("total");
//                OrderDate = rs.getString("OrderDate");
//                NameClothes = rs.getString("NameClothes");
                x = new Order(UserID, total);
                t.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    public List<Order> getOrderASC() {
        List<Order> t = new ArrayList<>();
        xSql = "SELECT SUM(total) AS total, IDuser\n"
                + "FROM [Order]\n"
                + "GROUP BY IDuser\n"
                + "ORDER BY total ASC;";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();

            int UserID, ClothesID, Quantity;
            float Price, total;
            String OrderDate, NameClothes;

            Order x;
            while (rs.next()) {
                UserID = rs.getInt("IDuser");
//                ClothesID = rs.getInt("IDclothes");
//                Quantity = rs.getInt("Quantity");
//                Price = rs.getFloat("Price");
                total = rs.getFloat("total");
//                OrderDate = rs.getString("OrderDate");
//                NameClothes = rs.getString("NameClothes");
                x = new Order(UserID, total);
                t.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }
}
