@extends('layout.master')

@section('content')
    <div class="container">
    <h4>Edit Peminjam</h4>
    <form method="post" action="{{ route('user.update', $user->id) }}" enctype="multipart/form-data">
    @csrf
        <div class="form-group">
            <label>Name</label>
            <input type="text" name="kode_peminjam" class="form-control" value="{{ $user->name }}">
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="text" name="email" class="form-control" value="{{ $user->email }}">
        </div>
        <div class="form-group">
            <label>Password</label>
            <input value="{{ $user->password }}" id="password" type="password" class="form-control @error('password') is-invalid @enderror"
                    name="password" require autocomplete="new-password">
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong> {{  $message }}</strong>
                                    </span>
                                @enderror
        </div>
        <div class="form-group">
            <label>{{__('Confirm Password')}}</label>
            <input value="{{ $user->password }}" id="password-confirm" type="password" class="form-control"
                    name="password_confirmation" require autocomplete="new-password">
        </div>
        <div class="form-group">
            <label>Level</label>
            <select class="form-control" name="level">
                <option>Pilih Level</option>
                <option value="admin" <?php if($user->level == "admin") echo'selected="selected"';?> >Admin </option>
                <option value="peminjam" <?php if($user->level == "peminjam") echo'selected="selected"';?> >Peminjam </option>
            </select>
        </div>
        <div><button type="submit" class="btn btn-primary">Update</button></div>
    </form>
</div>
@endsection
