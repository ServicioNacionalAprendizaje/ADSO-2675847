FROM ubuntu:20.04

# Establecer la zona horaria
RUN apt update && apt install -y tzdata
ENV TZ="America/Bogota"

# Instalar OpenJDK 17
RUN apt update && apt install -y openjdk-17-jre-headless

# Verificar la instalación de Java
RUN java --version

# Instalar curl y limpiar caché de apt
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Variables para Maven
ARG MAVEN_VERSION=3.8.8
ARG USER_HOME_DIR="/root"
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries

# Instalar Maven
RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
  && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
  && rm -f /tmp/apache-maven.tar.gz \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

# Configurar variables de entorno para Maven
ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"

# Copiar scripts y configuraciones de Maven
COPY ./devops/docs/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh
COPY ./devops/docs/settings-docker.xml /usr/share/maven/ref/

# Establecer permisos de ejecución para el script de entrada de Maven
RUN chmod +x /usr/local/bin/mvn-entrypoint.sh

# Establecer el directorio de trabajo
WORKDIR /app-compiled

# Copiar el contenido del proyecto al contenedor
COPY . .

# Copiar las propiedades de aplicación a la ubicación correcta
RUN cp -r ./devops/properties/properties ./src/main/resources/application.properties

# Construir el proyecto Maven
RUN mvn clean install -Dmaven.test.skip=true

# Verificar que el archivo JAR se haya creado
RUN ls -l /app-compiled/target/

# Ejecutar la aplicación
CMD java -jar /app-compiled/target/GastroManager-0.0.1-SNAPSHOT.jar && exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"

# Exponer el puerto
EXPOSE 9000