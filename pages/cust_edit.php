<?php
include'../includes/connection.php';
include'../includes/sidebar.php';

  $query = 'SELECT ID, t.TYPE
            FROM users u
            JOIN type t ON t.TYPE_ID=u.TYPE_ID WHERE ID = '.$_SESSION['MEMBER_ID'].'';
  $result = mysqli_query($db, $query) or die (mysqli_error($db));
  
  while ($row = mysqli_fetch_assoc($result)) {
            $Aa = $row['TYPE'];
                   
if ($Aa=='Cashier'){
?>
  <script type="text/javascript">
    //then it will be redirected
    alert("Restricted Page! You will be redirected to POS");
    window.location = "pos.php";
  </script>
<?php
  }      
}   
  $query = 'SELECT * FROM customer WHERE CUST_ID ='.$_GET['id'];
  $result = mysqli_query($db, $query) or die(mysqli_error($db));
    while($row = mysqli_fetch_array($result))
    {   
      $zz= $row['CUST_ID'];
      $i= $row['NAME'];
      $b=$row['PHONE_NUMBER'];
    }  
      $id = $_GET['id'];
?>
            
            <center><div class="card shadow mb-3 col-xs-12 col-md-6 border-bottom-success">
            <div class="card-header py-3">
            <a  type="button" class="close" href="customer.php?"> <i class="fas fa-flip-horizontal fa-fw fa-share"></i></a>
              <h4 class="m-2 font-weight-bold text-dark">Edit Customer</h4>
            </div>
            <div class="card-body">
         
            <form role="form" method="post" action="cust_edit1.php">
              <input type="hidden" name="id" value="<?php echo $zz; ?>" />
              <div class="form-group row text-left font-weight-bold text-dark">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Name:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="Name" name="name" value="<?php echo $i; ?>" required>
                </div>
              </div>
              <div class="form-group row text-left font-weight-bold text-dark">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Contact #:
                </div>
                <div class="col-sm-9">
                   <input class="form-control" placeholder="Phone Number" name="phone" value="<?php echo $b; ?>">
                </div>
              </div>
              <hr>

                <button type="submit" class="btn btn-warning btn-block"><i class="fa fa-edit fa-fw"></i>Update</button> 
              </form>  
          </div>
  </div>

<?php
include'../includes/footer.php';
?>