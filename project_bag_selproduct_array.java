package p;
import java.util.*;

public class project_bag_selproduct_array {
	ArrayList<project_bag_selproduct_data> array = new ArrayList<project_bag_selproduct_data>();
	
	public void add(project_bag_selproduct_data product) {
		array.add(product);
	}
	
	public ArrayList<project_bag_selproduct_data> getArray() {
		return array;
	}
}
