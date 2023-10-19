<?php

namespace App\Http\Controllers;

use App\Models\Lowongan;
use Illuminate\Http\Request;

class LowonganController extends Controller
{
    public function index()
    {
        $lowongans = Lowongan::all();
        return view('lowongan.index', compact('lowongans'));
    }

    public function create()
    {
        return view('lowongan.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'judul' => 'required',
        ]);

        Lowongan::create($request->all());

        return redirect()->route('lowongan.index');
    }

    public function edit($id)
    {
        $lowongan = Lowongan::find($id);
        return view('lowongan.edit', compact('lowongan'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'judul' => 'required',
        ]);

        Lowongan::find($id)->update($request->all());

        return redirect()->route('lowongan.index');
    }

    public function destroy($id)
    {
        Lowongan::find($id)->delete();

        return redirect()->route('lowongan.index');
    }
}
