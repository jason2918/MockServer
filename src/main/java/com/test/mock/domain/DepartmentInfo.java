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
@Table(name = "department_info")
public class DepartmentInfo implements Serializable {

	private static final long serialVersionUID = 311919831314696291L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	public Long id;
	
	@Column(name = "depart_name")
	public String departName;
	
	@Column(name = "parent")
	public Integer parent;
	
	@Column(name = "is_bottom")
	public Integer isBottom;
	
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
