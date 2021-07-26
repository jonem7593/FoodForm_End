package com.fnf.spring.dto;

import lombok.Data;

@Data
public class MemberDto {

	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_mail;
	private String m_addr;
	private int m_point;
	private String m_level;
}
