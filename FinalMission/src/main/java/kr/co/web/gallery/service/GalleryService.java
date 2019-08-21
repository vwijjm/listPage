package kr.co.web.gallery.service;

import org.springframework.beans.factory.annotation.Autowired;

import kr.co.web.gallery.vo.GalleryVo;

public class GalleryService {
	@Autowired GalleryMapper mapper;
	public GalleryVo selectGallery() throws Exception{
		return mapper.selectGallery();
	}
}
