package com.sena.GastroManager.Controller;

import com.sena.GastroManager.Entity.Person;
import com.sena.GastroManager.Entity.User;
import com.sena.GastroManager.IService.IPersonService;
import com.sena.GastroManager.IService.IUserService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("api/user")
public class UserController extends ABaseController<User, IUserService> {
    public UserController(IUserService service) {
        super(service, "User");
    }
}
