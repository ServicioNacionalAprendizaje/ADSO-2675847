package com.sena.GastroManager.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name = "person")
public class Person extends ABaseEntity{
    @Column(name = "type_document", nullable = false , length = 20)
    private String typeDocument;

    @Column(name = "document", nullable = false , length = 20, unique = true)
    private String document;

    @Column(name = "first_name", nullable = false , length = 50)
    private String firstName;

    @Column(name = "last_name", nullable = false , length = 50)
    private String lastName;

    @Column(name = "phone", nullable = false , length = 20)
    private String phone;

    @Column(name = "address", nullable = false , length = 100)
    private String address;

    public String getTypeDocument() {
        return typeDocument;
    }

    public void setTypeDocument(String typeDocument) {
        this.typeDocument = typeDocument;
    }

    public String getDocument() {
        return document;
    }

    public void setDocument(String document) {
        this.document = document;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
