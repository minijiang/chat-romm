package com.entity;

public class SY_MeterType {

	private int id 	;				
	private String  meterTypeName;   //ˮ���ͺ�����	
	private int aperture;            //�ھ�
    private int mavValue;            //������ֵ���֡�����ˮ���Ĭ��������ֵ��
    private int minValue;            //�������ã��֡������ο�������ʵ����;��
    private int life;                //�ܼ����ޣ��£�
    private String remark;           //��ע
    private int disabled;            //���� ��0��ʹ�� 1�ѽ��ã�
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
