package kr.ac.kopo.framework;

import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

public class HandlerMapping {

    private Map<String, Controller> mappings;

    public HandlerMapping(String propLoc) {
        mappings = new HashMap<>();

        Properties prop = new Properties();
        try (InputStream is = new FileInputStream(propLoc)) {
            prop.load(is);
            Set<Object> keys = prop.keySet();
            for (Object key : keys) {
                String className = prop.getProperty(key.toString());

                Class<?> clz = Class.forName(className);
                Constructor<?> constructor = clz.getConstructor();
                Controller control = (Controller) constructor.newInstance();

                mappings.put(key.toString(), control);
            }

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("HandlerMapping initialization failed. Check the propLoc path and properties.");
        }
    }

    public Controller getController(String uri) {
        Controller controller = mappings.get(uri);
        if (controller == null) {
            System.out.println("No controller found for URI: " + uri);
        }
        return controller;
    }
}
