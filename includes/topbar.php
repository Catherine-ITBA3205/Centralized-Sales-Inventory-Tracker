<style>
  .bg-top {
    background-color: hsl(168, 57%, 26%);
      background-image: radial-gradient(650px circle at 20% 20%,
          hsl(168, 41%, 40%) 15%,
          hsl(168, 41%, 30%) 168%,
          hsl(168, 41%, 20%) 75%,
          hsl(168, 41%, 19%) 80%,
          transparent 100%),
        radial-gradient(1250px circle at 80% 80%,
          hsl(168, 41%, 45%) 15%,
          hsl(168, 41%, 30%) 168%,
          hsl(168, 41%, 20%) 75%,
          hsl(168, 41%, 19%) 80%,
          transparent 100%);
    }
</style>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-top topbar mb-4 static-top shadow">

        <ul class="navbar-nav ml-auto">

        <li class="nav-item dropdown no-arrow">
          <a class="nav-link " href="index.php" role="button">
              <div class="navbar-brand font-weight-bold text-white medium">Sales and Inventory System Main Branch</div>
              </a>
          </li>
  </ul>

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <li class="nav-item dropdown no-arrow">
              <a class="nav-link" href="pos.php" role="button">
              <span class="mr-2 d-none d-lg-inline font-weight-bold text-white medium">POS</span>
              </a>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline font-weight-bold text-white medium"><?php echo  $_SESSION['FIRST_NAME']. ' '.$_SESSION['LAST_NAME'] ;?></span>
                <img class="img-profile rounded-circle"
                <?php
                  if($_SESSION['GENDER']=='Male'){
                    echo 'src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS0rikanm-OEchWDtCAWQ_s1hQq1nOlQUeJr242AdtgqcdEgm0Dg"';
                  }else{
                    echo 'src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNngF0RFPjyGl4ybo78-XYxxeap88Nvsyj1_txm6L4eheH8ZBu"';
                  }
                ?>>

              </a>

              <?php 

                $query = 'SELECT ID, FIRST_NAME,LAST_NAME,USERNAME,PASSWORD
                          FROM users u
                          JOIN employee e ON e.EMPLOYEE_ID=u.EMPLOYEE_ID';
                $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
                while ($row = mysqli_fetch_assoc($result)) {
                          $a = $_SESSION['MEMBER_ID'];
                }
                          
            ?>

              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                
                <a class="dropdown-item" href="settings.php?action=edit & id='<?php echo $a; ?>'">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->
          
        <!-- Begin Page Content -->
        <div class="container-fluid">