<template>
  <ion-page>
    <ion-header :translucent="true">
      <ion-toolbar>
        <ion-title class="cart-title">¡Bienvenido!</ion-title>
      </ion-toolbar>
    </ion-header>

    <ion-content :fullscreen="true">
      <ion-list>
        <!-- Permisos -->
        <ion-card  @click="IrProducto()">
          <ion-card-header>
            <ion-card-title>Ir a Productos</ion-card-title>
          </ion-card-header>

          <ion-card-content>
            <p>Detalles de los productos</p>            
          </ion-card-content>
        </ion-card>
        <ion-card @click="IrCategoria()">
          <ion-card-header>
            <ion-card-title>Ir a Categorías</ion-card-title>
          </ion-card-header>

          <ion-card-content>
            <p>Detalles de las Categorías</p>            
          </ion-card-content>
        </ion-card>
      </ion-list>
    </ion-content>
  </ion-page>
</template>

<script setup lang="ts">
import { useRouter } from 'vue-router'; // Importar el enrutador
import { IonHeader, IonPage, IonTitle, IonToolbar } from '@ionic/vue';

const router = useRouter(); // Obtener el objeto del enrutador

async function IrProducto() {
  try {
    router.push('/producto');
  } catch (error) {
    console.error('Error al acceder a productos:', error);
    throw error;
  }
}
async function IrCategoria() {
  try {
    router.push('/categoria');
  } catch (error) {
    console.error('Error al acceder a categorías:', error);
    throw error;
  }
}
</script>