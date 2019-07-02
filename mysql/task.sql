USE task;

CREATE TABLE `vc_vcoin_pair_price` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `trade_vcoin_code` varchar(50) NOT NULL COMMENT '买卖币代码',
  `basic_vcoin_code` varchar(50) NOT NULL COMMENT '基础币代码',
  `from` varchar(50) NOT NULL COMMENT '来源站点代码',
  `price` decimal(28,10) NOT NULL COMMENT '最新成交币价格',
  `usd_price` decimal(28,10) DEFAULT NULL COMMENT '对比美元价格',
  `cny_price` decimal(28,10) DEFAULT NULL COMMENT '对比人民币价格',
  `open_price` decimal(20,10) DEFAULT NULL COMMENT '开盘价',
  `collect_time` timestamp NULL DEFAULT NULL COMMENT '最后一次实际采集时间',
  `data_type` tinyint(4) DEFAULT '0' COMMENT '数据类型：0-虚拟货币；1-股票指数',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_vcoin_code_from` (`trade_vcoin_code`,`basic_vcoin_code`,`from`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
