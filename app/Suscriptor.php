<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Suscriptor extends Model
{
    protected $table = 'suscriptor';
    protected $primaryKey = 'suscriptor_id';


    protected $fillable = [
        'suscriptor_id', 'nombre', 'apellido', 'email'
    ];


    public function team()
    {
        return $this->hasMany(SuscriptorTeam::class,'idSuscriptor','suscriptor_id');
    }

    public function servicesSuscriptors()
    {
        return $this->hasMany(ServicesSuscriptors::class);
    }

}
