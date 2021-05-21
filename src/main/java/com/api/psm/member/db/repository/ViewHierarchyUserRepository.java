package com.api.psm.member.db.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.api.psm.member.db.entity.ViewHierarchyUser;

public interface ViewHierarchyUserRepository extends JpaRepository<ViewHierarchyUser, Integer> {
	
}