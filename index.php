<?php include"header.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>News</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Custom stlylesheet -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <div id="main-content">
      <div class="container">
          <div class="row">
              <div class="col-md-8">
                  <!-- post-container -->
                  <div class="post-container">
                    <?php
                             include"config.php";
                             if(isset($_GET['page'])){
                               $page=$_GET['page'];
                             }else {
                               $page=1;
                             }
                             $limit=3;
                             $offset=($page-1)*$limit;
                             $sql="SELECT * FROM post LEFT JOIN category ON post.category=category.category_id LEFT JOIN user ON user.user_id=post.author ORDER BY post.post_id DESC LIMIT {$offset},{$limit}";
                             $res=mysqli_query($conn,$sql);
                             if(mysqli_num_rows($res)>0){
                             while($row=mysqli_fetch_assoc($res)){
                     ?>
                      <div class="post-content">
                          <div class="row">
                              <div class="col-md-4">
                                  <a class="post-img" href="single.php?id=<?php echo $row['post_id'] ?>"><img src="admin/upload/<?php echo $row['post_img']; ?>" alt=""/></a>
                              </div>
                              <div class="col-md-8">
                                  <div class="inner-content clearfix">
                                      <h3><a href='single.php?id=<?php echo $row['post_id'] ?>'><?php echo $row['title']; ?></a></h3>
                                      <div class="post-information">
                                          <span>
                                              <i class="fa fa-tags" aria-hidden="true"></i>
                                              <a href='category.php'><?php echo $row['category_name']; ?></a>
                                          </span>
                                          <span>
                                              <i class="fa fa-user" aria-hidden="true"></i>
                                              <a href='author.php'><?php echo $row['username']; ?></a>
                                          </span>
                                          <span>
                                              <i class="fa fa-calendar" aria-hidden="true"></i>
                                              <?php echo $row['post_date']; ?>
                                          </span>
                                      </div>
                                      <p class="description">
                                          <?php echo substr($row['description'],0,130) . "..."; ?>
                                      </p>
                                      <a class='read-more pull-right' href='single.php?id=<?php echo $row['post_id']; ?>'>read more</a>
                                  </div>
                              </div>
                          </div>
                      </div>
                    <?php } }
                           $sql="SELECT * FROM post";
                           $result=mysqli_query($conn,$sql);
                           if(mysqli_num_rows($result)>0){
                                  $limit=3;
                                  $total_records=mysqli_num_rows($result);
                                  $total_page=ceil($total_records/$limit);
                                  echo"<ul class='pagination'>";
                                  if($page>1){
                                     echo '<li ><a href="index.php?page='.($page-1).'">Prev</a></li>';
                                  }
                                  for($i=1; $i<$total_page; $i++){
                                     echo '<li ><a href="index.php?page='.$i.'">'.$i.'</a></li>';
                                  }
                                  if($page<$total_page){
                                    echo '<li ><a href="index.php?page='.($page+1).'">Next</a></li>';
                                  }
                                  echo "</ul>";
                               }
                      ?>
                  </div><!-- /post-container -->
              </div>
              <?php include 'sidebar.php'; ?>
          </div>
      </div>
  </div>

</body>
</html>
