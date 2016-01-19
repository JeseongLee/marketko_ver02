package org.market.marketko.model;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service
public class DealBoardServiceImpl implements DealBoardService {
	@Resource
	private DealBoardDAO dealBoardDAO;
	
	
}
