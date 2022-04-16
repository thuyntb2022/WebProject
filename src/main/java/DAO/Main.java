package DAO;

public class Main {
public static void main(String[] args) {
	ListDao ld = new ListDao();
	try {
		ld.search("iPhone 11");
	} catch (Exception e) {
		e.printStackTrace();
	}
	System.out.println(ld.getAlst().size());
}
}
