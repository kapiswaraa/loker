<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lowongan extends Model
{
    use HasFactory;
    protected $table = 'loker';
    protected $primaryKey = 'jobs_id';

    // Daftar kolom yang dapat diisi
    protected $fillable = ['jobs_title', 'jobs_register', 'jobs_sts'];
}
