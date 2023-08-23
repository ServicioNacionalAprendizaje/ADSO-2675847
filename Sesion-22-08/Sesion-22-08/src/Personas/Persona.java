/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Personas;

/**
 *
 * @author ariel
 */
public class Persona {

    private String tipoDocumento;
    private String documento;
    private String nombreCompleto;
    private Short edad;

    public Persona() {
    }

    public void setTipoDocumento(String tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }

    public String getTipoDocumento() {
        return this.tipoDocumento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getDocumento() {
        return this.documento;
    }
    
    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

    public String getNombreCompleto() {
        return this.nombreCompleto;
    }
    
    public void setEdad(Short edad) {
        this.edad = edad;
    }

    public Short getEdad() {
        return this.edad;
    }
    
    public void Cantar(){
        System.out.println(this.getNombreCompleto()+" esta cantando.");
    }
    
    public void Caminar(){
        if(this.getEdad()>=18){
            System.out.println(this.getNombreCompleto()+" porque ya es mayor de edad con documento "+this.getTipoDocumento()+": "+this.getDocumento()+" puede salir a caminar solo.");
        }else{
            System.out.println(this.getNombreCompleto()+" porque es menor de edad con documento "+this.getTipoDocumento()+": "+this.getDocumento()+" no puede salir a caminar solo.");
        }
    }
    
    public void Saltar(){
        System.out.println("Todas las personas saltan...");
    }
}
