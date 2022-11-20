<?php
include'../includes/connection.php';
?>
          <!-- Page Content -->
          <div class="col-lg-12">
            <?php
              $pc = $_POST['prodcode'];
              $name = $_POST['name'];
              $desc = $_POST['description'];
              $qty = $_POST['quantity'];
              $pr = $_POST['price']; 
              $cat = $_POST['category'];
              $bra = $_POST['branches'];
              $dats = $_POST['datestock']; 
        
              switch($_GET['action']){
                case 'add':  
                 for($i=0; $i < $qty; $i++){
                    $query = "INSERT INTO product
                              (PRODUCT_ID, PRODUCT_CODE, NAME, DESCRIPTION, QTY_STOCK, PRICE, CATEGORY_ID, BRANCH_ID, DATE_STOCK_IN)
                              VALUES (Null,'{$pc}','{$name}','{$desc}','{$qty}',{$pr},{$cat},{$bra},'{$dats}')";
                    mysqli_query($db,$query)or die ('Error in updating product in Database '.$query);
                    }
                    
                break;
              }
            ?>
              <script type="text/javascript">window.location = "product.php";</script>
          </div>

<?php
include'../includes/footer.php';
?>