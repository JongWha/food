package gram.model.dto;

public class Truck 
{
	private String truck_name;
	private String truck_intro;
	private String truck_mail;
	private String truck_picture;
	private String menu_name;
	private String price;
	private String piture;
	
	private String user_name;
	private int star;
	private String comment;
	

	
	public String getTruck_name() {
		return truck_name;
	}
	public void setTruck_name(String truck_name) {
		this.truck_name = truck_name;
	}
	public String getTruck_intro() {
		return truck_intro;
	}
	public void setTruck_intro(String truck_intro) {
		this.truck_intro = truck_intro;
	}
	public String getTruck_mail() {
		return truck_mail;
	}
	public void setTruck_mail(String truck_mail) {
		this.truck_mail = truck_mail;
	}
	public String getTruck_picture() {
		return truck_picture;
	}
	public void setTruck_picture(String truck_picture) {
		this.truck_picture = truck_picture;
	}
	public String getMenu_name() {
		return menu_name;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPiture() {
		return piture;
	}
	public void setPiture(String piture) {
		this.piture = piture;
	}
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	 
	public Truck(String truck_name, String truck_intro, String truck_mail, String truck_picture, String menu_name, String price, String piture) 
	{
		super();
		this.truck_name = truck_name;
		this.truck_intro = truck_intro;
		this.truck_mail = truck_mail;
		this.truck_picture = truck_picture;
		this.menu_name = menu_name;
		this.price = price;
		this.piture = piture;
	}
	
	public Truck(String user_name, int star, String comment) 
	{
		super();
		this.user_name = user_name;
		this.star = star;
		this.comment = comment;
	}
	
	
	
}
