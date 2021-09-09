<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use  App\TransaksiPeminjam;
use  App\Peminjam;
use  App\Buku;

class TransaksiPeminjamController extends Controller
{
    // public function __construct(){
    //     $thi ->middleware('auth');
    // }
    public function __construct(){
        $this->middleware('auth');
    }
    public function index(){
        $data_transaksi_peminjam = TransaksiPeminjam::all()->sortBy('id');
        $jumlah_transaksi_peminjam = $data_transaksi_peminjam->count();
        return view('transaksi_peminjam.index', compact('data_transaksi_peminjam', 'jumlah_transaksi_peminjam' ));

    }

    public function create(){
        $list_peminjam = Peminjam::pluck('nama_peminjam', 'id');
        $list_buku  = Buku::pluck('judul_buku', 'id');
        return view('transaksi_peminjam.create', compact('list_peminjam', 'list_buku'));
    }

    public function store(Request $request){
        $transaksi_peminjam = new TransaksiPeminjam;
        $transaksi_peminjam->kode_transaksi = $request->kode_transaksi;
        $transaksi_peminjam->id_peminjam = $request->id_peminjam;
        $transaksi_peminjam->id_buku = $request->id_buku;
        $transaksi_peminjam->tgl_peminjaman = $request->tgl_peminjaman;
        $transaksi_peminjam->tgl_pengembalian = $request->tgl_pengembalian;
        $transaksi_peminjam->save();

        return redirect('/transaksi_peminjam');
    }

    public function detail_peminjam($id){
        $halaman = 'peminjam';
        $peminjam = Peminjam::findOrFail($id);
        return view('transaksi_peminjam.detail_peminjam', compact('halaman', 'peminjam'));
    }
    public function detail_buku($id){
        $halaman = 'buku';
        $buku = Buku::findOrFail($id);
        return view('transaksi_peminjam.detail_buku', compact('halaman', 'buku'));
    }
}
