package admin.bean.commentCourse;

public class CouClassStuInfo {

	int couNum,stuNum,isTeach,couTerm;
    String isTeachMess,stuName,couName,couFrom,couTermMess;
	public String getCouTermMess() {
		return couTermMess;
	}

	public int getCouTerm() {
		return couTerm;
	}

	public void setCouTerm(int couTerm) {
		if(couTerm == 171801)
			couTermMess = "2017-2018第一学期";
		else if(couTerm == 171802)
			couTermMess = "2017-2018第二学期";
		this.couTerm = couTerm;
	}

	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	public String getCouName() {
		return couName;
	}

	public void setCouName(String couName) {
		this.couName = couName;
	}

	public String getCouFrom() {
		return couFrom;
	}

	public void setCouFrom(String couFrom) {
		this.couFrom = couFrom;
	}



	public int getCouNum() {
		return couNum;
	}

	public void setCouNum(int couNum) {
		this.couNum = couNum;
	}

	public int getStuNum() {
		return stuNum;
	}

	public void setStuNum(int stuNum) {
		this.stuNum = stuNum;
	}

	public int getIsTeach() {
		return isTeach;
	}

	public void setIsTeach(int isTeach) {
		if(isTeach == 0)
			isTeachMess = "否";
		else if(isTeach == 1)
			isTeachMess = "是";
		this.isTeach = isTeach;
	}

	public String getIsTeachMess() {
		return isTeachMess;
	}
}
