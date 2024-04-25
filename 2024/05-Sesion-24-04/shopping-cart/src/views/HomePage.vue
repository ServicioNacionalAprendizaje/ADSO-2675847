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
        <strong>Ready to create an app?</strong>        
      </div>

      <ion-button id="present-alert">Ver descripción</ion-button>
      <ion-alert trigger="present-alert" header="Ejemplo con ionic" sub-header="Este es un ejemplo de alerta"
        message="Así se hace una alerta con ionic, sobre vue.js." :buttons="alertButtons"></ion-alert>
    </ion-content>

    <ion-accordion-group>
    <ion-accordion value="first">
      <ion-item slot="header" color="light">
        <ion-label>First Accordion</ion-label>
      </ion-item>
      <div class="ion-padding" slot="content">First Content</div>
    </ion-accordion>
    </ion-accordion-group>  
  </ion-page>
</template>

<script setup lang="ts">
  import { IonAccordion, IonAccordionGroup, IonItem, IonLabel, IonContent, IonHeader, IonPage, IonTitle, IonToolbar, IonAlert, IonButton } from '@ionic/vue';
  const alertButtons = ['Action'];
  import { defineComponent } from 'vue';

  // export default defineComponent({
  //   components: {
  //     IonAccordion,
  //     IonAccordionGroup,
  //     IonItem,
  //     IonLabel,
  //   },
  // });
</script>

<style scoped>
#container {
  text-align: center;

  position: absolute;
  left: 0;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
}

#container strong {
  font-size: 20px;
  line-height: 26px;
}

#container p {
  font-size: 16px;
  line-height: 22px;

  color: #8c8c8c;

  margin: 0;
}

#container a {
  text-decoration: none;
}
</style>
