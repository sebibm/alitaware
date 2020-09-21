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

        .m-b-md {
            margin-bottom: 30px;
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
                @foreach($suscriptores as $suscriptor)
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
                        <p class="card-text"><a type="button" href="/detalle/{{$suscriptor->suscriptor_id}}" class="btn btn-indigo btn-sm">Ver detalles</a>
                        </p>
                        @if(count($suscriptor->team)>0)
                        <table class="table table-striped" style="width: 100%">
                            <thead>
                                <tr>
                                    <th scope="col">Team ID</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Apellido</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Localidad y Provincia</th>
                                    <th scope="col">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($suscriptor->team as $team)
                                <tr>
                                    <th scope="row">{{$team->suscriptor_team_id}}</th>
                                    <td>{{$team->nombre}}</td>
                                    <td>{{$team->apellido}}</td>
                                    <td>{{$team->email}}</td>
                                    <td>{{$team->ubicacion}}</td>
                                    <td><a type="button" href="/detalleTeam/{{$team->suscriptor_team_id}}" class="btn btn-indigo btn-sm">Ver detalles</a></td>
                                </tr>
                                @endforeach

                            </tbody>
                        </table>
                        @else
                        <h3 class="card-title" style="color: #3f51b5">Sin suscriptores</h3>
                        @endif

                    </div>

                </div>
                <!-- Card -->

                @endforeach
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