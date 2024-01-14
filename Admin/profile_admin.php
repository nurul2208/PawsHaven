<?php
include '../includes/dbconn.php';
session_start();

// Check if the user is logged in
if (isset($_SESSION['username'])) {
    // User is logged in, display logout button
    echo "<script>function logout() {
            window.location.href = '../controller/logout.php';
        }</script>";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shop - Pet Products</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/admin.css">
</head>

<body>
    <header class="bg-light">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="header.php">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="membership.php">Membership</a></li>
                    <li class="nav-item"><a class="nav-link" href="product.php">Product</a></li>
                    <li class="nav-item"><a class="nav-link" href="order.php">Order</a></li>
                    <li class="nav-item"><a class="nav-link" href="../profile.php">Profile</a></li>
                </ul>
                <a href="../controller/logout.php" class="btn btn-primary" onclick="openLoginPopup()">Logout</a>
            </nav>
        </div>
    </header>
    <main>
     <!-- Breadcrumb -->
    <div class="container">
    <div class="pagetitle">
    <h1>Welcome to Admin!!!</h1>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="header.php">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">AdminProfile</li>
        </ol>
    </nav>
    </div>
    <section class="section profile">
    <div class="row">
      <div class="col-xl-12">
        <div class="card">
          <div class="card-body pt-3"> 
            <!-- Bordered Tabs -->
            <ul class="nav nav-tabs nav-tabs-bordered">
              <li class="nav-item">
                <button class="nav-link active" data-bs-toggle="tab" data-bs-target="../profile.php">Overview</button>
              </li>
            </ul>
            <div class="tab-content pt-2">
              <div class="tab-pane fade show active profile-overview" id="profile-overview">
                <h5 class="card-title">Profile Details</h5>
                <div class="row">
                  <div class="col-lg-3 col-md-4 label ">Full Name</div>
                  <div class="col-lg-9 col-md-8">Admin</div>
                </div>
                <div class="row">
                  <div class="col-lg-3 col-md-4 label">Address</div>
                  <div class="col-lg-9 col-md-8">Paws Haven- Pet Shop</div>
                </div>
                <div class="row">
                  <div class="col-lg-3 col-md-4 label">Phone</div>
                  <div class="col-lg-9 col-md-8">+6012-4567890</div>
                </div>
              </div>
              </div>
              <div class="tab-pane fade profile-edit pt-3" id="profile-edit">
                <h5 class="card-title">Update Profile</h5>
                 <!-- Profile Edit Form -->
                
                 <form method="post" action="profile-engine.php">
                  <div class="row mb-3">
                    <label for="name" class="col-md-4 col-lg-3 col-form-label">Full Name</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="name" type="text" class="form-control" id="name" value="Admin">
                    </div>
                  </div>
                  <div class="row mb-3">
                    <label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="address" type="text" class="form-control" id="Address" value="admin k">
                    </div>
                  </div>
                  <div class="row mb-3">
                    <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="phone" type="text" class="form-control" id="Phone" value="0123456789">
                    </div>
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary" name="save">Save Changes</button>
                  </div>
                </form>
                <!-- End Profile Edit Form -->
                              </div>
            </div>
          </div>
          <!-- End Bordered Tabs --> 
        </div>
      </div>
    </div>
    </div>
  </section>
</main>
<?php include 'footer.php'; ?>