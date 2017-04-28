package model;

public class Member {
	private int id;
	private String user_id;
	private String user_pw;
	private String join_date;
	private String join_edit;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public String getJoin_edit() {
		return join_edit;
	}
	public void setJoin_edit(String join_edit) {
		this.join_edit = join_edit;
	}
	
	@Override
	public String toString() {
		return "member [id=" + id + ", user_id=" + user_id + ", user_pw=" + user_pw + ", join_date=" + join_date
				+ ", join_edit=" + join_edit + "]";
	}
	
}
