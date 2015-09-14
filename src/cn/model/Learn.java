package cn.model;
/*
 * 学习天地
 */
public class Learn {
private int lid;//学习id
private String title;
private String author;
private String content;
private String utime;
private int click;
public Learn(){}
public int getLid() {
	return lid;
}
public void setLid(int lid) {
	this.lid = lid;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getUtime() {
	return utime;
}
public void setUtime(String utime) {
	this.utime = utime;
}
public int getClick() {
	return click;
}
public void setClick(int click) {
	this.click = click;
}

}
