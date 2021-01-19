<?php
include"config.php";
if(isset($_GET['id'])){
  $id=$_GET['id'];
}
if(isset($_GET['cid'])){
  $cid=$_GET['cid'];
}
$sql="DELETE FROM post WHERE post_id={$id};";
$sql .="UPDATE category SET post=post-1 WHERE category_id={$cid}";
if(mysqli_multi_query($conn,$sql)){
  header("location:post.php");
}



?>
