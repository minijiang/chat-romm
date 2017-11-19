package com.entity;

public class SY_Area {
          private int id;  //ID（范围1~99，不能超过99）
          private String areaName;   //抄表辖区名称
          private String remark;     //备注		
          private int disabled;     //禁用 （0可使用 1已禁用）
          
          
		@Override
		public String toString() {
			return "SY_Area [id=" + id + ", areaName=" + areaName + ", remark="
					+ remark + ", Disabled=" + disabled + "]";
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getAreaName() {
			return areaName;
		}
		public void setAreaName(String areaName) {
			this.areaName = areaName;
		}
		public String getRemark() {
			return remark;
		}
		public void setRemark(String remark) {
			this.remark = remark;
		}
		public int getDisabled() {
			return disabled;
		}
		public void setDisabled(int disabled) {
			this.disabled = disabled;
		}
		
          
          
}
