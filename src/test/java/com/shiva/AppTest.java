package com.shiva;

import com.example.App;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class AppTest {

    @Test
    public void testAppCreation() {
        App app = new App();
        assertNotNull(app, "App object should not be null");
        assertEquals("MyApp", app.getName(), "App name should be 'MyApp'");
    }
}
