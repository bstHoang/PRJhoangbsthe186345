package model;
//import java.lang.reflect.Array;

import java.util.*;

public class ClothesDAO extends MyDAO {

    public List<Clothes> getClothes() {
        List<Clothes> clothesList = new ArrayList<>();
        xSql = "select * from Clothes";

        String xName, xDescription, xImage;
        int xId, xQuantity;
        float xPrice;

        Clothes x;
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                xId = rs.getInt("id");
                xName = rs.getString("name");
                xPrice = rs.getFloat("price");
                xQuantity = rs.getInt("quantity");
                xImage = rs.getString("image");
                xDescription = rs.getString("desciption");
                x = new Clothes(xId, xQuantity, xName, xDescription, xImage, xPrice);
                clothesList.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (clothesList);
    }

    public Clothes getClothe(int id) {

        xSql = "select * from Clothes where id =?";
        Clothes clothes = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            if (rs.next()) {
                clothes = new Clothes();
                clothes.setID(rs.getInt("ID"));
                clothes.setName(rs.getString("Name"));
                clothes.setPrice(rs.getFloat("Price"));
                clothes.setQuantity(rs.getInt("Quantity"));
                clothes.setDescription(rs.getString("Desciption"));
                clothes.setImage(rs.getString("Image"));

            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (clothes);
    }

    public Clothes getClothe(String Name) {

        xSql = "select * from Clothes where Name =?";
        Clothes clothes = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, Name);
            rs = ps.executeQuery();

            if (rs.next()) {
                clothes = new Clothes();
                clothes.setID(rs.getInt("ID"));
                clothes.setName(rs.getString("Name"));
                clothes.setPrice(rs.getFloat("Price"));
                clothes.setQuantity(rs.getInt("Quantity"));
                clothes.setDescription(rs.getString("Desciption"));
                clothes.setImage(rs.getString("Image"));

            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (clothes);
    }

    public Clothes getClothess(String Image) {

        xSql = "select * from Clothes where Image =?";
        Clothes clothes = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, Image);
            rs = ps.executeQuery();

            if (rs.next()) {
                clothes = new Clothes();
                clothes.setID(rs.getInt("ID"));
                clothes.setName(rs.getString("Name"));
                clothes.setPrice(rs.getFloat("Price"));
                clothes.setQuantity(rs.getInt("Quantity"));
                clothes.setDescription(rs.getString("Desciption"));
                clothes.setImage(rs.getString("Image"));

            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (clothes);
    }

    public List<Clothes> getClothes(String xxName) {
        List<Clothes> clothesList = new ArrayList<>();
        xSql = "select * from Clothes WHERE name like '%" + xxName + "%'";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();

            String xName, xDescription, xImage;
            int xId, xQuantity;
            float xPrice;

            Clothes x;

            while (rs.next()) {
                xId = rs.getInt("id");
                xName = rs.getString("name");
                xPrice = rs.getFloat("price");
                xQuantity = rs.getInt("quantity");
                xImage = rs.getString("image");
                xDescription = rs.getString("desciption");
                x = new Clothes(xId, xQuantity, xName, xDescription, xImage, xPrice);
                clothesList.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (clothesList);

    }

    public void insert(Clothes x) {
        xSql = "insert into Clothes (Quantity,Name,Desciption,Image,Price) values (?,?,?,?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, x.getQuantity());
            ps.setString(2, x.getName());
            ps.setString(3, x.getDescription());
            ps.setString(4, x.getImage());
            ps.setFloat(5, x.getPrice());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void delete(int xID) {
        xSql = "delete from Clothes where ID=?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, xID);
            ps.executeUpdate();
            //con.commit();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update(int xId, Clothes x) {
        xSql = "update Clothes set Quantity=?, Name=? , Desciption=? ,Image=? ,Price=? where ID=?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, x.getQuantity());
            ps.setString(2, x.getName());
            ps.setString(3, x.getDescription());
            ps.setString(4, x.getImage());
            ps.setFloat(5, x.getPrice());
            ps.setInt(6, xId);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
        
}
