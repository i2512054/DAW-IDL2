<?php
namespace App\Controllers;
 
use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\CategoryModel;

class Categories extends ResourceController
{
    use ResponseTrait;

    public function index()//Listar todas las categorías
    {
        $model = new CategoryModel();
        $result = $model->findAll();
        $data = [
            'message' => 'Su consulta fue realizada con éxito.',
            'success' => true,
            'data' => $result
        ];
        return $this->respond($data, 200);
    }
 
    public function show($id = null)//Buscar categoría por id.
    {
        $model = new CategoryModel();
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
 
    public function create()//Crear categoría
    {
        $model = new CategoryModel();
        $json = $this->request->getJSON();
        $data = [
            'name' => $json->name,
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
 
    public function update($id = null)//Actualizar categoría
    {
        $model = new CategoryModel();
        $json = $this->request->getJSON();
        $data = [
            'name' => $json->name,
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

    public function delete($id = null)//Eliminar categoría
    {
        $model = new CategoryModel();
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