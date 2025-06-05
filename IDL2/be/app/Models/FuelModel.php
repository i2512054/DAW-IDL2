<?php
namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Database\ConnectionInterface;

class FuelModel extends Model
{
    protected $table = 'fuels';
    protected $primaryKey = 'id';
    protected $allowedFields = ['name', 'ind_status', 'created_at', 'updated_at'];
}