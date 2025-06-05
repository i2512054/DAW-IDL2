<?php
namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\ConnectionInterface;

class VehicleModel extends Model
{
    protected $table = 'vehicles';
    protected $primaryKey = 'id';
    protected $allowedFields = ['category_id', 'brand_id', 'color_id', 'fuel_id', 'plate', 'year', 'price', 'ind_status', 'created_at', 'updated_at'];
}