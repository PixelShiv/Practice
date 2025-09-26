package com.example;

import org.junit.Test;
import static org.junit.Assert.*;

public class AppTest {

    @Test
    public void testGetMessage() {
        // Expected output
        String expected = "Hello, Jenkins + Maven!";
        
        // Actual output from App
        String actual = App.getMessage();  // App.java must have a static getMessage() method
        
        // Assertion
        assertEquals("App.getMessage() should return the expected string", expected, actual);
    }
}
