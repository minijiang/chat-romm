package com.entity;

public class SY_MeterType {

	private int id 	;				
	private String  meterTypeName;   //水表型号名称	
	private int aperture;            //口径
    private int mavValue;            //最大表码值（吨。此种水表的默认最大表码值）
    private int minValue;            //下限设置（吨。仅供参考，不做实际用途）
    private int life;                //周检年限（月）
    private String remark;           //备注
    private int disabled;            //禁用 （0可使用 1已禁用）
	@Override
	public String toString() {
		return "SY_MeterType [id=" + id + ", meterTypeName=" + meterTypeName
				+ ", aperture=" + aperture + ", mavValue=" + mavValue
				+ ", minValue=" + minValue + ", life=" + life + ", remark="
				+ remark + ", disabled=" + disabled + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMeterTypeName() {
		return meterTypeName;
	}
	public void setMeterTypeName(String meterTypeName) {
		this.meterTypeName = meterTypeName;
	}
	public int getAperture() {
		return aperture;
	}
	public void setAperture(int aperture) {
		this.aperture = aperture;
	}
	public int getMavValue() {
		return mavValue;
	}
	public void setMavValue(int mavValue) {
		this.mavValue = mavValue;
	}
	public int getMinValue() {
		return minValue;
	}
	public void setMinValue(int minValue) {
		this.minValue = minValue;
	}
	public int getLife() {
		return life;
	}
	public void setLife(int life) {
		this.life = life;
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
