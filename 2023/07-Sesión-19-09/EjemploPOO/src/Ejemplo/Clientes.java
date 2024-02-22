/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Ejemplo;

/**
 *
 * @author ariel
 */
public class Clientes {

    private String tipoDocumento;
    private String documento;
    private String nombre;
    private String correo;

    //Construir los encapsulamientos
    
    //get
    public String getTipoDocumento(){
        return this.tipoDocumento;
    }
    
    //set
    public void setTipoDocumento(String tipoDocumento){
        this.tipoDocumento = tipoDocumento;
    }
    
    //get
    public String getDocumento(){
        return this.documento;
    }
    
    //set
    public void setDocumento(String documento){
        this.documento = documento;
    }
    
    //get
    public String getNombre(){
        return this.nombre;
    }
    
    //set
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    
    //get
    public String getCorreo(){
        return this.correo;
    }
    
    //set
    public void setCorreo(String correo){
        this.correo = correo;
    }
}
