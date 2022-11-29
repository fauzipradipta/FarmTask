package com.example.myapplication;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.StrictMode;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;

import androidx.appcompat.app.AppCompatActivity;

import com.example.sqlconnection.ConnectionClass;
import com.google.android.material.snackbar.Snackbar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static android.text.TextUtils.isEmpty;

public class SignupActivity extends AppCompatActivity {

    EditText firstName;
    EditText lastName;
    EditText email;
    EditText password;

    LinearLayout lvparent;

    Button rButton; //Register Button

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_signup);

        firstName = (EditText) findViewById(R.id.editFirstName);
        lastName = (EditText) findViewById(R.id.editLastName);
        email = (EditText) findViewById(R.id.Email);
        password =(EditText) findViewById(R.id.Password);
        rButton = (Button) findViewById(R.id.registerButton);

        rButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(isEmpty(firstName.getText().toString())||
                isEmpty(lastName.getText().toString()) || isEmpty(email.getText().toString())
                || isEmpty(password.getText().toString()))

                    ShowSnackBar("Please Enter all fields");
                else{
                    AddUsers addUsers = new AddUsers();
                    addUsers.execute("");
                }
            }
        });


    }
    public void ShowSnackBar(String message) {
        Snackbar.make(lvparent, message, Snackbar.LENGTH_LONG)
                .setAction("CLOSE", new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {

                    }
                })
                .setActionTextColor(getResources().getColor(android.R.color.holo_red_light))
                .show();
    }

    public boolean isEmpty(String value){
        if(value== null || value.trim().equals("")){
            return false;
        }
        else
            return true;
    }

    private class AddUsers extends AsyncTask<String, Void, String>{
        String FirstName, LastName, Email, Password;

        @Override
        protected void onPreExecute(){
            super.onPreExecute();

            FirstName = firstName.getText().toString();
            LastName = lastName.getText().toString();
            Email = email.getText().toString();
            Password = password.getText().toString();


        }
        @Override
        protected String doInBackground(String... params) {

            try {
                ConnectionClass con = new ConnectionClass();
                Connection connect = ConnectionClass.CONN();

                String queryStmt = "Insert into Users " +
                        " (UserId,LastName, FirstName, Email, Password) values "
                        + "('"
                        +FirstName
                        +"','"
                        +LastName
                        +"','"
                        + Email
                        + "','"
                        + Password
                        + "','User')";

                PreparedStatement preparedStatement = connect
                        .prepareStatement(queryStmt);

                preparedStatement.executeUpdate();

                preparedStatement.close();

                return "Added successfully";
            } catch (SQLException e) {
                e.printStackTrace();
                return e.getMessage().toString();
            } catch (Exception e) {
                return e.getMessage().toString();
            }
        }

        @Override
        protected void onPostExecute(String result) {

            //Toast.makeText(signup.this, result, Toast.LENGTH_SHORT).show();
            ShowSnackBar(result);

            rButton.setVisibility(View.VISIBLE);
            if (result.equals("Added successfully")) {
                // Clear();
            }

        }


    }
}
