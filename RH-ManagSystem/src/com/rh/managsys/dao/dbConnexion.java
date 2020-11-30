
package com.rh.managsys.dao;

import javax.servlet.ServletContext;

public class dbConnexion {
        // Declaration des objets
        protected static String dbURL;
        protected static String dbLogin;
        protected static String dbPassword;
			
        // fonction static pour charger les drivers
        public static void init( ServletContext context ) {
        	try {
					
        			Class.forName(context.getInitParameter( "JDBC_DRIVER" ));
        			dbURL = context.getInitParameter( "JDBC_URL" );
        			dbLogin = context.getInitParameter( "JDBC_LOGIN" );
        			dbPassword = context.getInitParameter( "JDBC_PASSWORD" );
        		
			} catch (Exception e) {
					e.printStackTrace();
			}
        	
        }

    
}
