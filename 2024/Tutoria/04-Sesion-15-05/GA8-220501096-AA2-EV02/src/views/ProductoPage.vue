<template>
    <ion-page>
        <ion-header :translucent="true">
            <ion-toolbar>
                <ion-title>Producto</ion-title>
            </ion-toolbar>
        </ion-header>

        <ion-content :fullscreen="true">
            <ion-header collapse="condense">
                <ion-toolbar>
                    <ion-title size="large">Producto</ion-title>
                </ion-toolbar>
            </ion-header>
            <div id="container">
                <!-- div para boton de busqueda  -->
                <div>
                    <br>
                    <strong>Lista de Productos</strong>
                    <ion-input placeholder="Buscar Producto"></ion-input>
                    <ion-button>Search</ion-button>
                </div>
                <br>

                <div>
                    <br>
                    <strong>Registrar categorías</strong>
                    <ion-form>
                        <ion-item>
                            <ion-input type="hidden"></ion-input>
                            <ion-label position="floating">Nombre</ion-label>
                            <ion-input type="text"></ion-input>
                        </ion-item>
                        <ion-item>
                            <ion-label position="floating">Descripcion</ion-label>
                            <ion-input type="text"></ion-input>
                        </ion-item>
                        <ion-item>
                            <ion-label position="floating">Precio</ion-label>
                            <ion-input type="number"></ion-input>
                        </ion-item>
                        <ion-item>
                            <ion-label position="floating">Stock</ion-label>
                            <ion-input type="number"></ion-input>
                        </ion-item>
                        <ion-item>
                            <ion-label>Categoria</ion-label>
                            <ion-select placeholder="Seleccionar estado" value="Activo">
                                <ion-select-option value="1">Grano</ion-select-option>
                                <ion-select-option value="2">Lácteos</ion-select-option>
                                <ion-select-option value="3">Frutas</ion-select-option>
                                <ion-select-option value="4">Verduras</ion-select-option>
                            </ion-select>
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
                            <ion-label>Precio</ion-label>
                            <ion-label>Stock</ion-label>
                            <ion-label>Categoria</ion-label>
                            <ion-label>Estado</ion-label>
                        </ion-item>

                        <ion-item>
                            <ion-label>Nombre: Arroz</ion-label>
                            <ion-label>Descripción: Arroz blanco de grano largo</ion-label>
                            <ion-label>Precio: $2.99</ion-label>
                            <ion-label>Stock: 100 unidades</ion-label>
                            <ion-label>Categoría: Grano</ion-label>
                            <ion-label>Estado: Activo</ion-label>
                        </ion-item>

                        <ion-item>
                            <ion-label>Nombre: Leche</ion-label>
                            <ion-label>Descripción: Leche entera pasteurizada</ion-label>
                            <ion-label>Precio: $1.50</ion-label>
                            <ion-label>Stock: 50 unidades</ion-label>
                            <ion-label>Categoría: Lácteos</ion-label>
                            <ion-label>Estado: Activo</ion-label>
                        </ion-item>

                        <ion-item>
                            <ion-label>Nombre: Manzanas</ion-label>
                            <ion-label>Descripción: Manzanas rojas frescas</ion-label>
                            <ion-label>Precio: $0.75</ion-label>
                            <ion-label>Stock: 75 unidades</ion-label>
                            <ion-label>Categoría: Frutas</ion-label>
                            <ion-label>Estado: Activo</ion-label>
                        </ion-item>

                        <ion-item>
                            <ion-label>Nombre: Zanahorias</ion-label>
                            <ion-label>Descripción: Zanahorias orgánicas</ion-label>
                            <ion-label>Precio: $0.50</ion-label>
                            <ion-label>Stock: 60 unidades</ion-label>
                            <ion-label>Categoría: Verduras</ion-label>
                            <ion-label>Estado: Activo</ion-label>
                        </ion-item>

                        <ion-item>
                            <ion-label>Nombre: Harina</ion-label>
                            <ion-label>Descripción: Harina de trigo todo uso</ion-label>
                            <ion-label>Precio: $1.99</ion-label>
                            <ion-label>Stock: 80 unidades</ion-label>
                            <ion-label>Categoría: Grano</ion-label>
                            <ion-label>Estado: Activo</ion-label>
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