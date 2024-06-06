const ERROR_TITLE = "Error";
const SUCCESS_TITLE = "Éxito";

const ERROR_MESSAGES = {
    GENERIC: "Ha ocurrido un error. Por favor, inténtalo de nuevo más tarde.",
    DELETE_CONFIRMATION: "¿Estás seguro de que deseas eliminar este elemento?",
    DELETE_SUCCESS: "Elemento eliminado exitosamente.",
    DELETE_ERROR: "No se pudo eliminar el elemento.",
    SAVE_SUCCESS: "Elemento guardado exitosamente.",
    SAVE_ERROR: "No se pudo guardar el elemento.",
    UPDATE_SUCCESS: "Elemento actualizado exitosamente.",
    UPDATE_ERROR: "No se pudo actualizar el elemento."
};

// Función para mostrar un mensaje de error genérico
function showError() {
    swal(ERROR_TITLE, ERROR_MESSAGES.GENERIC, "error");
}

// Función para mostrar un mensaje de confirmación antes de eliminar
function showDeleteConfirmation(callback) {
    swal({
        title: ERROR_TITLE,
        text: ERROR_MESSAGES.DELETE_CONFIRMATION,
        icon: "warning",
        buttons: true,
        dangerMode: true,
    })
    .then((willDelete) => {
        if (willDelete) {
            callback(true);
        } else {
            callback(false);
        }
    });
}

// Función para mostrar un mensaje de éxito al eliminar
function showDeleteSuccess() {
    swal(SUCCESS_TITLE, ERROR_MESSAGES.DELETE_SUCCESS, "success");
}

// Función para mostrar un mensaje de error al eliminar
function showDeleteError() {
    swal(ERROR_TITLE, ERROR_MESSAGES.DELETE_ERROR, "error");
}

// Función para mostrar un mensaje de éxito al guardar
function showSaveSuccess() {
    swal(SUCCESS_TITLE, ERROR_MESSAGES.SAVE_SUCCESS, "success");
}

// Función para mostrar un mensaje de error al guardar
function showSaveError() {
    swal(ERROR_TITLE, ERROR_MESSAGES.SAVE_ERROR, "error");
}

// Función para mostrar un mensaje de éxito al actualizar
function showUpdateSuccess() {
    swal(SUCCESS_TITLE, ERROR_MESSAGES.UPDATE_SUCCESS, "success");
}

// Función para mostrar un mensaje de error al actualizar
function showUpdateError() {
    swal(ERROR_TITLE, ERROR_MESSAGES.UPDATE_ERROR, "error");
}
