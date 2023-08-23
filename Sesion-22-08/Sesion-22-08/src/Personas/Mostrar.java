/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Personas;

/**
 *
 * @author ariel
 */
public class Mostrar {
    public static void main(String[] args){
        System.out.print("Mi primer ejecicio POO. \n");

        Short edad = 31;        
        Persona persona1 = new Persona(); 
        persona1.setTipoDocumento("CC");
        persona1.setDocumento("456473");
        persona1.setNombreCompleto("Jesús González");
        persona1.setEdad(edad);
        persona1.Cantar();
        persona1.Caminar();
        persona1.Saltar();
        
        edad = 12;        
        Persona persona2 = new Persona(); 
        persona2.setTipoDocumento("Ti");
        persona2.setDocumento("654385742");
        persona2.setNombreCompleto("Adriana Mendéz");
        persona2.setEdad(edad);        
        persona2.Caminar();        
    }
}
