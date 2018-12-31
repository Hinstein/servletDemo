package model;

/**
 * 用户信息的javabean
 * @author Hinstein
 *
 */
public class StuInfo {

    private int id;
    private String name;
    private byte sex;
    private String data;
    private String moblie;
    private String pol_name;
    private int money;
    private String bname1;
    private String brel1;
    private String bname2;
    private String brel2;
    private String baodan_no;
    private String inforce_time;
    private String clerk_id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public byte getSex() {
        return sex;
    }

    public void setSex(byte sex) {
        this.sex = sex;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getPol_name() {
        return pol_name;
    }

    public void setPol_name(String pol_name) {
        this.pol_name = pol_name;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public String getBname1() {
        return bname1;
    }

    public void setBname1(String bname1) {
        this.bname1 = bname1;
    }

    public String getBrel1() {
        return brel1;
    }

    public void setBrel1(String brel1) {
        this.brel1 = brel1;
    }

    public String getBname2() {
        return bname2;
    }

    public void setBname2(String bname2) {
        this.bname2 = bname2;
    }

    public String getBrel2() {
        return brel2;
    }

    public void setBrel2(String brel2) {
        this.brel2 = brel2;
    }

    public String getMoblie() {
        return moblie;
    }

    public void setMoblie(String moblie) {
        this.moblie = moblie;
    }

    public String getBaodan_no() {
        return baodan_no;
    }

    public void setBaodan_no(String baodan_no) {
        this.baodan_no = baodan_no;
    }

    public String getInforce_time() {
        return inforce_time;
    }

    public void setInforce_time(String inforce_time) {
        this.inforce_time = inforce_time;
    }

    public String getClerk_id() {
        return clerk_id;
    }

    public void setClerk_id(String clerk_id) {
        this.clerk_id = clerk_id;
    }

}