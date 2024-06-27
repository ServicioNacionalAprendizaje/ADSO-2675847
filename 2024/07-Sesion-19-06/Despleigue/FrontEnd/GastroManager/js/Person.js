const Person = {
    loadData: function() {
        $.ajax({
            url: `${API_PERSON}`,
            type: 'GET',
            dataType: 'json',
            success: function (result) {
                let html = "";
                $.each(result.data, function (index, item) {
                    html += `<tr>
                        <td>${item.typeDocument}</td>
                        <td>${item.document}</td>
                        <td>${item.firstName}</td>
                        <td>${item.lastName}</td>
                        <td>${item.phone}</td>
                        <td>${item.address}</td>
                        <td>
                            <button class="btn btn-primary" onclick="Person.findById(${item.id})">Editar</button>
                            <button class="btn btn-danger" onclick="Person.delete(${item.id})">Eliminar</button>
                        </td>
                    </tr>`;
                });
                $('#dataListPerson').html(html);
                $('#actualizar-btn-person').hide();
            },
            error: function (xhr, status, error) {
                console.error('Error en la solicitud:', status, error);
                showError();
                Person.clear();
            }
        });
    },

    findById: function(id) {
        $.ajax({
            url: `${API_PERSON}/${id}`,
            type: 'GET',
            dataType: 'json',
            success: function (result) {
                $('#id').val(result.id);
                $('#typeDocument').val(result.typeDocument);
                $('#document').val(result.document);
                $('#firstName').val(result.firstName);
                $('#lastName').val(result.lastName);
                $('#phone').val(result.phone);
                $('#address').val(result.address);
            },
            error: function (xhr, status, error) {
                console.error('Error en la solicitud:', status, error);
                showError();
                Person.clear();
            }
        });
    },

    save: function() {
        const person = Person.dataForm();    
        $.ajax({
            url: API_PERSON,
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(person),
            success: function (result) {
                showSaveSuccess();
                Person.loadData();
                Person.clear();
            },
            error: function (xhr, status, error) {
                console.error('Error en la solicitud:', status, error);            
                showSaveError();
                Person.clear();
            }
        });
    },

    update: function() {
        const person = Person.dataForm();
        person.id = $('#id').val();

        $.ajax({
            url: `${API_PERSON}/${person.id}`,
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(person),
            success: function (result) {
                showUpdateSuccess();
                Person.loadData();
                Person.clear();
            },
            error: function (xhr, status, error) {
                console.error('Error en la solicitud:', status, error);
                showUpdateError();
                Person.clear();
                $('#guardar-btn-person').show();
            }
        });
    },

    delete: function(id) {
        showDeleteConfirmation(function(confirm) {
            if (confirm) {
                $.ajax({
                    url: `${API_PERSON}/${id}`,
                    type: 'DELETE',
                    success: function (result) {
                        showDeleteSuccess();
                        Person.loadData();
                        Person.clear();
                    },
                    error: function (xhr, status, error) {
                        console.error('Error en la solicitud:', status, error);
                        Person.clear();
                        showDeleteError();
                        
                    }
                });
            }
        });
    },

    dataForm: function() {
        const person = {
            typeDocument: $('#typeDocument').val(),
            document: $('#document').val(),
            firstName: $('#firstName').val(),
            lastName: $('#lastName').val(),
            phone: $('#phone').val(),
            address: $('#address').val(),
            state: parseInt($('#state').val())
        };
        return person;
    },

    clear: function() {
        $('#id').val('');
        $('#typeDocument').val('');
        $('#document').val('');
        $('#firstName').val('');
        $('#lastName').val('');
        $('#phone').val('');
        $('#address').val('');
        $('#state').val('');
    }
};
