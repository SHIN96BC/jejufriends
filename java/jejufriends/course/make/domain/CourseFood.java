package jejufriends.course.make.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class CourseFood {
	// 코스 푸드에 인서트 하기 위한 VO
	long cfnum;
	String fname;
	int cday;
	long cnum;
	String contenttype;
	public CourseFood(long cfnum, String fname, int cday, long cnum, String contenttype) {
		super();
		this.cfnum = cfnum;
		this.fname = fname;
		this.cday = cday;
		this.cnum = cnum;
		this.contenttype = contenttype;
	}
}
