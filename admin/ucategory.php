<?php

 include"config.php";
 if(isset($_POST['submit'])){
  $id=$_POST['cat_id'];
  $catname=mysqli_real_escape_string($conn,$_POST['cat_name']);
  $sql="UPDATE category SET  category_name='{$catname}' WHERE category_id={$id}";
     if(mysqli_query($conn,$sql)){
       header("location:category.php");
     } 


 }


?>
