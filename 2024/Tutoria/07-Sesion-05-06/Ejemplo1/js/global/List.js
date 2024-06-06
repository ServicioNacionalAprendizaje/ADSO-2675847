// Cargar los datos de las categorías
function ListPerson() {
    $.ajax({
        url: `${API_PERSON}`,
        type: 'GET',
        dataType: 'json',
        success: function(result) {
            let html = `<option value="" disabled selected>Seleccione una categoría</option>`;
            $.each(result.data, function(index, item) {
                html += `<option value="${item.id}">${item.document+" - "+item.firstName+" "+item.lastName}</option>`;
            });
            $('#personId').html(html);
        },
        error: function(xhr, status, error) {
            console.error('Error en la solicitud:', status, error);
        }
    });
}