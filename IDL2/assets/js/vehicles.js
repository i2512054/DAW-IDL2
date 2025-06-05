let selID = 0;
let selAction = "";
const URL_BASE_API = "";
//INIT: CONSUMO DE APIS: VEHÍCULOS, CATEGORÍAS, MARCA, COLOR Y COMBUSTIBLE
async function postVehicle(raw) {
    const response = await fetch(URL_BASE_API + 'be/vehicles', {
        method: "POST",
        body: JSON.stringify(raw),
        headers: {"Content-type": "application/json; charset=UTF-8"}
    });
    json = await response.json();
    return json;
}
async function putVehicle(raw) {
    const response = await fetch(URL_BASE_API + 'be/vehicles/' + raw.id, {
        method: "PUT",
        body: JSON.stringify(raw),
        headers: {"Content-type": "application/json; charset=UTF-8"}
    });
    json = await response.json();
    return json;
}
async function deleteVehicle(id) {
    const response = await fetch(URL_BASE_API + 'be/vehicles/' + id, {
        method: "DELETE"
    });
    let json = await response.json();
    return json;
}
async function getAllVehicle() {
    const response = await fetch(URL_BASE_API + 'be/vehicles', {
        method: "GET"
    });
    let json = await response.json();
    return json;
}
async function getByIdVehicle(id) {
    const response = await fetch(URL_BASE_API + 'be/vehicles/' + id, {
        method: "GET"
    });
    let json = await response.json();
    return json;
}
async function getAllCategory() {
    const response = await fetch(URL_BASE_API + 'be/categories', {
        method: "GET"
    });
    let json = await response.json();
    return json;
}
async function getAllBrand() {
    const response = await fetch(URL_BASE_API + 'be/brands', {
        method: "GET"
    });
    let json = await response.json();
    return json;
}
async function getAllColor() {
    const response = await fetch(URL_BASE_API + 'be/colors', {
        method: "GET"
    });
    let json = await response.json();
    return json;
}
async function getAllFuel() {
    const response = await fetch(URL_BASE_API + 'be/fuels', {
        method: "GET"
    });
    let json = await response.json();
    return json;
}
//END: CONSUMO DE APIS: VEHÍCULOS, CATEGORÍAS, MARCA, COLOR Y COMBUSTIBLE

//INIT: CARGA DE DATOS PARA SELECTS Y TABLE
async function onLoadCategory() {
    let list = await getAllCategory();
    $('#cbo-category').html("<option value=''>Seleccione Categoría ...</option>");
    for(const item of list.data) {
        let sHTML = "<option value='" + item.id + "'>" + item.name + "</opion>";
        $('#cbo-category').append(sHTML);
    }
}
async function onLoadBrand() {
    let list = await getAllBrand();
    $('#cbo-brand').html("<option value=''>Seleccione Marca ...</option>");
    for(const item of list.data) {
        let sHTML = "<option value='" + item.id + "'>" + item.name + "</opion>";
        $('#cbo-brand').append(sHTML);
    }
}
async function onLoadColor() {
    let list = await getAllColor();
    $('#cbo-color').html("<option value=''>Seleccione Color ...</option>");
    for(const item of list.data) {
        let sHTML = "<option value='" + item.id + "'>" + item.name + "</opion>";
        $('#cbo-color').append(sHTML);
    }
}
async function onLoadFuel() {
    let list = await getAllFuel();
    $('#cbo-fuel').html("<option value=''>Seleccione Combustible ...</option>");
    for(const item of list.data) {
        let sHTML = "<option value='" + item.id + "'>" + item.name + "</opion>";
        $('#cbo-fuel').append(sHTML);
    }
}
function onLoadYear() {
    $('#cbo-year').html("<option value=''>Seleccione Año ...</option>");
    for(let i = 2010; i <= 2025; i++) {
        let sHTML = "<option value='" + i + "'>" + i + "</opion>";
        $('#cbo-year').append(sHTML);
    }
}
//END: CARGA DE DATOS PARA SELECTS Y TABLE

//INIT: OPERACIONES CRUD DE VEHÍCULOS
//LISTAR VEHÍCULOS
async function onLoadVehicle() {
    let list = await getAllVehicle();
    $('#div-list-body').html("");
    let sHTML = "";
    sHTML += "<div class='table-responsive'>";
    sHTML += "    <table id='table-list' class='table table-striped table-borderless table-hover'>";
    sHTML += "        <thead class='table-dark'>";
    sHTML += "            <tr>";
    sHTML += "                <th style='background-color: #6b095b;' width='60'></th>";
    sHTML += "                <th style='background-color: #6b095b;' width='60'></th>";
    sHTML += "                <th style='background-color: #6b095b;'>Categoría</th>";
    sHTML += "                <th style='background-color: #6b095b;'>Marca</th>";
    sHTML += "                <th style='background-color: #6b095b;'>Color</th>";
    sHTML += "                <th style='background-color: #6b095b;'>Placa</th>";
    sHTML += "                <th style='background-color: #6b095b;'>Año</th>";
    sHTML += "                <th style='background-color: #6b095b;'>Combustible</th>";
    sHTML += "                <th style='background-color: #6b095b;'>Precio</th>";
    sHTML += "                <th style='background-color: #6b095b;'>Fecha Creación</th>";
    sHTML += "            </tr>";
    sHTML += "        </thead>";
    sHTML += "        <tbody>";
    for(const item of list.data) {
        sHTML += "            <tr class='align-middle'>";
        sHTML += "                <td><button type='button' class='btn btn-warning' onclick='onSelCategoryUpdate(" + item.id + ");'><i class='fas fa-pen-to-square'></i></button></td>";
        sHTML += "                <td><button type='button' class='btn btn-danger' onclick='onSelCategoryRemove(" + item.id + ");'><i class='fas fa-trash-can'></i></button></td>";
        sHTML += "                <td><img src='assets/img/category/" + item.categoryResource + "' width='193' /></td>";
        sHTML += "                <td>" + item.brandName + "</td>";
        sHTML += "                <td>" + item.colorName + "</td>";
        sHTML += "                <td>" + item.plate + "</td>";
        sHTML += "                <td>" + item.year + "</td>";
        sHTML += "                <td>" + item.fuelName + "</td>";
        sHTML += "                <td>US$ " + item.price + "</td>";
        sHTML += "                <td>" + item.created_at + "</td>";
        sHTML += "            </tr>";
    }
    sHTML += "        </tbody>";
    sHTML += "    </table>";
    sHTML += "</div>";
    $('#div-list-body').append(sHTML);
}
//ENCONTRAR VEHÏCULO POR ID
async function onSelCategoryUpdate(id) {
    selID = id;
    selAction = "U";
    let vehicle = await getByIdVehicle(selID);
    $('#cbo-category').val("" + vehicle.data.category_id);
    $('#cbo-brand').val("" + vehicle.data.brand_id);
    $('#cbo-color').val("" + vehicle.data.color_id);
    $('#cbo-fuel').val("" + vehicle.data.fuel_id);
    $('#cbo-year').val("" + vehicle.data.year);
    $('#txt-plate').val("" + vehicle.data.plate);
    $('#txt-price').val("" + vehicle.data.price);
    document.getElementById('div-modal-view-crud-label').innerHTML = "Actualizar Vehículo";
    document.getElementById('bt-view-crud').click();
}
//ELIMINAR VEHÍCULO POR ID
async function onDelete() {
    await deleteVehicle(selID);
    await onLoadVehicle();
    selAction = "";
    selID = 0;
}
//MÉTODO PARA CREAR Y ACTUALIZAR VEHÍCULO
async function onSave() {
    let id = selID;
    let categoryId = $('#cbo-category').val();
    let brandId = $('#cbo-brand').val();
    let colorId = $('#cbo-color').val();
    let fuelId = $('#cbo-fuel').val();
    let yearId = $('#cbo-year').val();
    let plate = $('#txt-plate').val();
    let price = $('#txt-price').val();
    if(categoryId == "") {
        onShowMessage("Por favor, seleccione la Categoría del Vehículo", "#div-modal-view-crud");
        return false;
    }
    if(brandId == "") {
        onShowMessage("Por favor, seleccione la Marca del Vehículo", "#div-modal-view-crud");
        return false;
    }
    if(colorId == "") {
        onShowMessage("Por favor, seleccione el Color del Vehículo", "#div-modal-view-crud");
        return false;
    }
    if(yearId == "") {
        onShowMessage("Por favor, seleccione el Año del Vehículo", "#div-modal-view-crud");
        return false;
    }
    if(fuelId == "") {
        onShowMessage("Por favor, seleccione el Combustible del Vehículo", "#div-modal-view-crud");
        return false;
    }
    if(plate == "") {
        onShowMessage("Por favor, especifique la Placa del Vehículo", "#div-modal-view-crud");
        return false;
    }
    if(price == "") {
        onShowMessage("Por favor, especifique el Precio del Vehículo", "#div-modal-view-crud");
        return false;
    }
    let raw = {
        id: id, category_id: categoryId, brand_id: brandId, color_id: colorId, fuel_id: fuelId, plate: plate, year: yearId, price: price
    };
    if(selAction == "C") {
        await postVehicle(raw);//CREAR VEHÍCULO
    } else {
        await putVehicle(raw);//ACTUALIZAR VEHÍCULO
    }
    selAction = "";
    selID = 0;
    $('#cbo-category, #cbo-brand, #cbo-color, #cbo-year, #cbo-fuel, #txt-plate, #txt-price').val("");
    await onLoadVehicle();
}
//END: OPERACIONES CRUD DE VEHÍCULOS

//INIT: MÉTODOS PARA MOSTRAR MODALES
function onShowCRUD() {
    selAction = "C";
    $('#cbo-category, #cbo-brand, #cbo-color, #cbo-year, #cbo-fuel, #txt-plate, #txt-price').val("");
    document.getElementById('div-modal-view-crud-label').innerHTML = "Crear Vehículo";
    document.getElementById('bt-view-crud').click();
}
function onSelCategoryRemove(id) {
    selID = id;
    selAction = "D";
    document.getElementById('bt-view-status').click();
}
function onShowMessage(message, idModal) {
    $('#pModalMessage').html(message);
    $('#btAlertMessage').click();
    $('#bt-show-message-success').attr("data-bs-target", idModal);
}
//END: MÉTODOS PARA MOSTRAR MODALES
$(document).ready(async function() {
    onLoadYear();//CARGA DE DATOS DE AÑOS
    await onLoadCategory();//CARGA ASÍNCRONA DE CATEGORÍAS
    await onLoadBrand();//CARGA ASÍNCRONA DE MARCAS
    await onLoadColor();//CARGA ASÍNCRONA DE COLORES
    await onLoadFuel();//CARGA ASÍNCRONA DE COMBUSTIBLES
    await onLoadVehicle();//CARGA ASÍNCRONA DE VEHÍCULOS
});