package com.api.blog.member.db.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.blog.member.db.entity.TbUserMenu;

public interface TbUserMenuRepository extends JpaRepository<TbUserMenu, Integer> {
}