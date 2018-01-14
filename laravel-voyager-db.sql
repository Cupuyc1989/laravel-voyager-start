-- --------------------------------------------------------
-- Хост:                         localhost
-- Версия сервера:               5.7.19 - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп данных таблицы blog.data_rows: ~31 rows (приблизительно)
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
	(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
	(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
	(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
	(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
	(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title"}}', 6),
	(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
	(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
	(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
	(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
	(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
	(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
	(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
	(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
	(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
	(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
	(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"name","pivot_table":"roles","pivot":"0"}', 10),
	(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
	(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
	(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
	(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
	(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
	(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
	(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
	(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
	(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
	(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
	(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
	(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
	(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
	(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- Дамп данных таблицы blog.data_types: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
	(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-01-14 13:58:31', '2018-01-14 13:58:31'),
	(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-01-14 13:58:32', '2018-01-14 13:58:32'),
	(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-01-14 13:58:32', '2018-01-14 13:58:32'),
	(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-01-14 13:58:32', '2018-01-14 13:58:32');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- Дамп данных таблицы blog.menus: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2018-01-14 13:58:33', '2018-01-14 13:58:33');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Дамп данных таблицы blog.menu_items: ~11 rows (приблизительно)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(1, 1, 'Рабочий стол', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2018-01-14 13:58:33', '2018-01-14 14:08:37', 'voyager.dashboard', 'null'),
	(2, 1, 'Медиа', '', '_self', 'voyager-images', '#000000', NULL, 5, '2018-01-14 13:58:33', '2018-01-14 14:08:59', 'voyager.media.index', 'null'),
	(4, 1, 'Пользователи', '', '_self', 'voyager-person', '#000000', NULL, 3, '2018-01-14 13:58:33', '2018-01-14 14:08:52', 'voyager.users.index', 'null'),
	(6, 1, 'Страницы', '', '_self', 'voyager-file-text', '#000000', NULL, 7, '2018-01-14 13:58:33', '2018-01-14 14:09:04', 'voyager.pages.index', 'null'),
	(7, 1, 'Роли пользователей', '', '_self', 'voyager-lock', '#000000', NULL, 2, '2018-01-14 13:58:33', '2018-01-14 14:08:43', 'voyager.roles.index', 'null'),
	(8, 1, 'Инструменты', '', '_self', 'voyager-tools', '#000000', NULL, 9, '2018-01-14 13:58:33', '2018-01-14 14:07:53', NULL, ''),
	(9, 1, 'Меню', '', '_self', 'voyager-list', '#000000', 8, 10, '2018-01-14 13:58:33', '2018-01-14 14:08:00', 'voyager.menus.index', 'null'),
	(10, 1, 'База Данных', '', '_self', 'voyager-data', '#000000', 8, 11, '2018-01-14 13:58:33', '2018-01-14 14:08:14', 'voyager.database.index', 'null'),
	(11, 1, 'Компас', '', '_self', 'voyager-compass', '#000000', 8, 12, '2018-01-14 13:58:33', '2018-01-14 14:08:22', 'voyager.compass.index', 'null'),
	(12, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 13, '2018-01-14 13:58:33', '2018-01-14 13:58:33', 'voyager.hooks', NULL),
	(13, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 14, '2018-01-14 13:58:33', '2018-01-14 14:08:27', 'voyager.settings.index', 'null');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Дамп данных таблицы blog.migrations: ~23 rows (приблизительно)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_01_01_000000_add_voyager_user_fields', 1),
	(4, '2016_01_01_000000_create_data_types_table', 1),
	(5, '2016_01_01_000000_create_pages_table', 1),
	(6, '2016_01_01_000000_create_posts_table', 1),
	(7, '2016_02_15_204651_create_categories_table', 1),
	(8, '2016_05_19_173453_create_menu_table', 1),
	(9, '2016_10_21_190000_create_roles_table', 1),
	(10, '2016_10_21_190000_create_settings_table', 1),
	(11, '2016_11_30_135954_create_permission_table', 1),
	(12, '2016_11_30_141208_create_permission_role_table', 1),
	(13, '2016_12_26_201236_data_types__add__server_side', 1),
	(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
	(15, '2017_01_14_005015_create_translations_table', 1),
	(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
	(17, '2017_01_15_000000_create_permission_groups_table', 1),
	(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
	(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
	(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
	(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
	(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
	(23, '2017_08_05_000000_add_group_to_settings_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Дамп данных таблицы blog.pages: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-01-14 13:58:36', '2018-01-14 13:58:36');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Дамп данных таблицы blog.password_resets: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Дамп данных таблицы blog.permissions: ~30 rows (приблизительно)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
	(1, 'browse_admin', NULL, '2018-01-14 13:58:33', '2018-01-14 13:58:33', NULL),
	(2, 'browse_database', NULL, '2018-01-14 13:58:33', '2018-01-14 13:58:33', NULL),
	(3, 'browse_media', NULL, '2018-01-14 13:58:33', '2018-01-14 13:58:33', NULL),
	(4, 'browse_compass', NULL, '2018-01-14 13:58:33', '2018-01-14 13:58:33', NULL),
	(5, 'browse_hooks', NULL, '2018-01-14 13:58:33', '2018-01-14 13:58:33', NULL),
	(6, 'browse_menus', 'menus', '2018-01-14 13:58:33', '2018-01-14 13:58:33', NULL),
	(7, 'read_menus', 'menus', '2018-01-14 13:58:33', '2018-01-14 13:58:33', NULL),
	(8, 'edit_menus', 'menus', '2018-01-14 13:58:33', '2018-01-14 13:58:33', NULL),
	(9, 'add_menus', 'menus', '2018-01-14 13:58:33', '2018-01-14 13:58:33', NULL),
	(10, 'delete_menus', 'menus', '2018-01-14 13:58:33', '2018-01-14 13:58:33', NULL),
	(11, 'browse_pages', 'pages', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(12, 'read_pages', 'pages', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(13, 'edit_pages', 'pages', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(14, 'add_pages', 'pages', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(15, 'delete_pages', 'pages', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(16, 'browse_roles', 'roles', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(17, 'read_roles', 'roles', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(18, 'edit_roles', 'roles', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(19, 'add_roles', 'roles', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(20, 'delete_roles', 'roles', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(21, 'browse_users', 'users', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(22, 'read_users', 'users', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(23, 'edit_users', 'users', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(24, 'add_users', 'users', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(25, 'delete_users', 'users', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(36, 'browse_settings', 'settings', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(37, 'read_settings', 'settings', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(38, 'edit_settings', 'settings', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(39, 'add_settings', 'settings', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL),
	(40, 'delete_settings', 'settings', '2018-01-14 13:58:34', '2018-01-14 13:58:34', NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Дамп данных таблицы blog.permission_groups: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;

-- Дамп данных таблицы blog.permission_role: ~30 rows (приблизительно)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(36, 1),
	(37, 1),
	(38, 1),
	(39, 1),
	(40, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Дамп данных таблицы blog.roles: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrator', '2018-01-14 13:58:33', '2018-01-14 13:58:33'),
	(2, 'user', 'Normal User', '2018-01-14 13:58:33', '2018-01-14 13:58:33');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Дамп данных таблицы blog.settings: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
	(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
	(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
	(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
	(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
	(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
	(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
	(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
	(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
	(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
	(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Дамп данных таблицы blog.translations: ~30 rows (приблизительно)
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2018-01-14 13:58:36', '2018-01-14 13:58:36'),
	(30, 'menu_items', 'title', 13, 'pt', 'Configurações', '2018-01-14 13:58:36', '2018-01-14 13:58:36');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Дамп данных таблицы blog.users: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$/l8lmxeBsrsqKpVu9kAfCuZOOVUGFK39ThSDnqDxILWAjh.Kwpoam', 'HF7B1BdUpwg5MnNtxjaAmvTmn7ZvQ23wVg5lGDFTUzwPLQyllS7quffEE61W', '2018-01-14 13:58:36', '2018-01-14 13:58:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
