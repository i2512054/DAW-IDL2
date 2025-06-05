<?php
namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\ConnectionInterface;

class ColorModel extends Model
{
    protected $table = 'colors';
    protected $primaryKey = 'id';
    protected $allowedFields = ['name', 'ind_status', 'created_at', 'updated_at'];
}