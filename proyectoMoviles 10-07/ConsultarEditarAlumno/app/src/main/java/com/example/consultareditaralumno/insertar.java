package com.example.consultareditaralumno;

import androidx.appcompat.app.AppCompatActivity;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.HashMap;
import java.util.Map;


public class insertar extends AppCompatActivity {
    EditText notNombre,notTarea,notNota;
    Button btn1;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        notNombre = findViewById(R.id.notNombre);
        notTarea = findViewById(R.id.notTarea);
        notNota = findViewById(R.id.notNota);

        btn1= findViewById(R.id.btn1);
        btn1.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v){
                insertar();
                                }
         });
    }

    private void insertar() {
        final String nombre = notNombre.getText().toString().trim();
        final String tarea = notTarea.getText().toString().trim();
        final String nota = notNota.getText().toString().trim();

        final ProgressDialog progressDialog= new ProgressDialog(this);
        if (nombre.isEmpty())
        {
            notNombre.setError("Complete el campo del nombre");
        }
        else if (tarea.isEmpty())
        {
            notTarea.setError("Complete el campo de la tarea");
        }
        else if (nota.isEmpty())
        {
            notNota.setError("Complete el campo de ");
        } else {
            progressDialog.show();
            StringRequest request = new StringRequest(Request.Method.POST, "http://192.168.1.36:80/crud/insertar.php", new Response.Listener<String>() {
                @Override
                public void onResponse(String response) {
                    if (response.equalsIgnoreCase("Datos insertados")) {
                        Toast.makeText(insertar.this, "datos ingresados", Toast.LENGTH_SHORT).show();
                        progressDialog.dismiss();
                    } else {
                        Toast.makeText(insertar.this, response, Toast.LENGTH_SHORT).show();
                    }

                }

            }, new Response.ErrorListener() {
                @Override
                public void onErrorResponse(VolleyError error) {
                    Toast.makeText(insertar.this, error.getMessage(),Toast.LENGTH_SHORT).show();
                    progressDialog.dismiss();
                }
            }){
                @Override
                protected Map<String, String> getParams() throws AuthFailureError {
                Map<String, String> params = new HashMap<String, String>();

                params.put("notNombre",nombre);
                params.put("notTarea",tarea);
                params.put("notNota",nota);

                return params;
                }
            };
            RequestQueue requestQueue= Volley.newRequestQueue(insertar.this);
            requestQueue.add(request);


        }

        }
    }
