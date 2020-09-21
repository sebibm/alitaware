<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pago extends Model
{
    protected $table = 'pago';
    protected $primaryKey = 'pago_id';



    protected $fillable = [
        'pago_id', 'monto', 'fecha_pago','fecha_vencimiento',
    ];

    public function servicesSuscriptors()
    {
        return $this->belongsTo('App\ServicesSuscriptors');
    }

}
