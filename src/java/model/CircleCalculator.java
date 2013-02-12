

package model;

/**
 *
 * @author Nolan
 */
public class CircleCalculator {

    private double radius;
    private final double PI = Math.PI;
    
    public CircleCalculator(double radius){
        this.radius = radius;
    }

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }
    
    public double getArea(){
        return radius * radius * PI;
    }
    
}
