package com.madCoder.shorty.service;
import java.util.List;

import com.madCoder.shorty.model.Link;
public interface LinkService {
	String addLink(Link l);
	public List<Link> getUserLinks(int uid);
	String getOg(String s);
	byte[] getQrCodeImage(int linkId);
	int delLink(int lid);
}
