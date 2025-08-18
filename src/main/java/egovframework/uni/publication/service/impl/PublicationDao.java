package egovframework.uni.publication.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.egovframe.rte.psl.dataaccess.EgovAbstractMapper;
import org.springframework.stereotype.Repository;

@Repository("publicationDao")
public class PublicationDao extends EgovAbstractMapper {
	
	public List<Map<String, String>> selectPubliList(Map<String, String> map) throws Exception{
		return selectList("publicationDao.selectPubliList", map);
	}

}
