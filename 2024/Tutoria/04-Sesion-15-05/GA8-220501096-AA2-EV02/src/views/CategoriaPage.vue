<template>
    <ion-page>
        <ion-header :translucent="true">
            <ion-toolbar>
                <ion-title>Categoria</ion-title>
            </ion-toolbar>
        </ion-header>

        <ion-content :fullscreen="true">
            <ion-header collapse="condense">
                <ion-toolbar>
                    <ion-title size="large">Categoria</ion-title>
                </ion-toolbar>
            </ion-header>
            <div id="container">
                <!-- div para boton de busqueda  -->
                <div>
                    <br>
                    <strong>Lista de Categorias</strong>
                    <ion-input placeholder="Buscar Categoria"></ion-input>
                    <ion-button>Search</ion-button>
                </div>
                <br>

                <div>
                    <br>
                    <strong>Registrar categorías</strong>
                    <ion-form>
                        <ion-item>
                            <ion-label position="floating">Nombre</ion-label>
                            <ion-input type="text"></ion-input>
                        </ion-item>
                        <ion-item>
                            <ion-label position="floating">Descripcion</ion-label>
                            <ion-input type="text"></ion-input>
                        </ion-item>
                        <ion-item>
                            <ion-label>Estado</ion-label>
                            <ion-select placeholder="Seleccionar estado" value="Activo">
                                <ion-select-option value="Activo">Activo</ion-select-option>
                                <ion-select-option value="Inactivo">Inactivo</ion-select-option>
                            </ion-select>
                        </ion-item>

                        <!-- Acciones de la form -->
                        <ion-button type="button">Guardar</ion-button>
                        <ion-button type="button">Consultar</ion-button>

                    </ion-form>
                </div>

                <!-- datos de consulta de la bd -->
                <div>
                    <ion-list>
                        <ion-item>
                            <ion-label>Nombre</ion-label>
                            <ion-label>Descripción</ion-label>
                            <ion-label>Estado</ion-label>
                        </ion-item>

                        <ion-item>
                            <ion-label>Producto 1</ion-label>
                            <ion-label>Descripción del producto 1</ion-label>
                            <ion-label>Activo</ion-label>
                        </ion-item>

                        <ion-item>
                            <ion-label>Producto 2</ion-label>
                            <ion-label>Descripción del producto 2</ion-label>
                            <ion-label>Activo</ion-label>
                        </ion-item>

                        <ion-item>
                            <ion-label>Producto 3</ion-label>
                            <ion-label>Descripción del producto 3</ion-label>
                            <ion-label>Activo</ion-label>
                        </ion-item>

                        <ion-item>
                            <ion-label>Producto 4</ion-label>
                            <ion-label>Descripción del producto 4</ion-label>
                            <ion-label>Inactivo</ion-label>
                        </ion-item>

                        <ion-item>
                            <ion-label>Producto 5</ion-label>
                            <ion-label>Descripción del producto 5</ion-label>
                            <ion-label>Activo</ion-label>
                        </ion-item>
                    </ion-list>

                </div>
                <a href="/dashboard">Ir al inicio</a>
            </div>
        </ion-content>
    </ion-page>
</template>
<script setup lang="ts">
import { IonContent, IonHeader, IonPage, IonTitle, IonToolbar, IonInput, IonButton, IonItem, IonLabel } from '@ionic/vue';
</script>