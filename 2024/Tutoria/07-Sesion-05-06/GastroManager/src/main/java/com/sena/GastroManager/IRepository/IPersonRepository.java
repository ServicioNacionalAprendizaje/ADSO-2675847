package com.sena.GastroManager.IRepository;

import com.sena.GastroManager.Dto.IPersonDto;
import com.sena.GastroManager.Entity.Person;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IPersonRepository extends IBaseRepository<Person, Long>{

    @Query(value = "SELECT " +
            "   p.type_document typeDocument, " +
            "   p.document," +
            "   p.first_name firstName," +
            "   p.last_name lastName," +
            "   p.phone," +
            "   p.address " +
            "   FROM " +
            "       Person p " +
            "   WHERE p.deleted_at IS NULL ", nativeQuery = true)
    List<IPersonDto> Persons();
}
