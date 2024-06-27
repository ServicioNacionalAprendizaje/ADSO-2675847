package com.sena.GastroManager.IRepository;

import com.sena.GastroManager.Entity.User;
import org.springframework.stereotype.Repository;

@Repository
public interface IUserRepository  extends IBaseRepository<User,Long>{
}
