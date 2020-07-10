package com.example.consultareditaralumno;

import android.content.Context;
import android.widget.ArrayAdapter;

import androidx.annotation.NonNull;

import java.util.List;

public class Adaptador extends ArrayAdapter<Users> {

    Context context;
    List<Users>arrayalistaUers;
    public Adaptador(@NonNull Context context, List<Users>arrayalistaUers) {
        super(context, R.id.my_list_item,arrayalistaUers);

        this.context=context;
        this.arrayalistaUers=arrayalistaUers;
    }
}
