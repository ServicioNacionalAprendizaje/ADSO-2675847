/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Ejemplo;

/**
 *
 * @author ariel
 */
public class Mostrar {
    public static void main(String[] args) {
        Clientes cliente = new Clientes();
        Clientes cliente2 = new Clientes();
        
        cliente.setTipoDocumento("CC");
        cliente.setDocumento("19854095");
        cliente.setNombre("Pedro");
        cliente.setCorreo("pedro@gmail.com ");
        
        cliente2.setTipoDocumento("CC");
        cliente2.setDocumento("353945");
        cliente2.setNombre("Andrea");
        cliente2.setCorreo("andrea@gmail.com ");
        
        //Muestre los datos del cliente?
        System.out.println(cliente.getTipoDocumento()+" "+cliente.getDocumento()+" "+cliente.getNombre()+" "+cliente.getCorreo());
        System.out.println(cliente2.getTipoDocumento()+" "+cliente2.getDocumento()+" "+cliente2.getNombre()+" "+cliente2.getCorreo());
    }
    
}
