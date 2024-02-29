package com.sena.shoppingcar.Controller;

import com.sena.shoppingcar.Entity.Cliente;
import com.sena.shoppingcar.IService.IClienteService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("v1/api/cliente")
public class ClienteController  extends ABaseController<Cliente, IClienteService>{
    public ClienteController(IClienteService service) {
        super(service, "Cliente");
    }
}
