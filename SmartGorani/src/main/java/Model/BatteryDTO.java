package Model;

public class BatteryDTO {
	private String mb_portserial;
	private int battery_capacity;
	private double battery_usage;
	private String controlstr;




	public String getControlstr() {
		return controlstr;
	}



	public void setControlstr(String controlstr) {
		this.controlstr = controlstr;
	}



	public BatteryDTO(String mb_portserial, int battery_capacity, double battery_usage) {
		super();
		this.mb_portserial = mb_portserial;
		this.battery_capacity = battery_capacity;
		this.battery_usage = battery_usage;
	}
	


	public BatteryDTO() {
		// TODO Auto-generated constructor stub
	}



	public String BatteryDTO() {
		return controlstr;
	}



	public String getMb_portserial() {
		return mb_portserial;
	}

	public void setMb_portserial(String mb_portserial) {
		this.mb_portserial = mb_portserial;
	}


	public int getBattery_capacity() {
		return battery_capacity;
	}

	public void setBattery_capacity(int battery_capacity) {
		this.battery_capacity = battery_capacity;
	}

	public double getBattery_usage() {
		return battery_usage;
	}

	public void setBattery_usage(double battery_usage) {
		this.battery_usage = battery_usage;
	}
	
	
}
