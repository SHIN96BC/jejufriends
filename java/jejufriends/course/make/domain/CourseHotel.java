package jejufriends.course.make.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class CourseHotel {
	// 코스 호텔에 인서트하기 위한 VO
	long chnum;
	String hname;
	int cday;
	long cnum;
	String contentType;
	public CourseHotel(long chnum, String hname, int cday, long cnum, String contentType) {
		super();
		this.chnum = chnum;
		this.hname = hname;
		this.cday = cday;
		this.cnum = cnum;
		this.contentType = contentType;
	}
}
