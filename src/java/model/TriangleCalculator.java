

package model;

/**
 *
 * @author Nolan
 */
public class TriangleCalculator {

    private double sideA; 
    private double sideB;
    
    public TriangleCalculator(double sideA, double sideB){
        this.sideA = sideA;
        this.sideB = sideB;
    }

    public double getSideA() {
        return sideA;
    }

    public void setSideA(double sideA) {
        this.sideA = sideA;
    }

    public double getSideB() {
        return sideB;
    }

    public void setSideB(double sideB) {
        this.sideB = sideB;
    }
    
    public double getArea(){
        return Math.sqrt(sideA * sideA + sideB * sideB);
    }
}
