package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {

    Button signUpButton;
    Button signInButton;
    EditText emailAddress;
    EditText password;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        setupUI();
        setupListener();

    }

    private void setupListener() {

        signUpButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(MainActivity.this, SignupActivity.class));
            }
        });

        signInButton.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View c){
                startActivity(new Intent(MainActivity.this, MenuActivity.class));
            }
        });
    }

    private void setupUI() {
        emailAddress = findViewById(R.id.editEmailAddress);
        password = findViewById(R.id.editPassword);
        signInButton =  (Button) findViewById(R.id.signinButton);
        signUpButton = (Button) findViewById(R.id.signupButton);
    }
}