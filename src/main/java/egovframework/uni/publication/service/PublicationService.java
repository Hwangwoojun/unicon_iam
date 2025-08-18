package egovframework.uni.publication.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface PublicationService {
	
	List<Map<String, String>> selectPubliList(Map<String, String> map) throws Exception;
	

}
