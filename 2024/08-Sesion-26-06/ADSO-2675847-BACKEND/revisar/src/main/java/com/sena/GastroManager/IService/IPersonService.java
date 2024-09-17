package com.sena.GastroManager.IService;

import com.sena.GastroManager.Dto.IPersonDto;
import com.sena.GastroManager.Entity.Person;

import java.util.List;

public interface IPersonService extends IBaseService<Person>{

    List<IPersonDto> Persons();

}
