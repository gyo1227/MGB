package com.lec.mgb.command;

import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.ui.Model;

import com.lec.mgb.c.C;
import com.lec.mgb.mybatis.beans.UserInnDAO;
import com.lec.mgb.mybatis.beans.UserInnDTO;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class UserInnReserveOkCommand implements Command {

	@Override
	public void execute(Model model) {
		Map<String, Object> map = model.asMap();
		UserInnDAO dao = C.sqlSesssion.getMapper(UserInnDAO.class);
		int member_uid = (int)map.get("member_uid");
		UserInnDTO dto = (UserInnDTO)map.get("dto");
		
		int cnt = dao.insertBook(member_uid, dto);
		if (cnt == 1) {
			UserInnDTO title = dao.selectTitleByUid(dto.getRoom_uid());
			String api_key = "NCSAIOSBI82GZA8D";
		    String api_secret = "C9HR1CPQBHSZUFVZYAHMMJFMSFHRMHAX";
		    String text = "[귤귤 플래너] 객실이 예약 되었습니다!     \n" + title.getInn_name() 
		    			+ "\n - " + title.getRoom_name() 
		    			+ "\n예약자 명 : " + dto.getBook_member_name() + "님"
		    			+ "\n예약자 번호 : " + dto.getBook_member_tel() 
		    			+ "\n체크인 날짜 : " + dto.getBook_date()
		    			+ "\n총 가격 : " + ("" + dto.getBook_cost()).replaceAll("\\B(?=(\\d{3})+(?!\\d))", ",") + "원";
		    Message coolsms = new Message(api_key, api_secret);

		    // 4 params(to, from, type, text) are mandatory. must be filled
		    HashMap<String, String> params = new HashMap<String, String>();
		    params.put("to", dto.getBook_member_tel());
		    params.put("from", "01063611949");
		    params.put("type", "LMS");
		    params.put("text", text);
		    params.put("app_version", "test app 1.2"); // application name and version

		    try {
		      JSONObject obj = (JSONObject) coolsms.send(params);
		      System.out.println(obj.toString());
		    } catch (CoolsmsException e) {
		      System.out.println(e.getMessage());
		      System.out.println(e.getCode());
		    }
			
			int book_uid = dao.selectBookUidByUid(member_uid).getBook_uid();
			model.addAttribute("book_uid", book_uid);
		}
		
		model.addAttribute("cnt", cnt);
	}

}