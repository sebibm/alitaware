<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $table = 'service';
    protected $primaryKey = 'service_id';



    protected $fillable = [
        'service_id', 'nombre_servicio', 'precio_nivel_1','precio_nivel_2','precio_nivel_3','precio_nivel_4',
    ];

    public function team()
    {
        return $this->belongsTo(SuscriptorTeam::class);
    }

    public function servicesSuscriptors()
    {
        return $this->belongsTo(ServicesSuscriptors::class);
    }

}
