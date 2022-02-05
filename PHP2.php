<?php
require_once "pdo.php";
			
			$lname=$_POST["lname"];
			$fname=$_POST["fname"];
			$phone=$_POST["phone"];
			$branch=$_POST["branch"];
			$comment=$_POST["comment"];

			
		$stmt = $pdo->query("INSERT INTO `subscribe`(`lname`, `fname`, `phone`, `branch`, `comment`) VALUES ('$lname','$fname','$phone','$branch','$comment')");
		header("location:http://localhost/EgyGyms/index.html");


		



?>