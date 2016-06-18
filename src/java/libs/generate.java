/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package libs;

/**
 *
 * @author Muhammed
 */
public class generate {
    public static void main(String[] args) {
        String mat[] = {"Math2","Algorithms","Physics","Logic1","Statistics"};
        for(int i=1;i<mat.length; i++){
            System.out.println("INSERT INTO `msp`.`materials` (`matID`, `materialName`, `description`, `staffID`, `hours`, `year`, `deptID`, `term`, `reference`) VALUES ('17',"+mat[i]+"', 'This is material for year 1 in Mufic', '1', '3', '1', 'no', '2', 'http://goo.gl/Rn3vGR');");
        }
    }
}
