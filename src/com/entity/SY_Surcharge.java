package com.entity;

public class SY_Surcharge {

	private int id;
	private int surchargeID;  //���ӷ�ID����ʵ���Ƿ�������ID��
	private int WaterTypeID;  //��ˮ����ID����ʵ���Ƿ�������ID��
	private SY_CostType costType;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSurchargeID() {
		return surchargeID;
	}
	public void setSurchargeID(int surchargeID) {
		this.surchargeID = surchargeID;
	}
	public int getWaterTypeID() {
		return WaterTypeID;
	}
	public void setWaterTypeID(int waterTypeID) {
		WaterTypeID = waterTypeID;
	}
	public SY_CostType getCostType() {
		return costType;
	}
	public void setCostType(SY_CostType costType) {
		this.costType = costType;
	}
	@Override
	public String toString() {
		return "SY_Surcharge [id=" + id + ", surchargeID=" + surchargeID
				+ ", WaterTypeID=" + WaterTypeID + ", costType=" + costType
				+ "]";
	}
	
}
