-- 部门信息
create table department_info (
	id bigint(20) not null AUTO_INCREMENT,
	depart_name varchar(32) not null default '' comment '部门名称',
	parent tinyint not null default 0 comment '父级ID,最顶级为0',
	is_bottom tinyint not null default 0 comment '是否最底层级,默认为否',
	is_delete tinyint not null default 0 comment '是否删除',
	create_time datetime default '0000-00-00 00:00:00',
	create_by varchar(11) default '',
	update_time timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
	update_by varchar(11) default '',
	primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 服务(域)信息
create table service_info (
	id bigint(20) not null 	AUTO_INCREMENT,
	service_name varchar(32) not null default '' comment '服务名称',
	depart_id bigint(20) not null comment '部门ID',
	is_delete tinyint not null default 0 comment '是否删除',
	create_time datetime default '0000-00-00 00:00:00',
	create_by varchar(11) default '',
	update_time timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
	update_by varchar(11) default '',
	primary key (id)
)ENGINE=InnoDB default charset=utf8;

-- mocker 匹配信息表
create table match_info (
	id bigint(20) not null AUTO_INCREMENT,
	depart_id bigint(20) not null comment '部门ID',
	service_id bigint(20) not null comment '服务ID',
	interface_name varchar(32) not null default '' comment '接口名称',
	interface_uri varchar(64) default '' comment '请求uri',
	inter_special_param varchar(32) default '' comment '接口特殊参数,用于区分相同接口不同参数',
	match_json varchar(128) not null default '' comment '接口参数匹配信息',
	is_delete tinyint not null default 0 comment '是否删除',
	create_time datetime default '0000-00-00 00:00:00',
	create_by varchar(11) default '',
	update_time timestamp not null default current_timestamp on update current_timestamp comment '更新时间',
	update_by varchar(11) default '',
	primary key (id)
)ENGINE=InnoDB default charset=utf8;
