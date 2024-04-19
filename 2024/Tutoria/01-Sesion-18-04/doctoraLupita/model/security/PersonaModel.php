<?php
include '../../environment/conexion.php';
/**
 * Clase Persona
 */
class Persona extends ABaseModel
{
    private $id;
    private $nombre;
    private $apellido;
    private $tipoDocumento;
    private $documento;
    private $edad;
    private $genero;
    
    /**
     * Obtiene el id de persona
     * @access public
     * @return integer $id
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Coloca el id de persona
     * @access public
     * @param integer $id
     * @return void
     */
    public function setId($id)
    {
        $this->id = $id;
    }
    
    /**
     * Obtiene el nombre de persona
     * @access public
     * @return string $nombre
     */
    public function getNombre()
    {
        return $this->nombre;
    }
        
    /**
     * Coloca el nombre de persona
     * @access public
     * @param string $nombre
     * @return void
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;
    }

    /**
     * Obtiene el apellido de persona
     * @access public
     * @return string $apellido
     */
    public function getApellido()
    {
        return $this->apellido;
    }
    
    /**
     * Coloca el apellido de persona
     * @access public
     * @param string $apellido
     * @return void
     */
    public function setApellido($apellido)
    {
        $this->apellido = $apellido;
    }
    
    /**
     * Obtiene el tipo de documento de persona
     * @access public
     * @return mixed $tipoDocumento
     */
    public function getTipoDocumento()
    {
        return $this->tipoDocumento;
    }

    /**
     * Coloca el tipo de ducumento a persona
     * @access public
     * @param mixed $tipoDocumento
     * @return void
     */
    public function setTipoDocumento($tipoDocumento)
    {
        $this->tipoDocumento = $tipoDocumento;
    }

        
    /**
     * Obtiene el documento de persona
     * @access public
     * @return int $documento
     */
    public function getDocumento()
    {
        return $this->documento;
    }
    
    /**
     * Coloca documento a persona
     * @access public
     * @param integer $documento
     * @return void
     */
    public function setDocumento($documento)
    {
        $this->documento = $documento;
    }
    
    /**
     * Obtiene la edad de persona
     * @access public
     * @return void
     */
    public function getEdad()
    {
        return $this->edad;
    }

    /**
     * Coloca la edad de persona
     * @access public
     * @param integer $edad
     * @return void
     */
    public function setEdad($edad)
    {
        $this->edad = $edad;
    }
    
    /**
     * Obtiene el genero de persona
     * @access public
     * @return mixed $genero
     */
    public function getGenero()
    {
        return $this->genero;
    }
    
    /**
     * Obtiene el genero de persona
     * @access public
     * @param mixed $genero
     * @return void
     */
    public function setGenero($genero)
    {
        $this->genero = $genero;
    }    
    
    /**
     * constructor para realizar la conexion a la base de datos
     * @access public
     * @return void
     */
    public function __construct()
    {
        $this->conn = new Conexion();
    }
    
    /**
     * Agregar persona a la base de datos
     * @ access public
     * @return true
     */
    public function Agregar()
    {
        $sentenciaSql = "INSERT INTO persona (
                                        nombre, 
                                        apellido, 
                                        tipo_documento, 
                                        documento, 
                                        edad, 
                                        genero, 
                                        estado, 
                                        id_usuario_creacion
                                    ) 
                                    VALUES (
                                        '$this->nombre', 
                                        '$this->apellido',
                                        '$this->tipoDocumento', 
                                        $this->documento, 
                                        $this->edad, 
                                        '$this->genero', 
                                        '$this->estado', 
                                        $this->idUsuarioCreacion";
        $this->conn->preparar($sentenciaSql);
        $this->conn->ejecutar();
        return true;
    }
    
    /**
     * Modificar persona en la base de datos
     * @access public
     * @return true
     */
    public function Modificar()
    {
        $sentenciaSql = "UPDATE persona SET 
                                        nombre = '$this->nombre', 
                                        apellido = '$this->apellido', 
                                        tipo_documento = '$this->tipoDocumento', 
                                        documento = $this->documento, 
                                        edad = $this->edad, 
                                        genero = '$this->genero', 
                                        estado = '$this->estado', 
                                        id_usuario_modificacion = $this->idUsuarioModificacion
                            WHERE id = $this->id";
        $this->conn->preparar($sentenciaSql);
        $this->conn->ejecutar();
        return true;
    }
    
    /**
     * Eliminar persona de la base de datos
     * @access public
     * @return true
     */
    public function Eliminar()
    {
        $sentenciaSql = "DELETE FROM persona 
                            WHERE id = $this->id";
        $this->conn->preparar($sentenciaSql);
        $this->conn->ejecutar();
        return true;
    }
    
    /**
     * Consultar persona en la base de datos
     * @access public
     * @return true
     */
    public function Consultar()
    {
        $condicion = $this->obtenerCondicion();
        $sentenciaSql = "SELECT * FROM persona $condicion";
        $this->conn->preparar($sentenciaSql);
        $this->conn->ejecutar();
        return true;
    }
        
    /**
     * Obtiene la condición WHERE sql para la búsqueda de persona en la base de datos
     * @access private
     * @return mixed $condicion
     */
    private function obtenerCondicion()
    {
        $whereAnd = " WHERE ";
        $condicion = " ";

        if ($this->id !='') {
            $condicion=$whereAnd.$condicion." id  = $this->id";
            $whereAnd = ' AND ';
        }
        if ($this->nombre !='') {
            $condicion=$condicion.$whereAnd." nombre LIKE '%$this->nombre%' ";
            $whereAnd = ' AND ';
        }
        if ($this->apellido !='') {
            $condicion=$condicion.$whereAnd." apellido LIKE '%$this->apellido%' ";
            $whereAnd = ' AND ';
        }
        if ($this->tipoDocumento !='') {
            $condicion=$condicion.$whereAnd." tipo_documento = '$this->tipoDocumento' ";
            $whereAnd = ' AND ';
        }
        if ($this->documento !='') {
            $condicion=$condicion.$whereAnd." documento = $this->documento ";
            $whereAnd = ' AND ';
        }
        if ($this->genero !='') {
            $condicion=$condicion.$whereAnd." genero = '$this->genero' ";
            $whereAnd = ' AND ';
        }
        if ($this->edad !='') {
            $condicion=$condicion.$whereAnd." edad LIKE '%$this->edad%' ";
            $whereAnd = ' AND ';
        }
        if ($this->estado !='') {
            $condicion=$condicion.$whereAnd." estado = '$this->estado' ";
            $whereAnd = ' AND ';
        }
        return $condicion;
    }
    
    /**
     * Destruye los atributos de persona
     * @access public
     * @return void
     */
    public function __destruct()
    {
        unset($this->id);
        unset($this->nombre);
        unset($this->apellido);
        unset($this->tipoDocumento);
        unset($this->documento);
        unset($this->edad);
        unset($this->genero);
        unset($this->estado);
        unset($this->fechaCreacion);
        unset($this->fechaModificacion);
        unset($this->idUsuarioCreacion);
        unset($this->idUsuarioModificacion);
        unset($this->conn);
    }
}