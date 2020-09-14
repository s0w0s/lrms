package kr.ac.sunmoon.lrms.record;

public class Record {
	private String category;
	private String sorting;
	
	public Record() {
		
	}

	public Record(String category, String sorting) {
		this.category = category;
		this.sorting = sorting;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSorting() {
		return sorting;
	}

	public void setSorting(String sorting) {
		this.sorting = sorting;
	}
	
	

}
