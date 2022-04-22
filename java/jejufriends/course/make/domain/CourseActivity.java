package jejufriends.course.make.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class CourseActivity {
	// 코스 엑티비티에 인서트 하기 위한 vO
	long chnum;
	String aname;
	int cday;
	long cnum;
	String contentType;
	public CourseActivity(long chnum, String aname, int cday, long cnum, String contentType) {
		super();
		this.chnum = chnum;
		this.aname = aname;
		this.cday = cday;
		this.cnum = cnum;
		this.contentType = contentType;
	}
}
