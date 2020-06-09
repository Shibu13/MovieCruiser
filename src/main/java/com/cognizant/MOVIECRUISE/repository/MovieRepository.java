package com.cognizant.MOVIECRUISE.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cognizant.MOVIECRUISE.model.MovieItem;

public interface MovieRepository extends JpaRepository<MovieItem,Long>{
	@Query("from MovieItem where favourite='Yes'")
	List<MovieItem> findByFavourite();

	@Query("from MovieItem where name LIKE %?1%"
			+"OR active Like %?1%"
			+"OR category Like %?1%")
	List<MovieItem> findAll(String keyword);

	@Query("select category,count(category) from MovieItem group by category")
	List<Object[]> findGenreAndGenreCount();
	
}
