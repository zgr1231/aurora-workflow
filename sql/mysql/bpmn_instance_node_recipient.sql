CREATE TABLE `bpmn_instance_node_recipient` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '审批记录ID',
  `instance_id` bigint(20) NOT NULL COMMENT '工作流实例ID',
  `usertask_id` bigint(20) NOT NULL COMMENT '工作流节点ID',
  `seq_number` decimal(10,0) DEFAULT NULL COMMENT '工作流节点序号',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `date_limit` datetime DEFAULT NULL COMMENT '审批时限',
  `commision_by` bigint(20) DEFAULT NULL COMMENT '转交人ID',
  `commision_desc` varchar(2000) DEFAULT NULL COMMENT '转交人',
  `last_notify_date` datetime DEFAULT NULL COMMENT '最后通知时间',
  `attachment_id` bigint(20) DEFAULT NULL COMMENT '附件ID',
  `hierarchy_record_id` bigint(20) DEFAULT NULL COMMENT '审批层次记录ID',
  `creation_date` datetime DEFAULT NULL COMMENT '创建日期',
  `created_by` decimal(10,0) DEFAULT NULL COMMENT '创建用户ID',
  `last_update_date` datetime DEFAULT NULL COMMENT '最后更新日期',
  `last_updated_by` decimal(10,0) DEFAULT NULL COMMENT '最后更新用户ID',
  PRIMARY KEY (`record_id`),
  KEY `bpmn_instance_node_recipient_n1` (`user_id`),
  KEY `bpmn_instance_node_recipient_n2` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='工作流实例待办事项表';