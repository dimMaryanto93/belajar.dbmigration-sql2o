package org.configurations;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.sql2o.Connection;
import org.sql2o.Sql2o;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by dimmaryanto93 on 16/04/17.
 */
public class DatabaseUtils {
    private final static Logger console = LoggerFactory.getLogger(DatabaseUtils.class);

    public Connection getConnection(String fileProperties) {
        InputStream input = getClass().getResourceAsStream(File.separator.concat(fileProperties));
        Properties properties = new Properties();
        try {
            properties.load(input);
            Connection sourceConnection = new Sql2o(
                    properties.get("jdbc.url").toString(),
                    properties.get("jdbc.username").toString(),
                    properties.get("jdbc.password").toString()).beginTransaction();
            sourceConnection.setRollbackOnException(true);
            console.info("connection to database {}", properties.getProperty("jdbc.url"));
            return sourceConnection;
        } catch (IOException e) {
            e.printStackTrace();
            console.error("can't conected to database", e);
            return null;
        }
    }

    public static Connection getConnectionFormSource() {
        return new DatabaseUtils().getConnection("jdbc.source.properties");
    }

    public static Connection getConnectionToDestination() {
        return new DatabaseUtils().getConnection("jdbc.target.properties");
    }

}
