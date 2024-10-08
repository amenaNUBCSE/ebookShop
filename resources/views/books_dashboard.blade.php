<!doctype html>
<html lang="es">


<head>
    <title>Administrar Books</title>
    <!-- Required meta tags --->
    <meta charset="UTF-8">

    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons"/>
    <link rel="stylesheet" href={{asset('icons/icons.css')}}>
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- Material Kit CSS -->
    <link href={{asset('css/material-kit.css')}} rel="stylesheet"/>
</head>

<body>
<!-- Navbar Transparent -->
@include('layouts.navigation')
<!-- End Navbar -->


<div class="page-header" style="background-image: url({{asset('img/bg-20.jpg')}}); height: 500px">
    {{--        <span class="mask bg-gradient-dark opacity-6"></span>--}}
</div>

<div style="margin-top: -20rem !important;" class="card card-body shadow-xl mt-n12 mx-3 mx-md-4">
    <div class="container">
        <div class="section text-left my-4">
            <h2 class="title">Book Administration</h2>

        </div>
        <div class="row my-4">
            <div class="col my-2">
                <a href="{{ route('category.index') }}">
                    <div class="card move-on-hover" style="height: 100%">
                        <div class="card-body text-center">
                            <h1 class="text-gradient text-warning"><span id="status1"
                                                                         >{{ count($categories) }}   </span>
                            </h1>
                            <h6 class="mb-0 font-weight-bolder">category</h6>
                        </div>
                    </div>
                </a>

            </div>
            <div class="col my-2">
                <a href="{{ route('subcategory.index') }}">
                    <div class="card move-on-hover">
                        <div class="card-body text-center">
                            <h1 class="text-gradient text-warning"><span id="status1"
                                                                         > {{ count($subcategories)}}   </span>
                            </h1>
                            <h6 class="mb-0 font-weight-bolder">Sub-categories</h6>
                        </div>
                    </div>
                </a>

            </div>
        </div>
        <div class="row my-4">
            <div class="col my-2">
                <a href="{{ route('author.index') }}">
                    <div class="card move-on-hover">
                        <div class="card-body text-center">
                            <h1 class="text-gradient text-warning"><span id="status1"
                                                                         >{{ count($authors)}}</span></h1>
                            <h6 class="mb-0 font-weight-bolder">Authors</h6>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col my-2">
                <a href="{{ route('publisher.index') }}">
                    <div class="card move-on-hover">
                        <div class="card-body text-center">
                            <h1 class="text-gradient text-warning"><span id="status1"
                                                                         >{{count($publishers)}}</span></h1>
                            <h6 class="mb-0 font-weight-bolder">Editorials</h6>
                        </div>
                    </div>
                </a>
            </div>

        </div>
        <div class="row">
            <div class="col my-2">
                <a href="{{ route('book.index') }}">
                    <div class="card move-on-hover">
                        <div class="card-body text-center">
                            <h1 class="text-gradient text-warning"><span id="status1" >{{count($books)}}</span></h1>
                            <h6 class="mb-0 font-weight-bolder">Books</h6>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </div>
</div>
<div class="container">
    <div class="row">

    </div>
</div>
<script src="{{asset('js/core/popper.min.js')}}" type="text/javascript"></script>
<script src="{{asset('js/core/bootstrap.min.js')}}" type="text/javascript"></script>
<script src="{{asset('js/plugins/perfect-scrollbar.min.js')}}"></script>
<script src="{{asset('js/material-kit.min.js')}}" type="text/javascript"></script>
</body>

</html>
