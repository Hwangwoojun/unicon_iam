package egovframework.uni.publication.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.egovframe.rte.fdl.idgnr.EgovIdGnrService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.uni.publication.service.PublicationService;

@Service("publicationService")
public class PublicationServiceImpl extends EgovAbstractServiceImpl implements PublicationService{
	private static final Logger LOGGER = LoggerFactory.getLogger(PublicationServiceImpl.class);
	@Resource(name = "publicationDao")
	private PublicationDao publicationDao;
	
//	@Resource(name="publicationDao")
//	private PublicationMap publicationDao;
	/** ID Generation */
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;
	
	@Override
	public List<Map<String, String>> selectPubliList(Map<String, String> map) throws Exception {
		// TODO Auto-generated method stub
		return (List<Map<String, String>>) publicationDao.selectPubliList(map);
	}

}
