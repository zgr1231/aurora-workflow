CREATE TABLE `bpmn_usertask_node` (
  `usertask_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `process_code` varchar(45) NOT NULL COMMENT 'process code',
  `process_version` varchar(45) NOT NULL COMMENT '工作流版本',
  `node_id` varchar(45) NOT NULL COMMENT 'user task 节点ID',
  `recipient_type` int(11) DEFAULT NULL COMMENT '接收类型',
  `mail_notify` tinyint(4) DEFAULT '0' COMMENT '是否邮件提醒',
  `is_date_limited` tinyint(4) DEFAULT '0' COMMENT '处理日期限制',
  `process_date` decimal(10,0) DEFAULT NULL COMMENT '处理日期',
  `process_date_unit_id` varchar(2) DEFAULT NULL COMMENT '时间单位',
  `date_from` datetime DEFAULT NULL COMMENT '有效日期从',
  `date_to` datetime DEFAULT NULL COMMENT '有效日期到',
  `object_version_number` int(11) DEFAULT '0',
  `form_name` varchar(200) DEFAULT NULL COMMENT '表单名称',
  `approval_type` int(11) DEFAULT NULL COMMENT '审批类型',
  `recipient_proc` varchar(300) DEFAULT NULL,
  `name_id` bigint(20) DEFAULT NULL,
  `description_id` bigint(20) DEFAULT NULL,
  `form_width` decimal(10,0) DEFAULT NULL COMMENT '表单宽度',
  `form_height` decimal(10,0) DEFAULT NULL COMMENT '表单高度',
  `can_deliver_to` decimal(10,0) DEFAULT '1' COMMENT '是否可以转交',
  `mail_template` decimal(10,0) DEFAULT NULL COMMENT '邮件模板',
  `notify_period` decimal(10,0) DEFAULT NULL COMMENT '提醒周期',
  `notify_period_length` varchar(2) DEFAULT NULL COMMENT '时间单位',
  `notify_on_finish` decimal(10,0) DEFAULT NULL COMMENT '结束时是否通知处理者',
  `check_proc` varchar(255) DEFAULT NULL COMMENT '校验的存储过程',
  `can_auto_pass` decimal(10,0) DEFAULT '1' COMMENT '无需重复审批',
  `pre_node_proc` varchar(500) DEFAULT NULL COMMENT '节点前处理过程',
  `is_comment_access_control` decimal(10,0) DEFAULT '0' COMMENT '审批意见查看限制',
  `quantity` decimal(10,0) DEFAULT NULL COMMENT '数值',
  `is_self_re_commit` decimal(10,0) DEFAULT '0' COMMENT '提交人是否需要审批',
  `can_no_approver` decimal(10,0) DEFAULT '1' COMMENT '节点允许无审批人',
  `can_add_approver` decimal(10,0) DEFAULT NULL COMMENT '允许添加审批人',
  `can_add_notification` decimal(10,0) DEFAULT NULL COMMENT '允许增加通知人',
  `created_by` decimal(10,0) DEFAULT NULL COMMENT '创建用户ID',
  `creation_date` datetime DEFAULT NULL COMMENT '创建日期',
  `last_updated_by` decimal(10,0) DEFAULT NULL COMMENT '最后更新用户ID',
  `last_update_date` datetime DEFAULT NULL COMMENT '最后更新日期',
  PRIMARY KEY (`usertask_id`),
  KEY `bpmn_usertask_node_n1` (`process_code`),
  KEY `bpmn_usertask_node_n2` (`process_code`,`process_version`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='UserTask节点定义表';