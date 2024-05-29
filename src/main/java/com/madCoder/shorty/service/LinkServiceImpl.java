package com.madCoder.shorty.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.madCoder.shorty.model.Link;
import com.madCoder.shorty.repo.LinkRepo;

@Service
public class LinkServiceImpl implements LinkService{

	@Autowired
	LinkRepo lr;
	
	@Autowired
	QrSvc qrCodeService;
	
	@Override
	public String addLink(Link l) {
		// TODO Auto-generated method stub
//		lr.save(l);
//		return "Link Generated Successfully";
		 try {
	            // Generate QR code and store it in the link entity
	            String qrCodeData = "localhost:8080/" + l.getBack();
	            byte[] qrCodeImage = qrCodeService.generateQrCode(qrCodeData);
	            
	            l.setQrCode(qrCodeImage);
	            String qrCodeUrl = "/qr-code/" + l.getLid();
	            l.setQrCodeUrl(qrCodeUrl);
	            lr.save(l);
		        return "Link generated successfully.";
	        } catch (Exception e) {
	            e.printStackTrace();
	            return "Error generating QR code.";
	        }

	       
	    }
	
	@Override
    public byte[] getQrCodeImage(int linkId) {
        Optional<Link> optionalLink = lr.findById(linkId);
        if (optionalLink.isPresent()) {
            Link link = optionalLink.get();
            return link.getQrCode();
        } else {
            // Handle case when link with given ID is not found
            return new byte[0];
        }
    }

	
	
	@Override
	public List<Link> getUserLinks(int uid) {
        return lr.findByUid(uid);
    }
	
	@Override
	public String getOg(String s) {
		return lr.getOg(s);
	}
	
	@Override
	public int delLink(int lid) {
		System.out.println(lid);
	    try {
	        lr.deleteById(lid);
	        return 200; // Return 200 for successful deletion
	    }  catch (Exception e) {
	        return 500; // Return 500 for other errors
	    }
	}

}
