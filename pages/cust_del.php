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
echo($_GET['delete_id']);
if (isset($_GET['delete_id'])) {

            $query = "DELETE FROM customer WHERE CUST_ID = '{$_GET['delete_id']}'";
            $result = mysqli_query($db, $query) or die(mysqli_error($db));				
        ?>
            <script type="text/javascript">alert("Customer Successfully Deleted.");
            window.location = "customer.php";</script>					
        <?php
            //break;
        }
?>