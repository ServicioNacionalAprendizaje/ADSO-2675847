<?php
abstract class ABaseModel {
    private $estado;
    private $fechaCreacion;
    private $fechaModificacion;
    private $idUsuarioCreacion;
    private $idUsuarioModificacion;

    /**
     * Obtiene el estado de persona
     * @access public
     * @return mixed $estado
     */
    public function getEstado()
    {
        return $this->estado;
    }
    
    /**
     * Coloca el estado a persona
     * @access public
     * @param mixed $estado
     * @return void
     */
    public function setEstado($estado)
    {
        $this->estado = $estado;
    }

    
    /**
     * Obtiene la fecha de creación de persona
     * @access public
     * @return mixed $fechaCreacion
     */
    public function getfechaCreacion()
    {
        return $this->fechaCreacion;
    }
    
    /**
     * Coloca la fecha de creación a persona
     * @access public
     * @param mixed $fechaCreacion
     * @return void
     */
    public function setfechaCreacion($fechaCreacion)
    {
        $this->fechaCreacion = $fechaCreacion;
    }
    
    /**
     * Obtiene la fecha de modificación de persona
     * @access public
     * @return mixed $fechaModificacion
     */
    public function getfechaModificacion()
    {
        return $this->fechaModificacion;
    }
        
    /**
     * Coloca la fecha de modificación a persona
     * @access public
     * @param mixed $fechaModificacion
     * @return void
     */
    public function setfechaModificacion($fechaModificacion)
    {
        $this->fechaModificacion = $fechaModificacion;
    }
    
    /**
     * Obtiene el id del usuario que crea el objeto persona
     * @access public
     * @return integer $idUsuarioCreacion
     */
    public function getIdUsuarioCreacion()
    {
        return $this->idUsuarioCreacion;
    }
    
    /**
     * Coloca el id del usuario que crea el objeto persona
     * @access public
     * @param mixed $idUsuarioCreacion
     * @return void
     */
    public function setIdUsuarioCreacion($idUsuarioCreacion)
    {
        $this->idUsuarioCreacion = $idUsuarioCreacion;
    }
    
    /**
     * Obtiene el id del usuario que modifica el objeto persona
     * @access public
     * @return integer $idUsuarioModificacion
     */
    public function getIdUsuarioModificacion()
    {
        return $this->idUsuarioModificacion;
    }
    
    /**
     * Coloca el id del usuario que modifica el objeto persona
     * @access public
     * @param mixed $idUsuarioModificacion
     * @return void
     */
    public function setIdUsuarioModificacion($idUsuarioModificacion)
    {
        $this->idUsuarioModificacion = $idUsuarioModificacion;
    }
}
?>