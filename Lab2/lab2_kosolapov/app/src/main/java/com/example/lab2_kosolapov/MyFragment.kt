package com.example.lab2_kosolapov

import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.TextView
import androidx.fragment.app.Fragment
import java.text.SimpleDateFormat
import java.util.*

class MyFragment : Fragment(R.layout.myfragment_layout) {
    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        val dateButton = requireView().findViewById<Button>(R.id.date_button)
        val dateLabel = requireView().findViewById<TextView>(R.id.date_label)

        dateButton.setOnClickListener {
            val sdf = SimpleDateFormat("dd/mm/yyyy hh:mm:ss", Locale("ru_RU"))
            val currentDate = sdf.format(Date())
            dateLabel.text = currentDate
            println("clicked")
        }
    }
}