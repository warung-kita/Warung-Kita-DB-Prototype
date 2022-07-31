-- `warung-kita-db`.categories definition

CREATE TABLE `categories` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` tinyint DEFAULT NULL,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.cc_transactions definition

CREATE TABLE `cc_transactions` (
  `id` bigint NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `order_id` tinyint NOT NULL,
  `transdate` timestamp NULL DEFAULT NULL,
  `processor` varchar(255) DEFAULT NULL,
  `processor_trans_id` varchar(255) DEFAULT NULL,
  `amount` decimal(30,0) DEFAULT NULL,
  `cc_num` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `response` text,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.coupons definition

CREATE TABLE `coupons` (
  `id` bigint NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` text,
  `active` tinyint(1) DEFAULT NULL,
  `value` decimal(30,0) DEFAULT NULL,
  `multiple` tinyint(1) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.order_products definition

CREATE TABLE `order_products` (
  `id` bigint NOT NULL,
  `order_id` tinyint DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `price` decimal(30,0) DEFAULT NULL,
  `quantity` tinyint NOT NULL,
  `subtotal` decimal(30,0) DEFAULT NULL,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.product_categories definition

CREATE TABLE `product_categories` (
  `category_id` tinyint NOT NULL,
  `product_id` tinyint NOT NULL,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.product_statuses definition

CREATE TABLE `product_statuses` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.product_tags definition

CREATE TABLE `product_tags` (
  `product_id` tinyint NOT NULL,
  `tag_id` tinyint NOT NULL,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.products definition

CREATE TABLE `products` (
  `id` bigint NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `product_status_id` tinyint NOT NULL,
  `regular_price` decimal(30,0) DEFAULT NULL,
  `discount_price` decimal(30,0) DEFAULT NULL,
  `quantity` tinyint DEFAULT NULL,
  `taxable` tinyint(1) DEFAULT NULL,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.roles definition

CREATE TABLE `roles` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.sales_orders definition

CREATE TABLE `sales_orders` (
  `id` bigint NOT NULL,
  `order_date` date NOT NULL,
  `total` decimal(30,0) DEFAULT NULL,
  `coupon_id` tinyint DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `user_id` tinyint NOT NULL,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.sessions definition

CREATE TABLE `sessions` (
  `id` varchar(255) DEFAULT NULL,
  `data` text,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.tags definition

CREATE TABLE `tags` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.user_roles definition

CREATE TABLE `user_roles` (
  `user_id` tinyint NOT NULL,
  `role_id` tinyint NOT NULL,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- `warung-kita-db`.users definition

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `inserted_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;