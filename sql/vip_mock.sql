-- ������Ϣ
create table department_info (
	id bigint(20) not null AUTO_INCREMENT,
	depart_name varchar(32) not null default '' comment '��������',
	parent tinyint not null default 0 comment '����ID,���Ϊ0',
	is_bottom tinyint not null default 0 comment '�Ƿ���ײ㼶,Ĭ��Ϊ��',
	is_delete tinyint not null default 0 comment '�Ƿ�ɾ��',
	create_time datetime default '0000-00-00 00:00:00',
	create_by varchar(11) default '',
	update_time timestamp not null default current_timestamp on update current_timestamp comment '����ʱ��',
	update_by varchar(11) default '',
	primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ����(��)��Ϣ
create table service_info (
	id bigint(20) not null 	AUTO_INCREMENT,
	service_name varchar(32) not null default '' comment '��������',
	depart_id bigint(20) not null comment '����ID',
	is_delete tinyint not null default 0 comment '�Ƿ�ɾ��',
	create_time datetime default '0000-00-00 00:00:00',
	create_by varchar(11) default '',
	update_time timestamp not null default current_timestamp on update current_timestamp comment '����ʱ��',
	update_by varchar(11) default '',
	primary key (id)
)ENGINE=InnoDB default charset=utf8;

-- mocker ƥ����Ϣ��
create table match_info (
	id bigint(20) not null AUTO_INCREMENT,
	depart_id bigint(20) not null comment '����ID',
	service_id bigint(20) not null comment '����ID',
	interface_name varchar(32) not null default '' comment '�ӿ�����',
	interface_uri varchar(64) default '' comment '����uri',
	inter_special_param varchar(32) default '' comment '�ӿ��������,����������ͬ�ӿڲ�ͬ����',
	match_json varchar(128) not null default '' comment '�ӿڲ���ƥ����Ϣ',
	is_delete tinyint not null default 0 comment '�Ƿ�ɾ��',
	create_time datetime default '0000-00-00 00:00:00',
	create_by varchar(11) default '',
	update_time timestamp not null default current_timestamp on update current_timestamp comment '����ʱ��',
	update_by varchar(11) default '',
	primary key (id)
)ENGINE=InnoDB default charset=utf8;