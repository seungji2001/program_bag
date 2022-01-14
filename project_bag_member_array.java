package p;
import java.util.*;

public class project_bag_member_array {
	ArrayList<project_bag_member_data> list = new ArrayList<project_bag_member_data>();
	
	public void add(project_bag_member_data m) {
		list.add(m);
	}
	
	public ArrayList<project_bag_member_data> getList(){
		return list;
	}
	
	public Boolean search(String id) {
		for(project_bag_member_data d : list) {
			if(id.equals(d.getId()))
				return true;
		}
		return false;
	}
}
