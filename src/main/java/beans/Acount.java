package beans;

public class Acount {
	private String user;
	private String password;
	private String message=null;

	public Acount(String user, String password) {
		super();
		this.user = user;
		this.password = password;
	}

	public boolean validate() {
		if (password.length() < 8) {
			message = "password >= 8 characters ^^";
			return false;
		}
		return true;
	}
	
	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
