package com.example.consultareditaralumno;

public class Users {

    private String notNombre,notTarea,notNota;

    public Users() {
    }

    public Users(String notNombre, String notTarea, String notNota) {
        this.notNombre = notNombre;
        this.notTarea = notTarea;
        this.notNota = notNota;
    }

    public String getNotNombre() {
        return notNombre;
    }

    public void setNotNombre(String notNombre) {
        this.notNombre = notNombre;
    }

    public String getNotTarea() {
        return notTarea;
    }

    public void setNotTarea(String notTarea) {
        this.notTarea = notTarea;
    }

    public String getNotNota() {
        return notNota;
    }

    public void setNotNota(String notNota) {
        this.notNota = notNota;
    }
}
