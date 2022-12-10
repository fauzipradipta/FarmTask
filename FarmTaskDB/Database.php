<?php
    require "DatabaseConfig.php";

    function insertuser () {
        $connection = new DatabaseConfig();
        $conn = $connection->getConnection(); 

        //array json response 
        $response = array();
        $loginName = $_POST['LoginName'];
        $password = $_POST['Password'];
        $firstname = $_POST['FirstName']; 
        $lastname = $_POST['LastName'];
        $title = $_POST['Title'];
        $titleofcourtesy =$_POST['TitleOfcourtesy'];
        $birthDate = $_POST['BirthDate'];
        $hireDate = $_POST['hireDate'];
        $address = $_POST['Address'];
        $city = $_POST['City']; 
        $region = $_POST['Region'];
        $postalCode = $_POST['PostalCode'];
        $country = $_POST['Country'];
        $homePhone = $_POST['HomePhone'];
        $extension = $_POST['Extension'];
        
        try {
            if (isset($loginName) && isset($password) && isset($firstname) && isset($lastname) && isset($title) && isset($titleofcourtesy) && isset($birthDate) && isset($hireDate) && isset  ($address) && isset($city) && isset($region) && isset($postalCode) && isset($country) && isset($homePhone) && isset($extension)) {
            $sqlInsert = "Insert into farmtask(LoginName, Password, FirstName, LastName, Title, TitleOfcourtesy, BirthDate,hireDate,Address, City, Region, PostalCode, Country,HomePhone, Extension) VALUES ('$loginName','$firstname','$lastname','$title','$titleofcourtesy','$birthDate','$hireDate','$address','$country','$homePhone','$extension')";
                 $conn->exec($sqlInsert);
            }
            
        }
        catch (PDOException $e){
            echo "Error while inserting ".$e->getMessage();
        }

        if($sqlInsert){
            //success inserted
            $response["success"] = 1;
            $response["message"] = "user successfully  inserted!";

            echo json_encode($response);

        }else{
            //failed inserted
            $response["success"] = 0;
            $response["message"] = "failed insert data";

            echo json_encode($response);
        }


    }

    
?>