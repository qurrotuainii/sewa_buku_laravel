<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransaksiPeminjam extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transaksi_peminjam', function (Blueprint $table) {
            $table->id();
            $table->string('kode_transaksi')->unique();
            $table->unsignedBigInteger('id_peminjam');
            $table->unsignedBigInteger('id_buku');
            $table->date('tgl_peminjaman');
            $table->date('tgl_pengembalian');
            $table->timestamps();

            $table->primary(['kode_peminjam', 'kode_buku']);

            $table->foreign('id_peminjam')
            ->references('id')->on('peminjam')
            ->noDelete('cascade');

            $table->foreign('id_buku')
            ->references('id')->on('buku')
            ->noDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('transaksi_peminjam');
    }
}
