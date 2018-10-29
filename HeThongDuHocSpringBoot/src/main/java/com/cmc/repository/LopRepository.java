/**
 * 
 */
package com.cmc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cmc.entity.Lop;

/**
 * @author NATuan3
 * @creatdate Oct 26, 2018
 * @modifieddate Oct 26, 2018
 * @content ...
 */

@Repository
public interface LopRepository extends JpaRepository<Lop, String>{
	List<Lop> findByTenLopContaining(String tenLop);
	
	
}
