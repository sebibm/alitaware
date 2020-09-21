<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SuscriptorTeam extends Model
{
    protected $table = 'suscriptor_team';
    protected $primaryKey = 'suscriptor_team_id';


    protected $fillable = [
        'suscriptor_team_id', 'nombre', 'apellido', 'email'
    ];


    public function suscriptor()
    {
        return $this->belongsTo(Suscriptor::class);
    }


}
