<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TransaksiPeminjam extends Model
{
    protected $table = 'transaksi_peminjam';

    public function peminjam(){
        return $this->belongsTo('App\Peminjam', 'id_peminjam');
    }

    public function buku(){
        return $this->belongsTo('App\Buku', 'id_buku');
    }
}
