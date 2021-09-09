@extends('layout.master')

@section('content')
    <div class="container">
    <div class="col-7">
            <h1 class="mt-4">Detail Buku yang dipinjam</h1>

    <div class="card" style="width: 30rem;">
    <div class="card-body">
    <p class="card-text">Kode Peminjam : {{ $peminjam->kode_peminjam }}</p>
    <p class="card-text">Nama Peminjam : {{ $peminjam->nama_peminjam }}</p>

    <table class="table table-striped">
    <thead>
        <th>Judul Buku</th>
    </thead>
    @foreach ($peminjam->buku as $item)
    <tbody>
    <tr>    
        <td>{{ $item->judul_buku}}</td>
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
   
