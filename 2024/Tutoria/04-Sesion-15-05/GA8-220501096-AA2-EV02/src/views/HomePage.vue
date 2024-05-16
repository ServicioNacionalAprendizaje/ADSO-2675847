<template>
  <ion-page>
    <ion-header :translucent="true">
      <ion-toolbar>
        <ion-title>Blank</ion-title>
      </ion-toolbar>
    </ion-header>

    <ion-content :fullscreen="true">
      <ion-header collapse="condense">
        <ion-toolbar>
          <ion-title size="large">Blank</ion-title>
        </ion-toolbar>
      </ion-header>
      <div id="container">
        <strong>Bienvenido a la app</strong>
        <p>
          El carrito de compra es un sistema versátil que brinda al usuario la capacidad de registrar y organizar tanto
          categorías como productos, ofreciendo una experiencia de compra eficiente y personalizada. Además de facilitar
          la navegación y búsqueda de artículos, permite realizar compras de manera rápida y sencilla, proporcionando
          una plataforma intuitiva para llevar a cabo transacciones comerciales en línea de manera exitosa.
        </p>

        <div>
          <ion-img src="https://docs-demo.ionic.io/assets/madison.jpg"
            alt="The Wisconsin State Capitol building in Madison, WI at night">
          </ion-img>
        </div>
        <div>          
          <ion-button @click="IrLogin()" color ="warning">¿Desea iniciar sesión?, Ir</ion-button>
        </div>
      </div>

    </ion-content>
  </ion-page>
</template>

<script setup lang="ts">
import { useRouter } from 'vue-router'; // Importar el enrutador
import { IonContent, IonHeader, IonPage, IonTitle, IonToolbar, IonImg, IonIcon  } from '@ionic/vue';

const router = useRouter(); // Obtener el objeto del enrutador

async function IrLogin() {
  try {
    router.push('/login');
  } catch (error) {
    console.error('Error, ruta no existe:', error);
    throw error;
  }
}

</script>

<style scoped src="../theme/global.css"></style>
