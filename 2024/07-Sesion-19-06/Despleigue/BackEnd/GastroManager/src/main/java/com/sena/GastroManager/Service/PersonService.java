package com.sena.GastroManager.Service;

import com.sena.GastroManager.Dto.IPersonDto;
import com.sena.GastroManager.Entity.Person;
import com.sena.GastroManager.IRepository.IBaseRepository;
import com.sena.GastroManager.IRepository.IPersonRepository;
import com.sena.GastroManager.IService.IPersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonService extends ABaseService<Person> implements IPersonService {
    @Override
    protected IBaseRepository<Person, Long> getRepository() {
        return repository;
    }
    @Autowired
    private IPersonRepository repository;

    @Override
    public List<IPersonDto> Persons() {
        return repository.Persons();
    }
}
