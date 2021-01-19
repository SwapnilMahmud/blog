<?php include "header.php"; ?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <h1 class="adin-heading"> Update Category</h1>
              </div>
              <div class="col-md-offset-3 col-md-6">
                <?PHP
                    include"config.php";
                    if(isset($_GET['id'])){
                      $id=$_GET['id'];
                    }
                   $sql1="SELECT * FROM category WHERE category_id={$id}";
                   $res=mysqli_query($conn,$sql1);
                   if(mysqli_num_rows($res)>0){
                     while($row=mysqli_fetch_assoc($res)){
                ?>
                  <form action="ucategory.php" method ="POST">
                      <div class="form-group">
                          <input type="hidden" name="cat_id"  class="form-control" value="<?php echo $row['category_id']; ?>" placeholder="">
                      </div>
                      <div class="form-group">
                          <label>Category Name</label>
                          <input type="text" name="cat_name" class="form-control" value="<?php echo $row['category_name']; ?>"  placeholder="" required>
                      </div>
                      <input type="submit" name="submit" class="btn btn-primary" value="Update" required />
                  </form>
                <?php }} ?>
                </div>
              </div>
            </div>
          </div>

<?php include "footer.php"; ?>
