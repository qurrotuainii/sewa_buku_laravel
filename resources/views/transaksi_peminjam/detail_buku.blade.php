@extends('layout.master')

@section('content')
    <div class="container">
    <div class="row">
        <div class="col-7">
            <h1 class="mt-4">Detail Buku yang dipinjam</h1>

    <div class="card" style="width: 30rem;">
    <div class="card-body">

    <p class="card-text">Kode Buku : {{ $buku->kode_buku }}</p>
    <p class="card-text">Judul Buku : {{ $buku->judul_buku }}</p>

    <!-- <h4>Detail Buku yang dipinjam</h4>
    <h4>Kode Buku : {{ $buku->kode_buku }}</h4>
    <h4>Judul Buku : {{ $buku->judul_buku }}</h4> -->
    
    <table class="table table-striped">
    <thead>
        <th>Nama Peminjam</th>
    </thead>
    @foreach ($buku->peminjam as $item)
    <tbody>
    <tr>    
        <td>{{ $item->nama_peminjam}}</td>
    </tr>
    </tbody>
    @endforeach
    </table>
    <a href="{{url('/transaksi_peminjam')}}" class="btn btn-outline-info">Kembali</a>
    </div>
    </div>
    </div>
  </div>
</div>
@endsection
   
