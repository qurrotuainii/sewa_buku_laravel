<?php

namespace App;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Peminjam extends Model
{
    protected $table = 'peminjam';

    public function telepon(){
        return $this->hasOne('App\Telepon', 'id_peminjam');
    }

    public function jenis_peminjam(){
        return $this->belongsTo('App\JenisPeminjam', 'id_jenis_peminjam');
    }

    public function buku(){
        return $this->belongsToMany('App\Buku', 'transaksi_peminjam', 'id_peminjam', 'id_buku');
    }

    public function transaksi_peminjam(){
        return $this->hasMany('App\TransaksiPeminjam', 'id_peminjam');
    }
}
