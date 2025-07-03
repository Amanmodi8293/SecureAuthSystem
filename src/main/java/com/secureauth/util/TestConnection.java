package com.secureauth.util;

import java.sql.Connection;
import com.secureauth.util.DBConnection;

public class TestConnection {
    public static void main(String[] args) {
        Connection conn = DBConnection.getConnection();
        if (conn != null) {
            System.out.println("✅ Database Connected Successfully!");
        } else {
            System.out.println("❌ Connection Failed.");
        }
    }
}
