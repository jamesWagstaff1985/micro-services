package com.example.microservices.currencyexchangeservice.repositories;

import com.example.microservices.currencyexchangeservice.bean.ExchangeValue;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ExchangeValueRepository extends JpaRepository<ExchangeValue, Long> {

  ExchangeValue findByFromAndTo(String from, String to);

}
