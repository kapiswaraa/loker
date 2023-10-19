@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Tambah Lowongan Kerja</h1>
    <form method="POST" action="{{ route('lowongan.store') }}">
        @csrf
        <div class="form-group">
            <label for="judul">Jobs_id</label>
            <input type="text" class="form-control" id="jobs_id" name="jobs_id">
            <label for="judul">Profs_id</label>
            <input type="text" class="form-control" id="profs_id" name="profs_id">
            <label for="judul">co_id</label>
            <input type="text" class="form-control" id="co_id" name="co_id">
            <label for="judul">city_id</label>
            <input type="text" class="form-control" id="city_id" name="city_id">
            <label for="judul">Judul</label>
            <input type="text" class="form-control" id="jobs_title" name="jobs_title">
            <label for="judul">Status</label>
            <input type="text" class="form-control" id="jobs_sts" name="jobs_sts">
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>
@endsection