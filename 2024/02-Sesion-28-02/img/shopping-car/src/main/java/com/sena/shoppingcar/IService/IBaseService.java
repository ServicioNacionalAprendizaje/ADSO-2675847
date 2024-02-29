package com.sena.shoppingcar.IService;

import com.sena.shoppingcar.Entity.ABaseEntity;

import java.util.List;
import java.util.Optional;

public interface IBaseService <T extends ABaseEntity>{
    T save(T entity) throws Exception;
    void update(T entity, Long id) throws Exception;
    void delete(Long id) throws Exception;
    Optional<T> findById(Long id) throws Exception;
    List<T> all() throws Exception;
}
