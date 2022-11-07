package com.api.blog.member.db.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.blog.member.db.entity.ViewUserMenu;

public interface ViewUserMenuRepository extends JpaRepository<ViewUserMenu, Integer> {
}