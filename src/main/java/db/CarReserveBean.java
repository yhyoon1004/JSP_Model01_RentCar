package db;

public class CarReserveBean {
	private int reserveno;
	private String id;
	private int no;
	private int CarCount;
	private int dday;
	private String rday;//String으로 받는 것이랑 Date로 받는 것은 차이가 있음
	private int usein;
	private int usewifi;
	private int usehead;
	private int usebaby;
	
	
	
	public int getReserveno() {
		return reserveno;
	}
	public void setReserveno(int reserveno) {
		this.reserveno = reserveno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCarCount() {
		return CarCount;
	}
	public void setCarCount(int carCount) {
		CarCount = carCount;
	}
	public int getDday() {
		return dday;
	}
	public void setDday(int dday) {
		this.dday = dday;
	}
	public String getRday() {
		return rday;
	}
	public void setRday(String rday) {
		this.rday = rday;
	}
	public int getUsein() {
		return usein;
	}
	public void setUsein(int usein) {
		this.usein = usein;
	}
	public int getUsewifi() {
		return usewifi;
	}
	public void setUsewifi(int usewifi) {
		this.usewifi = usewifi;
	}
	public int getUsehead() {
		return usehead;
	}
	public void setUsehead(int usehead) {
		this.usehead = usehead;
	}
	public int getUsebaby() {
		return usebaby;
	}
	public void setUsebaby(int usebaby) {
		this.usebaby = usebaby;
	}
	
}
