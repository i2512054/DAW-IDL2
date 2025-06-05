<?php
namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\ConnectionInterface;

class BrandModel extends Model
{
    protected $table = 'brands';
    protected $primaryKey = 'id';
    protected $allowedFields = ['name', 'ind_status', 'created_at', 'updated_at'];
}