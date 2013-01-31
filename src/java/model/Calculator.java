package model;

/**
 *
 * @author ncummins
 */
public class Calculator {
    private static final double PI = 3.14159265359;
    
    
    public double getRectangleArea(int length, int width){
        return length * width;
    }
    
    public double getCircleArea(int radius){
        return PI * radius * radius;
    }
    
    
}
