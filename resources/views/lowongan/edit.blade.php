@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Edit Lowongan Kerja</h1>
    <form method="POST" action="{{ route('lowongan.update', $lowongan->jobs_id) }}">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="judul">Judul</label>
            <input type="text" class="form-control" id="judul" name="judul" value="{{ $lowongan->judul }}">
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>
@endsection