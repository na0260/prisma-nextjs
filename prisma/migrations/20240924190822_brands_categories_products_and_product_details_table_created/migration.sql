-- CreateTable
CREATE TABLE `brands` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `brandName` VARCHAR(50) NOT NULL,
    `BrandImg` VARCHAR(255) NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `categories` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `categoryName` VARCHAR(50) NOT NULL,
    `categoryImg` VARCHAR(255) NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `products` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(200) NOT NULL,
    `short_des` VARCHAR(255) NOT NULL,
    `price` VARCHAR(50) NOT NULL,
    `discount` BOOLEAN NOT NULL,
    `discount_price` VARCHAR(50) NOT NULL,
    `image` VARCHAR(255) NOT NULL,
    `stock` BOOLEAN NOT NULL,
    `star` DOUBLE NOT NULL,
    `remark` ENUM('POPULAR', 'NEW', 'TOP', 'SPECIAL', 'HOT', 'SALE', 'TRENDING') NOT NULL,
    `category_id` BIGINT UNSIGNED NOT NULL,
    `brand_id` BIGINT UNSIGNED NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `product_details` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `img1` VARCHAR(255) NOT NULL,
    `img2` VARCHAR(255) NOT NULL,
    `img3` VARCHAR(255) NOT NULL,
    `img4` VARCHAR(255) NOT NULL,
    `des` LONGTEXT NOT NULL,
    `color` VARCHAR(50) NOT NULL,
    `size` VARCHAR(50) NOT NULL,
    `product_id` BIGINT UNSIGNED NOT NULL,
    `createdAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updatedAt` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    UNIQUE INDEX `product_details_product_id_key`(`product_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `products` ADD CONSTRAINT `products_brand_id_fkey` FOREIGN KEY (`brand_id`) REFERENCES `brands`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products` ADD CONSTRAINT `products_category_id_fkey` FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `product_details` ADD CONSTRAINT `product_details_product_id_fkey` FOREIGN KEY (`product_id`) REFERENCES `products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
