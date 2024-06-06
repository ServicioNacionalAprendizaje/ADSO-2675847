const User = {
    loadData: function() {
        $.ajax({
            url: `${API_USER}`,
            type: 'GET',
            dataType: 'json',
            success: function (result) {
                let html = "";
                $.each(result.data, function (index, item) {
                    html += `<tr>
                        <td>${item.email}</td>
                        <td>${item.password}</td>
                        <td>${item.person.document+" "+item.person.firstName+" "+item.person.lastName}</td>                        
                        <td>
                            <button class="btn btn-primary" onclick="User.findById(${item.id})">Editar</button>
                            <button class="btn btn-danger" onclick="User.delete(${item.id})">Eliminar</button>
                        </td>
                    </tr>`;
                });
                $('#dataListUser').html(html);
                $('#actualizar-btn-user').hide();
            },
            error: function (xhr, status, error) {
                console.error('Error en la solicitud:', status, error);
                showError();
                User.clear();
            }
        });
    },

    findById: function(id) {
        $.ajax({
            url: `${API_USER}/${id}`,
            type: 'GET',
            dataType: 'json',
            success: function (result) {
                $('#id').val(result.id);
                $('#user').val(result.user);
                $('#contrasenia').val(result.contrasenia);
                $('#personId').val(result.personId.id);
                $('#actualizar-btn-user').show();
                $('#guardar-btn-user').hide();
            },
            error: function (xhr, status, error) {
                console.error('Error en la solicitud:', status, error);
                showError();
                User.clear();
            }
        });
    },

    save: function() {
        const user = User.dataForm();    
        $.ajax({
            url: API_USER,
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(user),
            success: function (result) {
                showSaveSuccess();
                User.loadData();
                User.clear();
            },
            error: function (xhr, status, error) {
                console.error('Error en la solicitud:', status, error);            
                showSaveError();
                User.clear();
            }
        });
    },

    update: function() {
        const user = User.dataForm();
        user.id = $('#id').val();

        $.ajax({
            url: `${API_USER}/${user.id}`,
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(user),
            success: function (result) {
                showUpdateSuccess();
                User.loadData();
                User.clear();
                $('#guardar-btn-user').show();
            },
            error: function (xhr, status, error) {
                console.error('Error en la solicitud:', status, error);
                showUpdateError();
                User.clear();
            }
        });
    },

    delete: function(id) {
        showDeleteConfirmation(function(confirm) {
            if (confirm) {
                $.ajax({
                    url: `${API_USER}/${id}`,
                    type: 'DELETE',
                    success: function (result) {
                        showDeleteSuccess();
                        User.loadData();
                        User.clear();
                    },
                    error: function (xhr, status, error) {
                        console.error('Error en la solicitud:', status, error);
                        User.clear();
                        showDeleteError();
                    }
                });
            }
        });
    },

    dataForm: function() {
        const user = {
            email: $('#email').val(),
            password: $('#password').val(),
            person: {
                id: $('#personId').val()
            },
            state: parseInt($('#stateUser').val())
        };
        return user;
    },

    clear: function() {
        $('#id').val('');
        $('#email').val('');
        $('#password').val('');
        $('#personId').val('');
    }
};
