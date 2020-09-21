<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GuzzleHttp\Client;
use App\Suscriptor;
use App\SuscriptorTeam;



class UbicacionController extends Controller
{
    public function index()
    {


        $suscriptores = Suscriptor::all();

        foreach ($suscriptores as $suscriptor) {
            $suscriptor->setAttribute('ubicacion', $this->obtenerUbicacion($suscriptor->latitud, $suscriptor->longitud));
            foreach ($suscriptor->team as $team) {
                $team->setAttribute('ubicacion', $this->obtenerUbicacion($team->latitud, $team->longitud));
            }
        }


        return view('home')->with('suscriptores', $suscriptores);
    }


    public function obtenerUbicacion($lat, $long)
    {
        $client = new Client();
        $res = $client->request('GET', 'https://apis.datos.gob.ar/georef/api/ubicacion?lat=' . $lat . '&lon=' . $long);
        $res = json_decode($res->getBody()->getContents());

        $municipio = $res->ubicacion->municipio->nombre ? $res->ubicacion->municipio->nombre : 'SIN DATOS';
        $provincia = $res->ubicacion->provincia->nombre ? $res->ubicacion->provincia->nombre : 'SIN DATOS';

        return $municipio . ' - ' . $provincia;
    }


    public function filter(Request $request)
    {
        $suscriptores = Suscriptor::where('nombre', 'like', "%" . $request->busqueda . "%")->orWhere('apellido', 'like', "%" . $request->busqueda . "%")->get();

        foreach ($suscriptores as $suscriptor) {
            $suscriptor->setAttribute('ubicacion', $this->obtenerUbicacion($suscriptor->latitud, $suscriptor->longitud));
            foreach ($suscriptor->team as $team) {
                $team->setAttribute('ubicacion', $this->obtenerUbicacion($team->latitud, $team->longitud));
            }
        }

        return view('home')->with(
            [
                'suscriptores' => $suscriptores,
                'busqueda' => $request->busqueda
            ]
        );
    }

    public function detalle($id)
    {
        $suscriptor = Suscriptor::find($id);
        $suscriptor->setAttribute('ubicacion', $this->obtenerUbicacion($suscriptor->latitud, $suscriptor->longitud));


        return view('detalle_suscriptor')->with('suscriptor', $suscriptor);
    }

    public function detalleTeam($id)
    {
        $suscriptor = SuscriptorTeam::find($id);
        $suscriptor->setAttribute('ubicacion', $this->obtenerUbicacion($suscriptor->latitud, $suscriptor->longitud));


        return view('detalle_team')->with('suscriptor', $suscriptor);
    }
}
