<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Buku extends Model
{
    protected $table = 'buku';
    protected $fillable = ['judul_buku', 'jmlh_halaman', 'ISBNs', 'pengarang', 'tahun_terbit'];

    public function peminjam(){
        return $this->belongsToMany('App\Peminjam', 'transaksi_peminjam', 'id_buku', 'id_peminjam');
    }

    public function transaksi_peminjam(){
        return $this->hasMany('App\TransaksiPeminjam', 'id_buku');

    }
}
