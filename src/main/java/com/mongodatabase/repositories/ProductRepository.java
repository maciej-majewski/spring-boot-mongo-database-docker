package com.mongodatabase.repositories;

import com.mongodatabase.domain.Product;
import org.springframework.data.repository.CrudRepository;

public interface ProductRepository extends CrudRepository<Product, String> {
}
