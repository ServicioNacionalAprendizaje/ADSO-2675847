<template>
  <div>
    <h1>Registro de Personas</h1>
    <form @submit.prevent="crearPersona" class="mt-4">
      <div class="form-group">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" v-model="nombre" class="form-control" required>
      </div>
      <div class="form-group">
        <label for="apellido">Apellido:</label>
        <input type="text" id="apellido" v-model="apellido" class="form-control" required>
      </div>
      <div class="form-group">
        <label for="edad">Edad:</label>
        <input type="number" id="edad" v-model.number="edad" class="form-control" required>
      </div>
      <div class="form-group">
        <label for="correo">Correo:</label>
        <input type="email" id="correo" v-model="correo" class="form-control" required>
      </div>
      <div class="form-group">
        <label for="telefono">Teléfono:</label>
        <input type="tel" id="telefono" v-model="telefono" class="form-control" required>
      </div>
      <button type="submit" class="btn btn-primary">Registrar</button>
    </form>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: {
    msg: String
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
