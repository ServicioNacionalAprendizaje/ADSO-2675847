<template>
  <ion-page>
    <ion-header :translucent="true">
      <ion-toolbar>
        <ion-title class="cart-title">¡Bienvenido!</ion-title>
      </ion-toolbar>
    </ion-header>

    <div id="login-container">
      <div id="login-form" class="login-form">
        <strong>¡Bienvenido al carrito de compras!</strong>
        <p>Que bueno tenerte de regreso</p>
        <ion-input 
          :value="user" 
          @input="user = $event.target.value" 
          id="user" 
          name="user" 
          label="Usuario: " 
          placeholder="Introduce tu usuario" 
        />
        <ion-input 
          :value="password" 
          @input="password = $event.target.value" 
          type="password" 
          id="password" 
          name="password" 
          label="Contraseña: " 
          placeholder="Introduce tu contraseña" 
        />
      </div>
      <div class="login-button">
        <ion-button @click="login()">Iniciar Sesión</ion-button>
        <ion-button @click="recuperarClave()">Recuperar Clave</ion-button>
      </div>
    </div>
  </ion-page>
</template>

<script setup lang="ts">
import { ref } from 'vue';
import { useRouter } from 'vue-router'; // Importar el enrutador
import { IonHeader, IonPage, IonTitle, IonToolbar, IonInput, IonButton } from '@ionic/vue';

const user = ref('');
const password = ref('');

const router = useRouter(); // Obtener el objeto del enrutador

async function login() {
  try {
    const username = user.value;
    const pass = password.value;

    if (username === 'abcd' && pass === 'abcd') {
      router.push('/dashboard'); 
    } else {
      console.log('Credenciales inválidas');
    }
  } catch (error) {
    console.error('Error al obtener todos los registros:', error);
    throw error;
  }
}

async function recuperarClave() {
  
}
</script>

<style scoped src="../theme/login.css"></style>