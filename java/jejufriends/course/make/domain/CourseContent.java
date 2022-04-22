package jejufriends.course.make.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class CourseContent {
	// 코스 랜드마크에 인서트 하기 위한 VO
	long clnum;
	String contentname;
	int cday;
	long cnum;
	String contenttype;
	public CourseContent(long clnum, String contentname, int cday, long cnum, String contenttype) {
		super();
		this.clnum = clnum;
		this.contentname = contentname;
		this.cday = cday;
		this.cnum = cnum;
		this.contenttype = contenttype;
	}
}
