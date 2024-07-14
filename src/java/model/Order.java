/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Order {
    private int UserID , ClothesID , Quantity ;
    private float Price , total;
    private String OrderDate , NameClothes ;

    public Order() {
    }

    public Order(int UserID, float total) {
        this.UserID = UserID;
        this.total = total;
    }

    public Order(int UserID, int ClothesID, int Quantity, float Price, float total, String OrderDate, String NameClothes) {
        this.UserID = UserID;
        this.ClothesID = ClothesID;
        this.Quantity = Quantity;
        this.Price = Price;
        this.total = total;
        this.OrderDate = OrderDate;
        this.NameClothes = NameClothes;
    }

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public int getClothesID() {
        return ClothesID;
    }

    public void setClothesID(int ClothesID) {
        this.ClothesID = ClothesID;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float Price) {
        this.Price = Price;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public String getOrderDate() {
        return OrderDate;
    }

    public void setOrderDate(String OrderDate) {
        this.OrderDate = OrderDate;
    }

    public String getNameClothes() {
        return NameClothes;
    }

    public void setNameClothes(String NameClothes) {
        this.NameClothes = NameClothes;
    }

    
}
