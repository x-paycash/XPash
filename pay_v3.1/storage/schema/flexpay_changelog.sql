ALTER TABLE `currency_payment_methods` CHANGE `method_data` `method_data` LONGTEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'input field\'s title and value like client_id, client_secret etc';
