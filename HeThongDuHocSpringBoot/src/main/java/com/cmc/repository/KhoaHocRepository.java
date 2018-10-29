/**
 * 
 */
package com.cmc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cmc.entity.KhoaHoc;

/**
 * @author NATuan3
 * @creatdate Oct 26, 2018
 * @modifieddate Oct 26, 2018
 * @content ...
 */
@Repository
public interface KhoaHocRepository extends JpaRepository<KhoaHoc, String>{
        
}
