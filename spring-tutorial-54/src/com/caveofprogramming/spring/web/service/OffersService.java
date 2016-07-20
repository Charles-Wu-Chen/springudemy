package com.caveofprogramming.spring.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import com.caveofprogramming.spring.web.dao.Offer;
import com.caveofprogramming.spring.web.dao.OffersDAO;

@Service
public class OffersService {

	@Autowired
	OffersDAO offersDao;

	public List<Offer> getCurrent() {
		return offersDao.getOffers();
	}

	@Secured({"ROLE_USER", "ROLE_ADMIN"})
	public void create(Offer offer) {
		offersDao.create(offer);
	}

}
