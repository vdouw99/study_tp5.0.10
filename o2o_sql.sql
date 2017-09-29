#生活服务分类表
CREATE TABLE `o2o_category` (
  `id`          INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`        VARCHAR(50)      NOT NULL DEFAULT '',
  `parent_id`   INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `listorder`   INT(8) UNSIGNED  NOT NULL DEFAULT 0,
  `status`      TINYINT(1)       NOT NULL DEFAULT 0,
  `create_time` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  # 主键
  PRIMARY KEY (`id`),
  KEY parent_id(`parent_id`)
)
  ENGINE = InnoDB
  # 查询数据从1开始
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

#城市表
CREATE TABLE `o2o_city` (
  `id`          INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`        VARCHAR(50)      NOT NULL DEFAULT '',
  # 英文名
  `uname`       VARCHAR(50)      NOT NULL DEFAULT '',
  `parent_id`   INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `listorder`   INT(8) UNSIGNED  NOT NULL DEFAULT 0,
  `status`      TINYINT(1)       NOT NULL DEFAULT 0,
  `create_time` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  # 主键
  PRIMARY KEY (`id`),
  # 索引
  KEY parent_id(`parent_id`),
  UNIQUE KEY uname(`uname`)
)
  ENGINE = InnoDB
  # 查询数据从1开始
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

#商圈表
CREATE TABLE `o2o_area` (
  `id`          INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name`        VARCHAR(50)      NOT NULL DEFAULT '',
  `city_id`     INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id`   INT(10) UNSIGNED NOT NULL DEFAULT 0,
  `listorder`   INT(8) UNSIGNED  NOT NULL DEFAULT 0,
  `status`      TINYINT(1)       NOT NULL DEFAULT 0,
  `create_time` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `update_time` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  # 主键
  PRIMARY KEY (`id`),
  KEY parent_id(`parent_id`),
  UNIQUE KEY city_id(`city_id`)
)
  ENGINE = InnoDB
  # 查询数据从1开始
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

#商户表
CREATE TABLE `o2o_bis` (
  `id`          INT(11) UNSIGNED NOT NULL  AUTO_INCREMENT,
  `name`        VARCHAR(50)      NOT NULL  DEFAULT '',
  `email`       VARCHAR(50)      NOT NULL  DEFAULT '',
  `logo`        VARCHAR(255)     NOT NULL  DEFAULT '',
  `licence_log` VARCHAR(255)     NOT NULL  DEFAULT '',
  `description` TEXT             NOT NULL,
  `city_id`     INT(11) UNSIGNED NOT NULL  DEFAULT 0,
  `city_path`   VARCHAR(50)      NOT NULL  DEFAULT '',
  `bank_info`   VARCHAR(50)      NOT NULL  DEFAULT '',
  `money`       DECIMAL(20, 2)   NOT NULL  DEFAULT '0.00',
  `bank_name`   VARCHAR(50)      NOT NULL  DEFAULT '',
  `bank_user`   VARCHAR(50)      NOT NULL  DEFAULT '',
  `faren`       VARCHAR(20)      NOT NULL  DEFAULT '',
  `faren_tel`   VARCHAR(20)      NOT NULL  DEFAULT '',
  `listorder`   INT(8) UNSIGNED  NOT NULL  DEFAULT 0,
  `status`      TINYINT(1)       NOT NULL  DEFAULT 0,
  `create_time` INT(11) UNSIGNED NOT NULL  DEFAULT 0,
  `update_time` INT(11) UNSIGNED NOT NULL  DEFAULT 0,
  # 主键
  PRIMARY KEY (`id`),
  KEY city_id(`city_id`),
  KEY name('name'),
  UNIQUE KEY city_id(`city_id`)
)
  ENGINE = InnoDB
  # 查询数据从1开始
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

#商户账号表
CREATE TABLE `o2o_bis_account` (
  `id`              INT(11) UNSIGNED    NOT NULL  AUTO_INCREMENT,
  `username`        VARCHAR(50)         NOT NULL  DEFAULT '',
  `password`        CHAR(32)            NOT NULL  DEFAULT '',
  `code`            VARCHAR(10)         NOT NULL  DEFAULT '',
  `bis_id`          INT(11) UNSIGNED    NOT NULL  DEFAULT 0,
  `last_login_id`   VARCHAR(20)         NOT NULL  DEFAULT '',
  `last_login_time` INT(11) UNSIGNED    NOT NULL  DEFAULT 0,
  `is_main`         TINYINT(1) UNSIGNED NOT NULL  DEFAULT 0,
  `listorder`       INT(8) UNSIGNED     NOT NULL  DEFAULT 0,
  `status`          TINYINT(1)          NOT NULL  DEFAULT 0,
  `create_time`     INT(11) UNSIGNED    NOT NULL  DEFAULT 0,
  `update_time`     INT(11) UNSIGNED    NOT NULL  DEFAULT 0,
  # 主键
  PRIMARY KEY (`id`),
  KEY bis_id(`bis_id`),
  KEY username('username')
)
  ENGINE = InnoDB
  # 查询数据从1开始
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

#商户门店表
CREATE TABLE `o2o_bis_location` (
  `id`            INT(11) UNSIGNED    NOT NULL  AUTO_INCREMENT,
  `name`          VARCHAR(50)         NOT NULL  DEFAULT '',
  `logo`          VARCHAR(255)        NOT NULL  DEFAULT '',
  `address`       VARCHAR(255)        NOT NULL  DEFAULT '',
  `tel`           VARCHAR(20)         NOT NULL  DEFAULT '',
  `contact`       VARCHAR(20)         NOT NULL  DEFAULT '',
  `xpoint`        VARCHAR(20)         NOT NULL  DEFAULT '',
  `ypoint`        VARCHAR(20)         NOT NULL  DEFAULT '',
  `bis_id`        INT(11) UNSIGNED    NOT NULL  DEFAULT 0,
  `open_time`     INT(11) UNSIGNED    NOT NULL  DEFAULT 0,
  `content`       TEXT                NOT NULL,
  `is_main`       TINYINT(1) UNSIGNED NOT NULL  DEFAULT 0,
  `api_address`   VARCHAR(255)        NOT NULL  DEFAULT '',
  `city_id`       INT(11) UNSIGNED    NOT NULL  DEFAULT 0,
  `city_path`     VARCHAR(50)         NOT NULL  DEFAULT '',
  `category_id`   INT(11) UNSIGNED    NOT NULL  DEFAULT '',
  `category_path` VARCHAR(50) UNSIGNED NOT NULL DEFAULT '',
  `bank_info`     VARCHAR(50)         NOT NULL  DEFAULT '',
  `listorder`     INT(8) UNSIGNED     NOT NULL  DEFAULT 0,
  `status`        TINYINT(1)          NOT NULL  DEFAULT 0,
  `create_time`   INT(11) UNSIGNED    NOT NULL  DEFAULT 0,
  `update_time`   INT(11) UNSIGNED    NOT NULL  DEFAULT 0,
  # 主键
  PRIMARY KEY (`id`),
  KEY bis_id(`bis_id`),
  KEY city_id(`city_id`),
  KEY name(`name`),
  KEY category_id('category_id'),
  UNIQUE KEY city_id(`city_id`)
)
  ENGINE = InnoDB
  # 查询数据从1开始
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

#团购商品表
CREATE CREATE TABLE `o2o_deal` (
  `id`                 INT(11) UNSIGNED NOT NULL  AUTO_INCREMENT,
  `name`               VARCHAR(100)     NOT NULL  DEFAULT '',
  `category_id`        INT(11)          NOT NULL  DEFAULT 0,
  `se_category_id`     INT(11)          NOT NULL  DEFAULT 0,
  `bis_id`             INT(11)          NOT NULL  DEFAULT 0,
  `location_ids`       VARCHAR(100)     NOT NULL  DEFAULT '',
  `image`              VARCHAR(200)     NOT NULL  DEFAULT '',
  `description`        TEXT             NOT NULL,
  `start_time`         INT(11)          NOT NULL  DEFAULT 0,
  `end_time`           INT(11)          NOT NULL  DEFAULT 0,
  `origin_price`       DECIMAL(20, 2)   NOT NULL  DEFAULT '0.00',
  `current_price`      DECIMAL(20, 2)   NOT NULL  DEFAULT '0.00',
  `city_id`            INT(11)          NOT NULL  DEFAULT 0,
  `buy_count`          INT(11)          NOT NULL  DEFAULT 0,
  `total_count`        INT(11)          NOT NULL  DEFAULT 0,
  `coupons_start_time` INT(11)          NOT NULL  DEFAULT 0,
  `coupons_end_time`   INT(11)          NOT NULL  DEFAULT 0,
  `xpoint`             VARCHAR(20)      NOT NULL  DEFAULT '',
  `ypoint`             VARCHAR(20)      NOT NULL  DEFAULT '',
  `bis_account_id`     INT(10)          NOT NULL  DEFAULT 0,
  `balance_price`      DECIMAL(20, 2)   NOT NULL  DEFAULT '0.00',
  `notes`              TEXT             NOT NULL,
  `listorder`          INT(8) UNSIGNED  NOT NULL  DEFAULT 0,
  `status`             TINYINT(1)       NOT NULL  DEFAULT 0,
  `create_time`        INT(11) UNSIGNED NOT NULL  DEFAULT 0,
  `update_time`        INT(11) UNSIGNED NOT NULL  DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY category_id(`category_id`),
  KEY se_category_id(`se_category_id`),
  KEY city_id(`city_id`),
  KEY start_time('start_time'),
  KEY end_time('end_time')
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

#用户表
CREATE CREATE TABLE `o2o_user` (
  `id`              INT(11) UNSIGNED NOT NULL  AUTO_INCREMENT,
  `username`        VARCHAR(50)      NOT NULL  DEFAULT '',
  `password`        CHAR(32)         NOT NULL  DEFAULT '',
  `code`            VARCHAR(10)      NOT NULL  DEFAULT '',
  `email`           VARCHAR(30)      NOT NULL  DEFAULT '',
  `mobile`          VARCHAR(20)      NOT NULL  DEFAULT '',
  `last_login_id`   VARCHAR(20)      NOT NULL  DEFAULT '',
  `last_login_time` INT(11) UNSIGNED NOT NULL  DEFAULT 0,
  `listorder`       INT(8) UNSIGNED  NOT NULL  DEFAULT 0,
  `status`          TINYINT(1)       NOT NULL  DEFAULT 0,
  `create_time`     INT(11) UNSIGNED NOT NULL  DEFAULT 0,
  `update_time`     INT(11) UNSIGNED NOT NULL  DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY username(`username`),
  UNIQUE KEY email(`email`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;

#推荐位
CREATE CREATE TABLE `o2o_featured` (
  `id`          INT(11) UNSIGNED NOT NULL  AUTO_INCREMENT,
  `type`        TINYINT(1)       NOT NULL  DEFAULT 0,
  `title`       VARCHAR(30)      NOT NULL  DEFAULT '',
  `image`       VARCHAR(255)     NOT NULL  DEFAULT '',
  `url`         VARCHAR(255)     NOT NULL  DEFAULT '',
  `description` VARCHAR(255)     NOT NULL  DEFAULT '',
  `listorder`   INT(8) UNSIGNED  NOT NULL  DEFAULT 0,
  `status`      TINYINT(1)       NOT NULL  DEFAULT 0,
  `create_time` INT(11) UNSIGNED NOT NULL  DEFAULT 0,
  `update_time` INT(11) UNSIGNED NOT NULL  DEFAULT 0,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
