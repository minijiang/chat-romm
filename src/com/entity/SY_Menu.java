package com.entity;

public class SY_Menu {
	private int id ;
	private String menuName;
	private int parents;
	private String url;
	private String onClick;
	private String icon;
	private int orderIndex;
	private int flowID;
	private int disabled;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public int getParents() {
		return parents;
	}
	public void setParents(int parents) {
		this.parents = parents;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getOnClick() {
		return onClick;
	}
	public void setOnClick(String onClick) {
		this.onClick = onClick;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public int getOrderIndex() {
		return orderIndex;
	}
	public void setOrderIndex(int orderIndex) {
		this.orderIndex = orderIndex;
	}
	public int getFlowID() {
		return flowID;
	}
	public void setFlowID(int flowID) {
		this.flowID = flowID;
	}
	public int getDisabled() {
		return disabled;
	}
	public void setDisabled(int disabled) {
		this.disabled = disabled;
	}
	@Override
	public String toString() {
		return "SY_Menu [id=" + id + ", menuName=" + menuName + ", parents="
				+ parents + ", url=" + url + ", onClick=" + onClick + ", icon="
				+ icon + ", orderIndex=" + orderIndex + ", flowID=" + flowID
				+ ", disabled=" + disabled + "]";
	}
	
	
	

}
