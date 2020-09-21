<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ServicesSuscriptors extends Model
{
    protected $table = 'service_has_suscriptor';
    protected $primaryKey = 'service_has_suscriptor_id';




    protected $fillable = [
        'service_has_suscriptor_id','service_idservice', 'suscriptor_idSuscriptor', 'pagos_idpagos',
    ];

    public function suscriptor()
    {
        return $this->hasMany(Suscriptor::class);
    }

    public function service()
    {
        return $this->hasMany(Service::class);
    }

    public function pago()
    {
        return $this->hasMany(Pago::class);
    }

}
