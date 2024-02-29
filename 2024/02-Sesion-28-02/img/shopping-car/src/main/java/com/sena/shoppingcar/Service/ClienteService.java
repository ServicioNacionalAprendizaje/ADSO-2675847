package com.sena.shoppingcar.Service;

import com.sena.shoppingcar.Entity.Cliente;
import com.sena.shoppingcar.IRepository.IBaseRepository;
import com.sena.shoppingcar.IRepository.IClienteRepository;
import com.sena.shoppingcar.IService.IClienteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClienteService extends ABaseService<Cliente> implements IClienteService {

    @Override
    protected IBaseRepository<Cliente, Long> getRepository() {
        return repository;
    }

    @Autowired
    private IClienteRepository repository;
}
