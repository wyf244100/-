package cn.jiyun.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.jiyun.mapper.NewsMapper;
import cn.jiyun.mapper.TopicsMapper;
import cn.jiyun.pojo.News;
import cn.jiyun.pojo.Topics;
import cn.jiyun.pojo.TopicsExample;


@Transactional
@Service
public class NewsServicelmpl implements NewsService {

	@Autowired
	private NewsMapper nm;
	@Autowired
	private TopicsMapper tm;
	public List<News> show() {
		// TODO Auto-generated method stub
		return nm.show();
	}
	public List<Topics> toadd() {
		// TODO Auto-generated method stub
		TopicsExample example = new TopicsExample();
		return tm.selectByExample(example);
	}
	public void add(News news) {
		// TODO Auto-generated method stub
		nm.insert(news);
	}
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		nm.deleteByPrimaryKey(id);
	}
	public News update(Integer id) {
		// TODO Auto-generated method stub
		return nm.selectByPrimaryKey(id);
	}
	public void toupdate(News news) {
		// TODO Auto-generated method stub
		nm.updateByPrimaryKey(news);
	}

	

}
