- App híbrida
  
1. Instalar node.js: `https://nodejs.org/en/download/current`

2. Verificar si se tiene instalado nodejs: `node --version` sobre una consola de comando. Se puede actualizar a node `v20.11.0`, comando `npm install -g node@20.11.0`

3. Instalar Ionic y Cordova:
    * Asegúrate de tener Node.js instalado en tu sistema.
    * Instala Ionic y Cordova globalmente usando npm (Node Package Manager):
    
    `npm install -g @ionic/cli cordova`

4. Ver versión de ionic:  `ionic --version`
   
5. Crear un nuevo proyecto Ionic:
    * Utiliza Ionic CLI para crear un nuevo proyecto:    
    
    `ionic start GA8-220501096-AA2-EV02 blank`

6. Elegir tipo de proyecto
    * Usar
    
    ```
    Angular | https://angular.io
    React   | https://reactjs.org
    Vue     | https://vuejs.org
    ```
    - Para este caso se eligio `vue`, para correr el servicio de la nueva app, ingresar a la raiz principal. 
    1. `cd GA8-220501096-AA2-EV02`
    2. `npm install`
    3. `ionic start GA8-220501096-AA2-EV02 blank --type vue` 


7. Crear cuenta
    ```
    Create free Ionic account? (y/N) 
    ```

8. Portal de IONIC
    
    ```
    https://dashboard.ionicframework.com/
    ```

9. Entrar al directorio del proyecto y ejecutar el comando `ìonic serve`


# Luego de termianar la construcción de la app. Realice. 

# Despliegue

1. Instalar
npm install @capacitor/android

2. Instalación de android en ionic
npx cap add android

3. Compilador 
ionic build

4. Verificador del capacitor
npx cap ls

5. Copiamos el proyecto
npx cap copy android

6. Abrimos el proyecto en Android Studio
npx cap open android
