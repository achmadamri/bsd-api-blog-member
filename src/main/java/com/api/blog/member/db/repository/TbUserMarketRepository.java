package com.api.blog.member.db.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.blog.member.db.entity.TbUserMarket;

public interface TbUserMarketRepository extends JpaRepository<TbUserMarket, Integer> {
}