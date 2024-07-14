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
public class UserDAO extends MyDAO {

    public List<User> getUsers() {
        List<User> t = new ArrayList<>();
        xSql = "select * from [User] ";
        int xID, xRole;
        String xPhoneNumber, xName, xGender, xDOB, xUserName, xPassword;
        User x;
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            while (rs.next()) {
                xID = rs.getInt("ID");
                xRole = rs.getInt("Role");
                xPhoneNumber = rs.getString("PhoneNumber");
                xName = rs.getString("Name");
                xGender = rs.getString("Gender");
                xDOB = rs.getString("DOB");
                xUserName = rs.getString("UserName");
                xPassword = rs.getString("Password");

                x = new User(xID, xRole, xPhoneNumber, xName, xGender, xDOB, xUserName, xPassword);
                t.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    public User getUser(int xID) {
        List<User> t = new ArrayList<>();
        xSql = "select * from [User] where ID =?";
        int xRole;
        String xPhoneNumber, xName, xGender, xDOB, xUserName, xPassword;
        User x = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, xID);
            rs = ps.executeQuery();
            if (rs.next()) {
                xID = rs.getInt("ID");
                xRole = rs.getInt("Role");
                xPhoneNumber = rs.getString("PhoneNumber");
                xName = rs.getString("Name");
                xGender = rs.getString("Gender");
                xDOB = rs.getString("DOB");
                xUserName = rs.getString("UserName");
                xPassword = rs.getString("Password");
                x = new User(xID, xRole, xPhoneNumber, xName, xGender, xDOB, xUserName, xPassword);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }

    public User getUser(String xPhoneNumber) {
        List<User> t = new ArrayList<>();
        xSql = "select * from [User] where PhoneNumber =?";
        int xID, xRole;
        String xName, xGender, xDOB, xUserName, xPassword;
        User x = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xPhoneNumber);
            rs = ps.executeQuery();
            if (rs.next()) {
                xID = rs.getInt("ID");
                xRole = rs.getInt("Role");
                xPhoneNumber = rs.getString("PhoneNumber");
                xName = rs.getString("Name");
                xGender = rs.getString("Gender");
                xDOB = rs.getString("DOB");
                xUserName = rs.getString("UserName");
                xPassword = rs.getString("Password");

                x = new User(xID, xRole, xPhoneNumber, xName, xGender, xDOB, xUserName, xPassword);

            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }
    
    public User getName(String xName) {
        List<User> t = new ArrayList<>();
        xSql = "select * from [User] where [Name] =?";
        int xID, xRole;
        String xPhoneNumber, xGender, xDOB, xUserName, xPassword;
        User x = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xName);
            rs = ps.executeQuery();
            if (rs.next()) {
                xID = rs.getInt("ID");
                xRole = rs.getInt("Role");
                xPhoneNumber = rs.getString("PhoneNumber");
                xName = rs.getString("Name");
                xGender = rs.getString("Gender");
                xDOB = rs.getString("DOB");
                xUserName = rs.getString("UserName");
                xPassword = rs.getString("Password");

                x = new User(xID, xRole, xPhoneNumber, xName, xGender, xDOB, xUserName, xPassword);

            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }

    public void insert(User x) {
        xSql = "insert into [User] (Role,PhoneNumber,Name,Gender,DOB,UserName,Password) values (?,?,?,?,?,?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, x.getRole());
            ps.setString(2, x.getPhoneNumber());
            ps.setString(3, x.getName());
            ps.setString(4, x.getGender());
            ps.setString(5, x.getDOB());
            ps.setString(6, x.getUserName());
            ps.setString(7, x.getPassword());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public User getUser(String xUserName, String xPassword) {
        xSql = "select * from [User] where UserName = ? and Password = ?";

        int xID, xRole;
        String xName, xGender, xDOB, xPhoneNumber;
        User x = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xUserName);
            ps.setString(2, xPassword);

            rs = ps.executeQuery();

            if (rs.next()) {
                xRole = rs.getInt("Role");
                xID = rs.getInt("ID");
                xPhoneNumber = rs.getString("PhoneNumber");
                xName = rs.getString("Name");
                xGender = rs.getString("Gender");
                xDOB = rs.getString("DOB");

                x = new User(xID, xRole, xPhoneNumber, xName, xGender, xDOB, xUserName, xPassword);
            } else {
                x = null;
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
        }
        return (x);
    }

    public void updateprofile(String Name, String Gender, String DOB, String PhoneNumber, String UserName, String Password, String ID) {
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [Name] = ?\n"
                + "      ,[Gender] = ?\n"
                + "      ,[DOB] = ?\n"
                + "      ,[PhoneNumber] = ?\n"
                + "      ,[UserName] = ?\n"
                + "      ,[Password] = ?\n"
                + " WHERE ID = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, Name);
            st.setString(2, Gender);
            st.setString(3, DOB);
            st.setString(4, PhoneNumber);
            st.setString(5, UserName);
            st.setString(6, Password);
            st.setString(7, ID);

            st.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void delete(int xID) {
        xSql = "delete from [User] where ID=?";
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
      public void update(int xId, User x) {
     xSql = "update [User] set Name=?, Gender=? , DOB=? ,PhoneNumber=? ,UserName=? , Password=? ,Role=?  where ID=?";
     try {      
        ps = con.prepareStatement(xSql);
        ps.setString(1, x.getName());
        ps.setString(2, x.getGender());
        ps.setString(3, x.getDOB());
        ps.setString(4, x.getPhoneNumber());
        ps.setString(5, x.getUserName());
        ps.setString(6, x.getPassword());
        ps.setInt(7, x.getRole());
        ps.setInt(8, xId);
        ps.executeUpdate();
        ps.close();
     }
      catch(Exception e) {
        e.printStackTrace();
      }
  }
}
