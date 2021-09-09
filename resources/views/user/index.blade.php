@extends('layout.master')

@section('content')
    <div class="container">
    <h4>User Peminjam</h4>

    <p align="right"><a href="{{ route('user.create') }}" class="btn btn-outline-secondary">Tambah user</a></p>
    <table class="table">
        <thead class="table-dark">
            <tr>
                <th>No</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Level</th>
                <th>Edit</th>
                <th>Hapus</th>
            </tr>
        <tbody>
            <?php $i = 0;?>
            @foreach($user_list as $user)
            <tr>
                <td>{{ ++$i }}</td>
                <td>{{$user->name}}</td>
                <td>{{$user->email}}</td>
                <td>{{$user->level}}</td>
    
                <td><a href="{{ route('user.edit', $user->id)}}" class="btn btn-warning btn-sm">Edit</a>
                </td>
                <td>
                    <form method="post" action="{{ route('user.destroy', $user->id) }}">
                    @csrf 
                        <button  class="btn btn-outline-danger" onClick="return confirm('Anda Yakin ingin menghapus data ini?')">Hapus</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
        </thead>
    </table>

    <div class="pull-left">
        <strong>
            Jumlah Peminjam : {{ $jumlah_user}}
            {{$user_list->links()}}
        </strong>
    </div>
</div>
@endsection