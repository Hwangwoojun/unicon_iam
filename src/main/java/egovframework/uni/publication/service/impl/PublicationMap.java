package egovframework.uni.publication.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.egovframe.rte.psl.dataaccess.EgovAbstractMapper;
import org.egovframe.rte.psl.dataaccess.mapper.Mapper;
import org.springframework.stereotype.Repository;

import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

@Mapper("publicationMap")
public interface PublicationMap {
	List<?> selectPubliList(Map<String, String> map) throws Exception;
}
