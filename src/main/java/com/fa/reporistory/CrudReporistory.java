package com.fa.reporistory;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.fa.entity.CrudEntity;


@Repository
public interface CrudReporistory extends JpaRepository<CrudEntity, Long> {

	@Query(value="select * from user where name=?1",nativeQuery=true)
	CrudEntity getDataByName(String name);

	@Query(value="select id from user where name=?1",nativeQuery=true)
	long getIdByName(String name);
	
}
