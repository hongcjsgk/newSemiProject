package my_page;

import dto.member_Dto;

public interface imy_Dao {
public boolean addMember(member_Dto dto) ;
	
	public boolean getId(String id);
	
	public member_Dto login(member_Dto dto);
}
