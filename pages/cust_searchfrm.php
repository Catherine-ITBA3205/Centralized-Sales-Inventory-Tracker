<?php
include'../includes/connection.php';
include'../includes/sidebar.php';
?><?php 

                $query = 'SELECT ID, t.TYPE
                          FROM users u
                          JOIN type t ON t.TYPE_ID=u.TYPE_ID WHERE ID = '.$_SESSION['MEMBER_ID'].'';
                $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
                while ($row = mysqli_fetch_assoc($result)) {
                          $Aa = $row['TYPE'];
                   
if ($Aa=='Cashier'){
           
             ?>    <script type="text/javascript">
                      //then it will be redirected
                      alert("Restricted Page! You will be redirected to POS");
                      window.location = "pos.php";
                  </script>
             <?php   }
                         
           
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
            <a href="customer.php" class="close"> <i class="fas fa-flip-horizontal fa-fw fa-share"></i> </a>
              <h4 class="m-2 font-weight-bold text-dark">Customer's Detail</h4>
            </div>
            <div class="card-body">
                

                    <div class="form-group row text-left">

                      <div class="col-sm-3 font-weight-bold text-dark">
                        <h5>
                          Name<br>
                        </h5>
                      </div>

                      <div class="col-sm-9">
                        <h5>
                          : <?php echo $i; ?> <br>
                        </h5>
                      </div>

                    </div>

                    <div class="form-group row text-left">

                      <div class="col-sm-3 font-weight-bold text-dark">
                        <h5>
                          Contact #<br>
                        </h5>
                      </div>

                      <div class="col-sm-9">
                        <h5>
                          : <?php echo $b; ?> <br>
                        </h5>
                      </div>
                      
                    </div>
            </div>
          </div>

<?php
include'../includes/footer.php';
?>