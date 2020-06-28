package cn.jiyun.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.jiyun.pojo.News;
import cn.jiyun.pojo.Topics;
import cn.jiyun.service.NewsService;

@Controller
public class NewsController {

	@Autowired
	private NewsService ns;
	//展示
	@RequestMapping("show")
	public String show(Model mod, @RequestParam(defaultValue="1",required=true)Integer pageNum){
		PageHelper.startPage(pageNum, 2);
		List<News> nlist= ns.show();
		PageInfo<News> plist = new PageInfo<News>(nlist);
		mod.addAttribute("nlist", plist);
		return "show";
	}
	//去添加
	@RequestMapping("toadd")
	public String toadd(Model mod){
		List<Topics> tlist=ns.toadd();
				mod.addAttribute("tlist", tlist);
		return "add";
	}
	
	//添加
	@RequestMapping("add")
	public String toadd(News news){
		ns.add(news);
		return "redirect:show.action";
	}
	
	//删除
	@RequestMapping("delete")
	public String delete(Integer id){
		ns.delete(id);
		return "redirect:show.action";
	}
	//去修改
	@RequestMapping("toupdate")
	public String delete(Integer id,Model mod){
		News nlist=ns.update(id);
		List<Topics> tlist=ns.toadd();
		mod.addAttribute("nlist", nlist);
		mod.addAttribute("tlist", tlist);
		return "update";
	}
	
	//修改
	@RequestMapping("update")
	public String delete(News news){
		ns.toupdate(news);
		return "redirect:show.action";
	}
}
