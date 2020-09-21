<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
    <script src="https://js.api.here.com/v3/3.1/mapsjs-core.js" type="text/javascript" charset="utf-8"></script>
    <script src="https://js.api.here.com/v3/3.1/mapsjs-service.js" type="text/javascript" charset="utf-8"></script>

    <!-- Styles -->
    <style>
        html,
        body {
            background-color: #fff;
            color: #636b6f;
            font-family: 'Nunito', sans-serif;
            font-weight: 200;
            height: 100vh;
            margin: 0;
        }

        .full-height {
            height: 100vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .links>a {
            color: #636b6f;
            padding: 0 25px;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }

        #map {
            position: absolute;
            top: 0;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>

<body>
    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark indigo">

        <!-- Navbar brand -->
        <a class="navbar-brand" href="#">Examen Alitaware</a>

        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav"
            aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="basicExampleNav">

            <!-- Links -->
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Usuarios</a>
                </li>

            </ul>
            <!-- Links -->
            <form action="/filtrar" method="post" class="form-inline my-2 my-lg-0 ml-auto">
                @csrf
                <input class="form-control" @isset($busqueda) value="{{$busqueda}}" @endisset name="busqueda"
                    type="search" placeholder="Buscar usuario" aria-label="Search">
                <button class="btn btn-outline-white btn-md my-2 my-sm-0 ml-3" type="submit">Buscar</button>
            </form>
        </div>
        <!-- Collapsible content -->
    </nav>
    <!--/.Navbar-->
    <div class="container">
        <div class="content">

            <div class="row mt-5">
                <!-- Card -->
                <div class="card mt-5" style="width: 100%">
                    <!-- Card content -->
                    <div class="card-body">
                        <!-- Title -->
                        <h5 class="card-title"><b> Titular ID: </b>{{$suscriptor->suscriptor_id}}</h5>

                        <h5 class="card-title"><b>Nombre y apellido: </b>{{$suscriptor->nombre}},
                            {{$suscriptor->apellido}}</h5>
                        <!-- Text -->
                        <p class="card-text"><b>Email: </b>{{$suscriptor->email}}</p>
                        <p class="card-text"><b>Ubicación: </b>{{$suscriptor->ubicacion}}</p>
                    </div>
                    <div>
                        <!--Google map-->
                        <div style="width: 100%; height: 480px" id="mapContainer"></div>

                        <script>
                            var platform = new H.service.Platform({
                            'apikey': '729C-2fgs3RoAIJXfHPrGOLjZx05Ds-AkTm2Dc3t7bA'
                        });

                        var svgMarkup = '<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 1000 1000" enable-background="new 0 0 1000 1000" xml:space="preserve"><metadata> Svg Vector Icons : http://www.onlinewebfonts.com/icon </metadata><g><g transform="translate(0.000000,512.000000) scale(0.030000,-0.030000)"><path d="M4646.5,5001.5c-1441.2-151.4-2635.1-1238-2924.5-2661.9c-264.5-1297.4,291.3-3003.1,1634.7-5021.1c467.6-701.4,1100-1517.8,1525.5-1973.9l116.9-124.6l107.3,115c942.9,1013.8,1941.4,2460.7,2502.9,3625.9c636.3,1320.4,856.7,2445.4,666.9,3380.6C7933.2,4024.2,6354.1,5181.7,4646.5,5001.5z M5574.1,4267.5c1042.6-241.5,1809.1-1027.2,2033.3-2083.2c59.4-277.9,59.4-749.3,1.9-1090.5C7389-209.3,6566.8-1778.8,5213.8-3482.5c-111.2-139.9-208.9-251.1-216.6-249.2c-19.2,7.7-231.9,276-490.6,619C3328-1541.2,2601.7-102,2390.9,1084.3c-53.7,308.5-59.4,804.9-11.5,1054c228.1,1161.4,1119.2,2012.3,2274.8,2175.2C4874.6,4344.2,5346,4321.2,5574.1,4267.5z"/><path d="M4656.1,3087c-76.7-17.2-222.3-74.7-325.8-124.6c-153.3-76.7-210.8-120.7-346.9-256.8c-90.1-92-191.6-214.6-228.1-274.1c-289.4-496.4-279.8-1075.1,24.9-1548.5c274.1-421.6,709.1-655.4,1218.9-655.4c519.4,0,962.1,243.4,1234.2,680.3C6839,1881.6,6128,3133,4976.2,3123.4C4874.6,3123.4,4738.5,3108.1,4656.1,3087z M5311.5,2374.1c398.6-185.9,563.4-647.8,369.9-1040.6c-281.7-569.2-1084.7-567.3-1366.4,5.7c-69,138-72.8,155.2-72.8,327.7c1.9,231.9,47.9,360.3,185.9,509.8c176.3,193.6,337.3,260.6,599.8,253C5165.9,2425.8,5221.5,2414.3,5311.5,2374.1z"/></g></g></svg>';

                        var icon = new H.map.Icon(svgMarkup),
                        coords = {lat: {{$suscriptor->latitud}}, lng: {{$suscriptor->longitud}}},
                        marker = new H.map.Marker(coords, {icon: icon});

                                                        // Obtain the default map types from the platform object:
                        var defaultLayers = platform.createDefaultLayers();

                        // Instantiate (and display) a map object:
                        var map = new H.Map(
                        document.getElementById('mapContainer'),
                        defaultLayers.vector.normal.map,
                        {
                        zoom: 6,
                        center: coords
                        });     

                        map.addObject(marker);
                        map.setCenter(coords);

                        </script>
                        <!--Maps-->
                    </div>
                </div>
                <!-- Card -->
            </div>
        </div>
    </div>
</body>
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js">
</script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

</html>