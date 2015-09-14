package cn.model;

public class New {
private int nid;
private String utime;
private String title;
private String npic;//图片位置
private String content;
private String author;//作者
private int click;
private int lid;//栏目分类
private int bid;//板块分类
private String source;//新闻来源
private String ntime;//获取月份
private int isDynamic;
public  New(){}
public int getIsDynamic(){
	return isDynamic;
}
public void setIsDynamic(int isDynamic){
	this.isDynamic=isDynamic;
}
public int getNid() {
	return nid;
}
public void setNid(int nid) {
	this.nid = nid;
}
public String getUtime() {
	return utime;
}
public void setUtime(String utime) {
	this.utime = utime;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getNpic() {
	return npic;
}
public void setNpic(String npic) {
	this.npic = npic;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public int getClick() {
	return click;
}
public void setClick(int click) {
	this.click = click;
}
public int getLid() {
	return lid;
}
public void setLid(int lid) {
	this.lid = lid;
}
public int getBid() {
	return bid;
}
public void setBid(int bid) {
	this.bid = bid;
}
public String getSource() {
	return source;
}
public void setSource(String source) {
	this.source = source;
}
}
