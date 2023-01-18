package com.beatphobia.mkroom.common.paging;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor 
public class QnaReplyPagingDTO {

	private long bno ;
	private Integer pageNum ;
	private int rowAmountPerPage ;
	
	public QnaReplyPagingDTO(long bno, Integer pageNum) {
	
		this.bno = bno;
		
		if(pageNum == null) {
			this.pageNum = 1 ;
			
		} else {
			this.pageNum = pageNum;	
		}
		
		this.rowAmountPerPage = 5 ;
		
		
		}



}
