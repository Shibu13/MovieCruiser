package com.cognizant.MOVIECRUISE.model;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Component
@Configuration
@EnableConfigurationProperties
@ConfigurationProperties("paytm.payment.sandbox")

public class PaytmDetails {
	
	@Value("AqXZhu00052233035910")
	private String merchantId;

	@Value("YMqUHj6zolgw7Uzb")
    private String merchantKey;

	@Value("WEB")
    private String channelId;

	@Value("WEBSTAGING")
    private String website;
	
	@Value("Retail")
	private String industryTypeId;

	@Value("https://securegw-stage.paytm.in/order/process")
    private String paytmUrl;

    private Map<String, String> details=new HashMap<>();
   
    
    

    public String getMerchantId() {
		return merchantId;
	}

	public void setMerchantId(String merchantId) {
		this.merchantId = merchantId;
	}

	public String getMerchantKey() {
		return merchantKey;
	}

	public void setMerchantKey(String merchantKey) {
		this.merchantKey = merchantKey;
	}

	public String getChannelId() {
		return channelId;
	}

	public void setChannelId(String channelId) {
		this.channelId = channelId;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getIndustryTypeId() {
		return industryTypeId;
	}

	public void setIndustryTypeId(String industryTypeId) {
		this.industryTypeId = industryTypeId;
	}

	public String getPaytmUrl() {
		return paytmUrl;
	}

	public void setPaytmUrl(String paytmUrl) {
		this.paytmUrl = paytmUrl;
	}

	public Map<String, String> getDetails() {
		this.details.put("MID","AqXZhu00052233035910");
		this.details.put("CHANNEL_ID","WEB");
		this.details.put("INDUSTRY_TYPE_ID","Retail");
		this.details.put("WEBSITE","WEBSTAGING");
		this.details.put("CALLBACK_URL","http://localhost:8080/MOVIECRUISE/pgresponse");
		
		return details;
		
		 
	    /*MID: ${paytm.payment.sandbox.merchantid}
	    CHANNEL_ID: ${paytm.payment.sandbox.channelid}
	    INDUSTRY_TYPE_ID: ${paytm.payment.sandbox.industrytypeid}
	    WEBSITE: ${paytm.payment.sandbox.website}
	    CALLBACK_URL: ${paytm.payment.sandbox.callbackUrl}
	*/
	    
	    
	}

	





}
