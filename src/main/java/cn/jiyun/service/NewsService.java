package cn.jiyun.service;

import java.util.List;

import cn.jiyun.pojo.News;
import cn.jiyun.pojo.Topics;

public interface NewsService {

	List<News> show();

	List<Topics> toadd();

	void add(News news);

	void delete(Integer id);

	News update(Integer id);

	void toupdate(News news);



}
