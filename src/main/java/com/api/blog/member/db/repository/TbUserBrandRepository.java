package com.api.blog.member.db.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.blog.member.db.entity.TbUserBrand;

public interface TbUserBrandRepository extends JpaRepository<TbUserBrand, Integer> {
}