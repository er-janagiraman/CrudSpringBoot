package com.fa.reporistory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.fa.entity.CrudEntityValidation;
	
	@Repository
	public interface CrudRepoValidation extends JpaRepository<CrudEntityValidation, Long> {

		@Query(value="select username from validation where username=?1",nativeQuery=true)
		String getUserName(String name);
		
		@Query(value="select password from validation where username=?1",nativeQuery=true)
		String getPassword(String name);
		
	}
