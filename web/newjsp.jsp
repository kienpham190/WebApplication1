<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Admin</title>

        <!-- Google Font: Source Sans Pro -->
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
        <!-- Font Awesome Icons -->
        <link rel="stylesheet" href="teamplates/admin/plugins/fontawesome-free/css/all.min.css">
        <!-- overlayScrollbars -->
        <link rel="stylesheet" href="teamplates/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="teamplates/admin/dist/css/adminlte.min.css">
    </head>
    <body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
        <div class="wrapper">

            <!-- Preloader -->
            <div class="preloader flex-column justify-content-center align-items-center">
                <img class="animation__wobble" src="teamplates/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60"
                     width="60">
            </div>

            <!-- Navbar -->
            <nav class="main-header navbar navbar-expand navbar-dark">
                <!-- Left navbar links -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                    </li>
                    <li class="nav-item d-none d-sm-inline-block">
                        <a href="viewfoodcontroller" class="nav-link">Home</a>
                    </li>
                    <c:if test="${account!=null}">
                        <div id="account-logout">
                            <c:choose>                               
                                <c:when test="${account!=null}">
                                    <a class="btn btn-primary" href="logout" id="logout">Log out</a>
                                </c:when>
                            </c:choose>
                        </div>
                    </c:if >

                </ul>

                <!-- Right navbar links -->
                <ul class="navbar-nav ml-auto">
                    <!-- Navbar Search -->
                    <li class="nav-item">
                        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
                            <i class="fas fa-search"></i>
                        </a>
                        <div class="navbar-search-block">
                            <form class="form-inline">
                                <div class="input-group input-group-sm">
                                    <input class="form-control form-control-navbar" type="search" placeholder="Search"
                                           aria-label="Search">
                                    <div class="input-group-append">
                                        <button class="btn btn-navbar" type="submit">
                                            <i class="fas fa-search"></i>
                                        </button>
                                        <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <!-- Messages Dropdown Menu -->
                    <li class="nav-item dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#">
                            <i class="far fa-comments"></i>
                            <span class="badge badge-danger navbar-badge">3</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                            <a href="#" class="dropdown-item">
                                <!-- Message Start -->
                                <div class="media">
                                    <img src="teamplates/admin/dist/img/user1-128x128.jpg" alt="User Avatar"
                                         class="img-size-50 mr-3 img-circle">
                                    <div class="media-body">
                                        <h3 class="dropdown-item-title">
                                            Brad Diesel
                                            <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                                        </h3>
                                        <p class="text-sm">Call me whenever you can...</p>
                                        <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                    </div>
                                </div>
                                <!-- Message End -->
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <!-- Message Start -->
                                <div class="media">
                                    <img src="teamplates/admin/dist/img/user8-128x128.jpg" alt="User Avatar"
                                         class="img-size-50 img-circle mr-3">
                                    <div class="media-body">
                                        <h3 class="dropdown-item-title">
                                            John Pierce
                                            <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                                        </h3>
                                        <p class="text-sm">I got your message bro</p>
                                        <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                    </div>
                                </div>
                                <!-- Message End -->
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <!-- Message Start -->
                                <div class="media">
                                    <img src="teamplates/admin/dist/img/user3-128x128.jpg" alt="User Avatar"
                                         class="img-size-50 img-circle mr-3">
                                    <div class="media-body">
                                        <h3 class="dropdown-item-title">
                                            Nora Silvester
                                            <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                                        </h3>
                                        <p class="text-sm">The subject goes here</p>
                                        <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                                    </div>
                                </div>
                                <!-- Message End -->
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                        </div>
                    </li>
                    <!-- Notifications Dropdown Menu -->
                    <li class="nav-item dropdown">
                        <a class="nav-link" data-toggle="dropdown" href="#">
                            <i class="far fa-bell"></i>
                            <span class="badge badge-warning navbar-badge">15</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                            <span class="dropdown-item dropdown-header">15 Notifications</span>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="fas fa-envelope mr-2"></i> 4 new messages
                                <span class="float-right text-muted text-sm">3 mins</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="fas fa-users mr-2"></i> 8 friend requests
                                <span class="float-right text-muted text-sm">12 hours</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="fas fa-file mr-2"></i> 3 new reports
                                <span class="float-right text-muted text-sm">2 days</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                            <i class="fas fa-expand-arrows-alt"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                            <i class="fas fa-th-large"></i>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- /.navbar -->

            <!-- Main Sidebar Container -->
            <aside class="main-sidebar sidebar-dark-primary elevation-4">
                <!-- Brand Logo -->
                <a href="index3.html" class="brand-link">
                    <img src="teamplates/admin/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
                         class="brand-image img-circle elevation-3" style="opacity: .8">
                    <span class="brand-text font-weight-light">Kien FOOD</span>
                </a>

                <!-- Sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel mt-3 pb-3 mb-3 d-flex">

                        <c:if test="${account==null}">
                            <div class="info">
                                <a href="login" class="d-block">Login</a>
                            </div>
                        </c:if>
                        <c:if test="${account!=null}">
                            <div class="info">
                                <a href="#" class="d-block">User: ${account.username}</a>
                            </div>
                            <div class="info">
                                <a href="logout" class="d-block">LogOut</a>
                            </div>
                        </c:if>
                    </div>

                    <!-- SidebarSearch Form -->
                    <div class="form-inline">
                        <div class="input-group" data-widget="sidebar-search">
                            <input class="form-control form-control-sidebar" type="search" placeholder="Search"
                                   aria-label="Search">
                            <div class="input-group-append">
                                <button class="btn btn-sidebar">
                                    <i class="fas fa-search fa-fw"></i>
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Sidebar Menu -->
                    <nav class="mt-2">
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                            data-accordion="false">
                            <!-- Add icons to the links using the .nav-icon class
                                 with font-awesome or any other icon font library -->
                            <li class="nav-item">
                                <a href="#" class="nav-link ">
                                    <i class="nav-icon fas fa-tachometer-alt"></i>
                                    <p>
                                        Users
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="user" class="nav-link ">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Danh sách người dùng</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="create" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Add/Edit users</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="nav-item menu-open">
                                <a href="#" class="nav-link active">
                                    <i class="nav-icon fas fa-tachometer-alt"></i>
                                    <p>
                                        Food
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">
                                    <li class="nav-item">
                                        <a href="food" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Danh sách món ăn</p>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="addFood" class="nav-link active">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Add/Edit food</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                            <li class="nav-item ">
                                <a href="#" class="nav-link">
                                    <i class="nav-icon fas fa-tachometer-alt"></i>
                                    <p>
                                        Khách hàng
                                        <i class="right fas fa-angle-left"></i>
                                    </p>
                                </a>
                                <ul class="nav nav-treeview">

                                    <li class="nav-item">
                                        <a href="khach" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>danh sách khách hàng</p>
                                        </a>
                                    </li>

                                    <li class="nav-item">
                                        <a href="addKhachHang" class="nav-link">
                                            <i class="far fa-circle nav-icon"></i>
                                            <p>Add/Edit customers</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                    <!-- /.sidebar-menu -->
                </div>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <div class="content-header">
                    <div class="container-fluid">
                        <div class="row mb-2">
                            <div class="col-sm-6">
                                <h1 class="m-0">Add/Edit</h1>
                            </div><!-- /.col -->
                            <div class="col-sm-6">
                                <ol class="breadcrumb float-sm-right">
                                    <li class="breadcrumb-item"><a href="admin/user">Home</a></li>
                                    <li class="breadcrumb-item active">Danh sach mon an</li>
                                </ol>
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.container-fluid -->
                </div>
                <!-- /.content-header -->

                <!-- Main content -->
                <section class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card card-primary">
                                    <div class="card-header">
                                        <h3 class="card-title">Add/Edit Video</h3>

                                        <div class="card-tools">
                                            <button type="button" class="btn btn-tool" data-card-widget="collapse"
                                                    title="Collapse">
                                                <i class="fas fa-minus"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="title">Tên món ăn</label>
                                            <input type="text" id="name" name="tenDoAn" value="${food.name}" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="title">Địa điểm món ăn</label>
                                            <input type="text" id="address" name="diaChiDoAn" value="${food.address}" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="title">Mô tả</label>
                                            <input type="text" id="description" name="description" value="${food.description}" class="form-control">
                                        </div>                             
                                        <div class="form-group">
                                            <label for="imageInput">Ảnh</label>
                                            <input type="file" id="picture" accept=".png" name="anh" value="${food.picture}" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="imageInput">Tiền (đơn vị tiền: Việt nam đồng)</label>
                                            <input type="text" id="money" name="money" value="${food.money}" class="form-control">
                                        </div>


                                    </div>
                                    <!-- /.card-body -->
                                </div>
                                <!-- /.card -->
                            </div>
                            <div class="row" style="margin: auto auto;">
                                <button type="button" id="submitBtn" class="btn bg-gradient-success btn-md">Submit</button>
                            </div>
                            <center><h5 id="message"></h5></center>
                        </div>
                    </div>
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Control sidebar content goes here -->
            </aside>
            <!-- /.control-sidebar -->

            <!-- Main Footer -->
            <footer class="main-footer">
                <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
                All rights reserved.
                <div class="float-right d-none d-sm-inline-block">
                    <b>Version</b> 3.1.0
                </div>
            </footer>
        </div>
        <!-- ./wrapper -->

        <!-- REQUIRED SCRIPTS -->
        <!-- jQuery -->
        <script src="teamplates/admin/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="teamplates/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- overlayScrollbars -->
        <script src="teamplates/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
        <!-- AdminLTE App -->
        <script src="teamplates/admin/dist/js/adminlte.js"></script>

        <!-- PAGE PLUGINS -->
        <!-- jQuery Mapael -->
        <script src="teamplates/admin/plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
        <script src="teamplates/admin/plugins/raphael/raphael.min.js"></script>
        <script src="teamplates/admin/plugins/jquery-mapael/jquery.mapael.min.js"></script>
        <script src="teamplates/admin/plugins/jquery-mapael/maps/usa_states.min.js"></script>
        <!-- ChartJS -->
        <script src="teamplates/admin/plugins/chart.js/Chart.min.js"></script>

        <!-- AdminLTE for demo purposes -->
        <script src="teamplates/admin/dist/js/demo.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="teamplates/admin/dist/js/pages/dashboard2.js"></script>


        <script>
            var titleOrigin, hrefOrigin, descriptionOrigin, posterOrigin;
            $(document).ready(function () {
                titleOrigin = $('#title').val();
                hrefOrigin = $('#href').val();
                descriptionOrigin = $('#description').val();
                posterOrigin = $('#poster').val();
            });

            $('#resetBtn').click(function () {
                $('#title').val(titleOrigin);
                $('#href').val(hrefOrigin);
                $('#description').val(descriptionOrigin);
                $('#poster').val(posterOrigin);
                if (posterOrigin.length > 0) {
                    $('#imgPreview').attr('src', posterOrigin);
                }
            });



            $('#submitBtn').click(function () {
                var input = document.getElementById("picture");
                var fileReader = new FileReader();
                let image = undefined;

                // Đọc nội dung của tệp hình ảnh
                fileReader.onload = function (event) {
                    // Truy cập dữ liệu Base64 của hình ảnh
                    var base64String = event.target.result;

                    // Output chuỗi Base64
                    console.log(base64String);
                    image = base64String;
                    let url = 'addFood';
                    var formData = {
                        'name': $('#name').val(),
                        'address': $('#address').val(),
                        'description': $('#description').val(),
                        'money': $('#money').val(),
                        'picture': image
                    };
                    console.log(formData);

                    $.ajax({
                        url: url,
                        type: 'POST',
                        data: formData
                    }).then(function (data) {
                        alert("Them thanh cong");
                        window.location.href = "http://localhost:9999/kienpthe160202/food";
                    }).fail(function (error) {
                        alert("That Bai");
                    });
                };
                fileReader.readAsDataURL(input.files[0]);
            });

        </script>

        <script>
            $('#poster').change(function () {
                var newSrc = $('#poster').val();

                $('#imgPreview').attr('src', newSrc);
            });

        </script>
    </body>
</html>
