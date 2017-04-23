package com.test.mock.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "match_info")
public class MatchInfo implements Serializable {

	private static final long serialVersionUID = -3887143775356777863L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	public Long id;
	
	@Column(name = "depart_id")
	public Long departId;
	
	@Column(name = "service_id")
	public Long serviceId;
	
	@Column(name = "interface_name")
	public String interfaceName;
	
	@Column(name = "interface_uri")
	public String interfaceUri;
	
	@Column(name = "inter_special_param")
	public String interSpecialParam;
	
	@Column(name = "match_json")
	public String matchJson;
	
	@Column(name = "is_delete")
	public Integer isDelete;
	
	@Column(name = "create_time")
	public Date createTime;
	
	@Column(name = "create_by")
	public String createBy;
	
	@Column(name = "update_time")
	public Date updateTime;
	
	@Column(name = "update_by")
	public String updateBy;
	
}
