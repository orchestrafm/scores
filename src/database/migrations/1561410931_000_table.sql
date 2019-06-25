CREATE TABLE `scores` (
    `id` BIGINT UNSIGNED NOT NULL UNIQUE AUTO_INCREMENT,
    `track_id` INT(8) UNSIGNED NOT NULL,
    `board_id` INT(8) UNSIGNED NOT NULL,
    `profile_id` INT(8) UNSIGNED NOT NULL,
    `date_created` DATETIME NOT NULL DEFAULT NOW(),
    `grade_letter` TINYINT(2) UNSIGNED NOT NULL DEFAULT '0',
    `performance_rating` INT(6) UNSIGNED NOT NULL DEFAULT '0',
    `score_amount` INT(8) UNSIGNED NOT NULL DEFAULT '0',
    `max_combo` INT(4) UNSIGNED NOT NULL DEFAULT '0',
    `clear_status` TINYINT(2) NOT NULL DEFAULT '-1',
    `effective_rate` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `accuracy` DOUBLE PRECISION UNSIGNED NOT NULL DEFAULT '0.0',
    `criticals` INT(4) UNSIGNED NOT NULL DEFAULT '0',
    `nears` INT(4) UNSIGNED NOT NULL DEFAULT '0',
    `errors` INT(4) UNSIGNED NOT NULL DEFAULT '0',
    `modifiers` VARCHAR(256),
    `replay_data` LONGTEXT NOT NULL DEFAULT '',
    FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`) ON DELETE CASCADE,
    FOREIGN KEY (`board_id`) REFERENCES `boards` (`id`) ON DELETE CASCADE,
    FOREIGN KEY (`profile_id`) REFERENCES `profiles` (`id`) ON DELETE CASCADE
)
