<?php
namespace App\Controllers;
 
use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\VehicleModel;

class Vehicles extends ResourceController
{
    use ResponseTrait;

    public function index()//Listar todos los vehículos
    {
        $db = db_connect();
        $sql = $db->table('vehicles');
        $sql->select('vehicles.id, vehicles.category_id, categories.name AS categoryName, categories.resource AS categoryResource, vehicles.brand_id, brands.name AS brandName, vehicles.color_id, colors.name AS colorName, vehicles.fuel_id, fuels.name AS fuelName, vehicles.plate, vehicles.year, vehicles.price, vehicles.ind_status, vehicles.created_at, vehicles.updated_at');
        $sql->join('categories', 'categories.id = vehicles.category_id');
        $sql->join('brands', 'brands.id = vehicles.brand_id');
        $sql->join('colors', 'colors.id = vehicles.color_id');
        $sql->join('fuels', 'fuels.id = vehicles.fuel_id');
        $query = $sql->get();
        $data = [
            'message' => 'Su consulta fue realizada con éxito.',
            'success' => true,
            'data' => $query->getResultArray()
        ];
        return $this->respond($data, 200);
    }
 
    public function show($id = null)//Buscar vehículo por id.
    {
        $model = new VehicleModel();
        $result = $model->getWhere(['id' => $id])->getResult();
        $response = null;
        $message = $result ? 'Su consulta fue realizada con éxito.' : 'No se han encontrado datos.';
        $success = $result ? true : false;
        $code = $result ? 200 : 404;
        $data = $result ? $result[0] : null;
        $response = [
            'message' => $message,
            'success' => $success,
            'data' => $data
        ];
        return $this->respond($response, $code);
    }
 
    public function create()//Crear vehículo
    {
        $model = new VehicleModel();
        $json = $this->request->getJSON();
        $data = [
            'category_id' => $json->category_id,
            'brand_id' => $json->brand_id,
            'color_id' => $json->color_id,
            'fuel_id' => $json->fuel_id,
            'plate' => $json->plate,
            'year' => $json->year,
            'price' => $json->price,
            'ind_status' => 1,
            'created_at' => date("Y-m-d H:i:s"),
            'updated_at' => date("Y-m-d H:i:s")
        ];
        $model->insert($data);
        $response = [
            'message' => 'El registro fue creado con éxito.',
            'success' => true,
            'data' => $data
        ];
        return $this->respondCreated($response, 201);
    }
 
    public function update($id = null)//Actualizar vehículo
    {
        $model = new VehicleModel();      
        $json = $this->request->getJSON();
        $data = [
            'category_id' => $json->category_id,
            'brand_id' => $json->brand_id,
            'color_id' => $json->color_id,
            'fuel_id' => $json->fuel_id,
            'plate' => $json->plate,
            'year' => $json->year,
            'price' => $json->price,
            'ind_status' => 1,
            'created_at' => date("Y-m-d H:i:s"),
            'updated_at' => date("Y-m-d H:i:s")
        ];
        $result = $model->find($id);
        $response = null;
        $code = 200;
        if($result) {
            $model->update($id, $data);
            $response = [
                'message' => 'El registro fue actualizado con éxito.',
                'success' => true,
                'data' => $result
            ];
            $code = 200;
        } else {
            $response = [
                'message' => 'El registro seleccionado no se encuentra en la base de datos.',
                'success' => false,
                'data' => null 
            ];
            $code = 404;
        }
        return $this->respond($response, $code);
    }

    public function delete($id = null)//Eliminar vehículo
    {
        $model = new VehicleModel();
        $result = $model->find($id);
        $response = null;
        $code = 200;
        if($result){
            $model->delete($id);
            $response = [
                'message' => 'El registro fue eliminado con éxito.',
                'success' => true,
                'data' => $result
            ];
            $code = 200;
        }else{
            $response = [
                'message' => 'El registro seleccionado no se encuentra en la base de datos.',
                'success' => false,
                'data' => null
            ];
            $code = 404;
        }
        return $this->respondDeleted($response, $code);
    }
}