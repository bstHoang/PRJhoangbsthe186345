/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Clothes {
    private int ID , Quantity;
    private String Name , Description , Image;  
    private float Price ;

    public Clothes() {
    }

    public Clothes(int ID, int Quantity, String Name, String Description, String Image, float Price) {
        this.ID = ID;
        this.Quantity = Quantity;
        this.Name = Name;
        this.Description = Description;
        this.Image = Image;
        this.Price = Price;
    }
    
    public Clothes(int Quantity, String Name, String Description, String Image, float Price) {
        this.Quantity = Quantity;
        this.Name = Name;
        this.Description = Description;
        this.Image = Image;
        this.Price = Price;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float Price) {
        this.Price = Price;
    }

    
}
