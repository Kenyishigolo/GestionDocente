package com.pari.docente;

import android.app.DatePickerDialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Spinner;

import java.util.Calendar;
import java.util.Date;


public class fragment_agregartarea extends Fragment {
 EditText edttitulo,edtintrucciones,edtpuntos, edtfechatarea;
 Spinner sppara,tema;
 Button btncrearclase,btncancelar,btnfecha;
 Calendar c=Calendar.getInstance();
 int yy=c.get(Calendar.YEAR);
 int mm=c.get(Calendar.MONTH);
 int dd=c.get(Calendar.DAY_OF_MONTH);

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view= inflater.inflate(R.layout.fragment_fragment_agregartarea, container, false);
        edttitulo=view.findViewById(R.id.edtnombreClase_cg);
        edtintrucciones=view.findViewById(R.id.edtseccion_cg);
        edtpuntos=view.findViewById(R.id.edtasunto_cg);
        edtfechatarea=view.findViewById(R.id.edtfechatarea);
        btncrearclase=view.findViewById(R.id.btnguarfarTarea);
        btnfecha=view.findViewById(R.id.btnfechatarea);
        edtfechatarea.setEnabled(false);
        btnfecha.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                tenerfecha();
            }
        });
       btncrearclase.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {


            }
       });
       return view;
    }
    public void tenerfecha(){
        DatePickerDialog obtenerfecha=new DatePickerDialog(getContext(), new DatePickerDialog.OnDateSetListener() {
            @Override
            public void onDateSet(DatePicker view, int year, int month, int dayOfMonth) {
                int mesdehoy=month +1;
                String dianuevo=(dayOfMonth <10)?"0" + String.valueOf(dayOfMonth):String.valueOf(dayOfMonth);
                String mesnuevo=(mesdehoy <10)?"0" + String.valueOf(mesdehoy):String.valueOf(mesdehoy);
                edtfechatarea.setText(dianuevo + "/" + mesnuevo + "/" + year);
            }

        },yy,mm,dd);
        obtenerfecha.show();
    }
}


