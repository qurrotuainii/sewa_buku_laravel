@extends('layout.master')

@section('content')
    <div class="container">
    <h4>Tambah Transaksi Peminjaman</h4>
    <p align="right"><a href="{{ route('transaksi_peminjam.create')}}" class="btn btn-outline-secondary">Tambah Transaksi Peminjam</a></p>
    <table class="table table-striped">
        <thead class="table-dark">
            <tr>
                <th>No</th>
                <th>Kode Transaksi Peminjam</th>
                <th>Nama Peminjam</th>
                <th>Judul Buku</th>
                <th>Tanggal Pinjam</th>
                <th>Tanggal Kembali</th>
            </tr>
        <tbody>
            @foreach ($data_transaksi_peminjam as $transaksi_peminjam)<?php //print_r($peminjam);?>
        <tr>
            <td>{{ $transaksi_peminjam->id}} </td>
            <td>{{ $transaksi_peminjam->kode_transaksi}}</td>
            <td><a href="{{ route('transaksi_peminjam.detail_peminjam', $transaksi_peminjam->peminjam['id']) }}">
                        {{ $transaksi_peminjam->peminjam ['nama_peminjam']}}</a>
            </td>
            <td><a href="{{ route('transaksi_peminjam.detail_buku', $transaksi_peminjam->buku['id']) }}">
                        {{ $transaksi_peminjam->buku ['judul_buku']}}</a>
            </td>
            <td>{{ $transaksi_peminjam->tgl_peminjaman}}</td>
            <td>{{ $transaksi_peminjam->tgl_pengembalian}}</td>
        </tr>
        @endforeach
        </tbody>
        </thead>
        </table>
        <div class="pull-left">
            <strong>
                Jumlah transaksi Peminjaman : {{ $jumlah_transaksi_peminjam}}
                </strong>
        </div>
    </div>
@endsection