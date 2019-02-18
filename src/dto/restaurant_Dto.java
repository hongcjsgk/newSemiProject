package dto;
import java.io.Serializable;

public class restaurant_Dto implements Serializable {

	private String name;
	private String address;
	private String phone;
	private String parking;
	private String opninghour;
	private String breaktime;
	private String holiday;
	private String category;
	private String menu;
	private String price;
	private String likes;
	
	public restaurant_Dto() {
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getOpninghour() {
		return opninghour;
	}
	public void setOpninghour(String opninghour) {
		this.opninghour = opninghour;
	}
	public String getBreaktime() {
		return breaktime;
	}
	public void setBreaktime(String breaktime) {
		this.breaktime = breaktime;
	}
	public String getHoliday() {
		return holiday;
	}
	public void setHoliday(String holiday) {
		this.holiday = holiday;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getLikes() {
		return likes;
	}
	public void setLikes(String likes) {
		this.likes = likes;
	}
	public restaurant_Dto(String name, String address, String phone, String parking, String opninghour,
			String breaktime, String holiday, String category, String menu, String price, String likes) {
		super();
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.parking = parking;
		this.opninghour = opninghour;
		this.breaktime = breaktime;
		this.holiday = holiday;
		this.category = category;
		this.menu = menu;
		this.price = price;
		this.likes = likes;
	}
	
	
	
}
