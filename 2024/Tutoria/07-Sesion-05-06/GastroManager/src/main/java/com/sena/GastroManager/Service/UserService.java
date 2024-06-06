package com.sena.GastroManager.Service;

import com.sena.GastroManager.Entity.User;
import com.sena.GastroManager.IRepository.IBaseRepository;
import com.sena.GastroManager.IRepository.IUserRepository;
import com.sena.GastroManager.IService.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class UserService extends ABaseService<User> implements IUserService {
    @Override
    protected IBaseRepository<User, Long> getRepository() {
        return repository;
    }
    @Autowired
    private IUserRepository repository;
}
