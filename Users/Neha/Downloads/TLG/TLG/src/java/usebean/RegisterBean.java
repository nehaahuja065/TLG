package usebean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import connections.DBConnections; 
import javax.servlet.ServletContext;
public class RegisterBean  {

    public String getMembertype() {
        return membertype;
    }

    public void setMembertype(String membertype) {
        this.membertype = membertype;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getProv_image() {
        return prov_image;
    }

    public void setProv_image(String prov_image) {
        this.prov_image = prov_image;
    }

    public String getExpiry_date() {
        return expiry_date;
    }

    public void setExpiry_date(String expiry_date) {
        this.expiry_date = expiry_date;
    }

    public String getLimo_image() {
        return limo_image;
    }

    public void setLimo_image(String limo_image) {
        this.limo_image = limo_image;
    }

    public String getLicense_exp_date() {
        return license_exp_date;
    }

    public void setLicense_exp_date(String license_exp_date) {
        this.license_exp_date = license_exp_date;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getVehicle() {
        return vehicle;
    }

    public void setVehicle(String vehicle) {
        this.vehicle = vehicle;
    }

    public String getProv_plate() {
        return prov_plate;
    }

    public void setProv_plate(String prov_plate) {
        this.prov_plate = prov_plate;
    }

    public String getLimo_plate() {
        return limo_plate;
    }

    public void setLimo_plate(String limo_plate) {
        this.limo_plate = limo_plate;
    }

    public String getInsurance_image() {
        return insurance_image;
    }

    public void setInsurance_image(String insurance_image) {
        this.insurance_image = insurance_image;
    }

    public String getIns_exp_date() {
        return ins_exp_date;
    }

    public void setIns_exp_date(String ins_exp_date) {
        this.ins_exp_date = ins_exp_date;
    }

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

   
    public String getPayment_mode() {
        return payment_mode;
    }

    public void setPayment_mode(String payment_mode) {
        this.payment_mode = payment_mode;
    }

    public String getCard_type() {
        return card_type;
    }

    public void setCard_type(String card_type) {
        this.card_type = card_type;
    }

    public String getCardholder_name() {
        return cardholder_name;
    }

    public void setCardholder_name(String cardholder_name) {
        this.cardholder_name = cardholder_name;
    }

    public String getCardno() {
        return cardno;
    }

    public void setCardno(String cardno) {
        this.cardno = cardno;
    }

    public String getExp_month() {
        return exp_month;
    }

    public void setExp_month(String exp_month) {
        this.exp_month = exp_month;
    }

    public String getExp_year() {
        return exp_year;
    }

    public void setExp_year(String exp_year) {
        this.exp_year = exp_year;
    }

    public String getPayment_date() {
        return payment_date;
    }

    public void setPayment_date(String payment_date) {
        this.payment_date = payment_date;
    }

    public String getCurrent_date() {
        return current_date;
    }

    public void setCurrent_date(String current_date) {
        this.current_date = current_date;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getShift_time() {
        return shift_time;
    }

    public void setShift_time(String shift_time) {
        this.shift_time = shift_time;
    }

    public String getShift_start_time() {
        return shift_start_time;
    }

    public void setShift_start_time(String shift_start_time) {
        this.shift_start_time = shift_start_time;
    }

    public String getShift_end_time() {
        return shift_end_time;
    }

    public void setShift_end_time(String shift_end_time) {
        this.shift_end_time = shift_end_time;
    }
  
  

    public String getLon() {
        return lon;
    }

    public void setLon(String lon) {
        this.lon = lon;
    }
    private String membertype; 
    private String image;
    private String name;
    private String email;
     private String mobile;
      private String prov_image; 
    private String expiry_date;
    private String limo_image;
    private String  license_exp_date;
     private String password;
      private String vehicle;
      private String vehicle_image;

    public String getVehicle_image() {
        return vehicle_image;
    }

    public void setVehicle_image(String vehicle_image) {
        this.vehicle_image = vehicle_image;
    }
    private String  prov_plate;
    private String  limo_plate;
    private String  insurance_image;
     private String ins_exp_date;

     

    public String getlon() {
        return lon;
    }

    public void setlon(String lon) {
        this.lon = lon;
    }
    private String payment_mode;
    private String card_type;
     private String cardholder_name;
    private String cardno;
     private String exp_month;
     private String exp_year;
     private String payment_date;
     private String current_date;
     private String address;
     private String shift_time;
     private String shift_start_time;
     private String shift_end_time;
    private String profile_status="0";
     private String block_status="0";
      private String is_exempt="0";
 private String lat="0"; 
    private String lon="0";
    public String getProfile_status() {
        return profile_status;
    }

    public void setProfile_status(String profile_status) {
        this.profile_status = profile_status;
    }

    public String getBlock_status() {
        return block_status;
    }

    public void setBlock_status(String block_status) {
        this.block_status = block_status;
    }

    public String getIs_exempt() {
        return is_exempt;
    }

    public void setIs_exempt(String is_exempt) {
        this.is_exempt = is_exempt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
      private String id="0";

    
    
    
    public boolean verify()
    {
        
          System.out.println("id is :" +id);
          System.out.println("name is :" +name);
          System.out.println("member type "+membertype);
          System.out.println("image is :" +image);
          System.out.println("prov image is :" +prov_image);
          System.out.println("expiry date :" +expiry_date);
          System.out.println("email is :" +email);
          System.out.println("prov mobile is :" +mobile);
          System.out.println("limo image is :" +limo_image);
          System.out.println("licence exp date is :" +license_exp_date);
          System.out.println("password is :"+password);
          System.out.println("vechicl :" +vehicle);
          System.out.println("vechicl image :" +vehicle_image);
          System.out.println("prov plate :" +prov_plate);
          System.out.println("limo plate :" +limo_plate);
          System.out.println("insu image :" +insurance_image);
          System.out.println("ins exp :" +ins_exp_date);
          System.out.println("latitude is :"+lat);
          System.out.println("long is :" +lon);
          System.out.println("pymnt mode is : "+payment_mode);
          System.out.println("card type is : "+card_type);
          System.out.println("card holder name :"+cardholder_name);
          System.out.println("card holder no :"+cardno);
          System.out.println("exp month :"+exp_month);
          System.out.println("exp year :"+exp_year);
          System.out.println("payment date :"+payment_date);
          System.out.println("cur date :"+current_date);
          System.out.println("address"+address);
          System.out.println("shift time :"+shift_time);
          System.out.println("shift start time :"+shift_start_time);
          System.out.println("shift end :"+shift_end_time);
          System.out.println("profile status :"+profile_status);
          System.out.println("block :"+block_status);
          System.out.println("is ex:"+is_exempt);
                     //"TLG"+ random;
                 
        boolean flag = false;
        Connection con = DBConnections.getConnection();
        try
        {
               
           
            PreparedStatement pst = con.prepareStatement("insert into drivers values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
           pst.setString(1,id);
            pst.setString(2,membertype);
            pst.setString(3,image);
             pst.setString(4,name);
             pst.setString(5,email);
             
            pst.setString(6,mobile);
            pst.setString(7,prov_image);
          
            pst.setString(8,expiry_date);
            pst.setString(9,limo_image);
             pst.setString(10,license_exp_date);
             pst.setString(11,password);
             
            pst.setString(12,vehicle);
                        pst.setString(13,vehicle_image);

            pst.setString(14,prov_plate);
            pst.setString(15,limo_plate);
            pst.setString(16,insurance_image);
             pst.setString(17,ins_exp_date);
             pst.setString(18,lat);
             
            pst.setString(19,lon);
            pst.setString(20,payment_mode);
            pst.setString(21,card_type);
            pst.setString(22,cardholder_name);
             pst.setString(23,cardno);
             pst.setString(24,exp_month);
             
            pst.setString(25,exp_year);
            pst.setString(26,payment_date);
             pst.setString(27,current_date);
             pst.setString(28,address);
             pst.setString(29,shift_time);
             
            pst.setString(30,shift_start_time);
            pst.setString(31,shift_end_time);
             pst.setString(32,profile_status);
             
            pst.setString(33,block_status);
            pst.setString(34,is_exempt);
            pst.executeUpdate();
                 System.out.println("inserted");
   flag=true;
      
        }
        catch(Exception ex)
        {System.out.println("not inserted");
            System.out.println(ex);
            System.err.println(ex);
            ex.printStackTrace();
        }
        return flag;
    }
}

    
