<?php
include'../includes/connection.php';
session_start();

              $date = $_POST['date'];
              $customer = $_POST['customer'];
              $subtotal = $_POST['subtotal'];
              $lessvat = $_POST['lessvat'];
              $netvat = $_POST['netvat'];
              $addvat = $_POST['addvat'];
              $total = $_POST['total'];
              $cash = $_POST['cash'];
              $emp = $_POST['employee'];
              $rol = $_POST['role'];
              //imma make it trans uniq id
              $today = date("mdGis"); 
              $checker=0;
              $countID = count($_POST['name']);
              // echo "<table>";
              switch($_GET['action']){
                case 'add':
                  for($i=1; $i<=$countID; $i++){
                    if($_POST['prod_qty'][$i-1]<(int)$_POST['quantity'][$i-1]){
                      $checker+=1;
                    }
                  }  


                  if($checker==0){
                    for($i=1; $i<=$countID; $i++)
                    {
                      // echo "'{$today}', '".$_POST['name'][$i-1]."', '".$_POST['quantity'][$i-1]."', '".$_POST['price'][$i-1]."', '{$emp}', '{$rol}' <br>";
                      $newVal=(int)$_POST['prod_qty'][$i-1]-(int)$_POST['quantity'][$i-1];
                      $sql="UPDATE `product` SET `QTY_STOCK` = '$newVal' WHERE NAME = '{$_POST['name'][$i-1]}'";
                      mysqli_query($db,$sql)or die (mysqli_error($db)); 
  
                      $query = "INSERT INTO `transaction_details`
                                 (`ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`)
                                 VALUES (Null, '{$today}', '".$_POST['name'][$i-1]."', '".$_POST['quantity'][$i-1]."', '".$_POST['price'][$i-1]."', '{$emp}', '{$rol}')";
  
                      mysqli_query($db,$query)or die (mysqli_error($db));
                       
                    }
                      $query111 = "INSERT INTO `transaction`
                                 (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`)
                                 VALUES (Null,'{$customer}','{$countID}','{$subtotal}','{$lessvat}','{$netvat}','{$addvat}','{$total}','{$cash}','{$date}','{$today}')";
                      mysqli_query($db,$query111)or die (mysqli_error($db));
                  }else{
                    unset($_SESSION['pointofsale']);
                    echo'
                    <script type="text/javascript">
                    alert("Failed");
                    window.location = "pos.php";
                  </script>
                    ';
                    exit();
                  }                    
                break;
              }
                    
                    unset($_SESSION['pointofsale']);
               ?>
              <script type="text/javascript">
                alert("Success.");
                window.location = "pos.php";
              </script>
          </div>



























<?php
              // switch($_GET['action']){
              //   case 'add':     
              //       $query = "INSERT INTO transaction_details
              //                  (`ID`, `PRODUCTS`, `EMPLOYEE`, `ROLE`)
              //                  VALUES (Null, 'here', '{$emp}', '{$rol}')";
              //       mysqli_query($db,$query)or die ('Error in Database '.$query);
              //       $query2 = "INSERT INTO `transaction`
              //                  (`TRANS_ID`, `CUST_ID`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`)
              //                  VALUES (Null,'{$customer}','{$subtotal}','{$lessvat}','{$netvat}','{$addvat}','{$total}','{$cash}','{$date}','{$today}'')";
              //       mysqli_query($db,$query2)or die ('Error in updating Database2 '.$query2);
              //   break;
              // }

              // mysqli_query($db,"INSERT INTO transaction_details
              //                 (`ID`, `PRODUCTS`, `EMPLOYEE`, `ROLE`)
              //                 VALUES (Null, 'a', '{$emp}', '{$rol}')");

              // mysqli_query($db,"INSERT INTO `transaction`
              //                 (`TRANS_ID`, `CUST_ID`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_DETAIL_ID`)
              //                 VALUES (Null,'{$customer}',{$subtotal},{$lessvat},{$netvat},{$addvat},{$total},{$cash},'{$date}',(SELECT MAX(ID) FROM transaction_details))");

              // header('location:posdetails.php');

            ?>
<!--  <script type="text/javascript">
      alert("Transaction successfully added.");
      window.location = "pos.php";
      </script> -->