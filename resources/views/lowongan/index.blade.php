@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Data Lowongan Kerja</h1>
    <a href="{{ route('lowongan.create') }}" class="btn btn-success">Tambah Lowongan</a>
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Judul</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($lowongans as $lowongan)
            <tr>
                <td>{{ $lowongan->jobs_id }}</td>
                <td>{{ $lowongan->jobs_title }}</td>
                <td>
                    <a href="{{ route('lowongan.edit', $lowongan->jobs_id) }}" class="btn btn-primary">Edit</a>
                    <a href="{{ route('lowongan.destroy', $lowongan->jobs_id) }}" class="btn btn-danger">Hapus</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection