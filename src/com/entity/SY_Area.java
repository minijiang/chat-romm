package com.entity;

public class SY_Area {
          private int id;  //ID����Χ1~99�����ܳ���99��
          private String areaName;   //����Ͻ������
          private String remark;     //��ע		
          private int disabled;     //���� ��0��ʹ�� 1�ѽ��ã�
          
          
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
