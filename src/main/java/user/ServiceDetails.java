package user;

import java.io.InputStream;

public class ServiceDetails {
    private String name;
    private String cost;
    private InputStream imagePath;
	public ServiceDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ServiceDetails(String name, String cost, InputStream imagePath) {
		super();
		this.name = name;
		this.cost = cost;
		this.imagePath = imagePath;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public InputStream getImagePath() {
		return imagePath;
	}
	public void setImagePath(InputStream imagePath) {
		this.imagePath = imagePath;
	}
    
    
}
