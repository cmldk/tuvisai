-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Şub 2020, 09:54:53
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `tuvisdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add error codes', 7, 'add_errorcodes'),
(26, 'Can change error codes', 7, 'change_errorcodes'),
(27, 'Can delete error codes', 7, 'delete_errorcodes'),
(28, 'Can view error codes', 7, 'view_errorcodes'),
(29, 'Can add quality codes', 8, 'add_qualitycodes'),
(30, 'Can change quality codes', 8, 'change_qualitycodes'),
(31, 'Can delete quality codes', 8, 'delete_qualitycodes'),
(32, 'Can view quality codes', 8, 'view_qualitycodes'),
(33, 'Can add records', 9, 'add_records'),
(34, 'Can change records', 9, 'change_records'),
(35, 'Can delete records', 9, 'delete_records'),
(36, 'Can view records', 9, 'view_records'),
(37, 'Can add users', 10, 'add_users'),
(38, 'Can change users', 10, 'change_users'),
(39, 'Can delete users', 10, 'delete_users'),
(40, 'Can view users', 10, 'view_users');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$ylgLgGM8k3CM$0LEdmt97sZIRJALAdeG+mcHxaNgD61GYynp/H6kpbgQ=', '2020-02-06 05:42:03.300194', 1, 'cemaldak', '', '', 'cemaldak@hotmail.com', 1, 1, '2020-01-28 11:38:28.433746'),
(3, 'pbkdf2_sha256$150000$cSMshVPvn52r$wWWbjEoPVTPcNOxR6gF14TfA7XENmFj85TXoZVEPM50=', '2020-02-04 10:33:36.420707', 0, 'cmldk', '', '', '', 0, 1, '2020-01-28 11:41:13.077083'),
(4, 'pbkdf2_sha256$150000$E6rI0EAucELX$20womPLhG2IXQ2SKGuCwS76SOUjuRifMsOjWZewqxYg=', '2020-01-29 10:55:51.026855', 0, 'admin', '', '', '', 0, 1, '2020-01-29 10:55:42.843361'),
(5, 'pbkdf2_sha256$150000$uGOqRm63hG2s$/40QXs/UB6Al7AeIS5PhAU7AC+fEreWjEG+OZSoRO4A=', '2020-02-01 11:02:41.808379', 0, 'deneme', '', '', '', 0, 1, '2020-02-01 11:02:33.127234');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-01-28 11:44:13.389336', '1', 'cmldk', 1, '[{\"added\": {}}]', 9, 1),
(2, '2020-01-28 11:44:51.624563', '2', 'cemaldak', 1, '[{\"added\": {}}]', 9, 1),
(3, '2020-01-28 11:45:06.196125', '3', 'cemaldak', 1, '[{\"added\": {}}]', 9, 1),
(4, '2020-01-28 11:45:22.882482', '4', 'cemaldak', 1, '[{\"added\": {}}]', 9, 1),
(5, '2020-01-28 11:45:40.152389', '5', 'cemaldak', 1, '[{\"added\": {}}]', 9, 1),
(6, '2020-01-28 11:46:12.503451', '6', 'cmldk', 1, '[{\"added\": {}}]', 9, 1),
(7, '2020-01-28 11:46:24.403431', '7', 'cemaldak', 1, '[{\"added\": {}}]', 9, 1),
(8, '2020-01-28 13:01:35.365246', '364', 'DENEME', 1, '[{\"added\": {}}]', 7, 1),
(9, '2020-01-28 13:13:25.793760', '365', 'DENEME', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-01-28 13:30:54.267587', '842', 'DENEME', 1, '[{\"added\": {}}]', 8, 1),
(11, '2020-01-28 20:09:46.238229', '1', 'cmldk', 2, '[{\"changed\": {\"fields\": [\"re_image\"]}}]', 9, 1),
(12, '2020-01-28 20:15:10.367585', '1', 'cmldk', 2, '[{\"changed\": {\"fields\": [\"re_image\"]}}]', 9, 1),
(13, '2020-01-29 09:55:18.048134', '844', 'DENEME4', 1, '[{\"added\": {}}]', 8, 1),
(14, '2020-02-03 10:29:30.767162', '3', 'admin', 3, '', 10, 1),
(15, '2020-02-04 10:42:54.074163', '25', 'admin', 1, '[{\"added\": {}}]', 9, 1),
(16, '2020-02-04 10:43:29.782315', '26', 'deneme', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'main', 'errorcodes'),
(8, 'main', 'qualitycodes'),
(9, 'main', 'records'),
(10, 'main', 'users'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-28 11:30:48.475251'),
(2, 'auth', '0001_initial', '2020-01-28 11:30:48.845799'),
(3, 'admin', '0001_initial', '2020-01-28 11:30:49.944789'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-28 11:30:50.225817'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-28 11:30:50.247810'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-28 11:30:50.496637'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-28 11:30:50.633073'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-28 11:30:50.679412'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-28 11:30:50.696403'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-28 11:30:50.802041'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-28 11:30:50.820983'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-28 11:30:50.855944'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-28 11:30:50.900922'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-28 11:30:50.941895'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-28 11:30:50.987877'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-28 11:30:51.012857'),
(17, 'main', '0001_initial', '2020-01-28 11:30:51.075818'),
(18, 'main', '0002_auto_20200127_1516', '2020-01-28 11:30:51.085813'),
(19, 'main', '0003_auto_20200128_1409', '2020-01-28 11:30:51.129788'),
(20, 'main', '0004_auto_20200128_1412', '2020-01-28 11:30:51.149777'),
(21, 'main', '0005_auto_20200128_1430', '2020-01-28 11:30:51.184757'),
(22, 'sessions', '0001_initial', '2020-01-28 11:30:51.269708'),
(23, 'main', '0006_auto_20200128_2239', '2020-01-28 19:39:47.439845'),
(24, 'main', '0007_auto_20200128_2257', '2020-01-28 19:57:53.320550'),
(25, 'main', '0008_auto_20200128_2259', '2020-01-28 19:59:13.909040');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0ksyd8ndxnutw78zu3wz6l7dd2lskopu', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 13:54:19.704726'),
('0qi2lzl4d1sms9n11re8o74do4vuikcj', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 08:57:19.809405'),
('15o2v18bjo04gn838tkd243qcikb9rm9', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 14:02:59.829033'),
('1rnfpj5bka19knflfpxhppxhaoif5wyo', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-11 11:41:18.793190'),
('20tkonfjmbl3lgtu021ki76v6ndexwk1', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-17 07:37:13.486044'),
('21vptfssb7dtttevoha6iu1fdvvbn09i', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-15 11:58:31.224693'),
('415gg2mif2y0dfgksle6o33sy0mfzx28', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 13:58:22.333049'),
('4249uwfva7y9wfj34pjz1wh1m56nr4ol', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-16 10:05:21.396320'),
('4ae3x3mj8r5cszfvnreoqysdo9dxd1ub', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 13:58:59.254039'),
('4j78eu0yoog25xy6xr2kdlxwfu4qyy1w', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-20 05:42:03.337172'),
('5jm6qh57x0vlwf9pmhao0hqr4108ojzn', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 12:44:43.951512'),
('5r39qgbd6dyxgb0m1ot5qf9ayrgtua5y', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 08:53:45.378971'),
('5yto5cg11twjxfu0h84u45lq9mm354oq', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-16 10:09:08.183730'),
('6qaiac5p2fv9nzu5oa41dq1dsdxllx4z', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-17 13:51:22.866047'),
('74xxe85a6m3z7g5jgupb82pijpqoq1mj', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 14:43:11.026083'),
('760ienuhbno6scu2cjduai3y5f8lflc9', 'MGYyMTdmOTIzZjZhMTFiYjIxNGNkNzBlYTI3ODQ1YzUwMWFiZWQ0Njp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYzE4ZGYyZTdlZTYzZjU3NmIzNTllMDM4NjI4NWQ3OThkYTc5NGRmIn0=', '2020-02-12 10:55:51.037848'),
('799yl1k2jgyex62agp1twsxjhbp4jewd', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 12:45:37.378108'),
('82bh4rst99i84nzq5rnj4dao0aktruns', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-16 10:03:48.915546'),
('82qxctv1wz91n7b2r32svzuzeb1r5tlc', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-12 07:02:20.034913'),
('9j34pduosrses22efxnmppwkyagu8aeu', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 08:57:51.899553'),
('9pjqoouco85kt8h7ne822eskf3giylil', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-12 10:58:05.413397'),
('ahmr8789oe6qutlw3nvlcwoauc3z5f09', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 14:02:03.607047'),
('b2xlltrnqy51gxpmyw6kwgdrg9s2z4d4', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-12 07:45:00.187069'),
('bo0cagu7wj0hcxi0xcmzvozo7vo8diju', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-12 12:49:50.746930'),
('c9yamwrtyll3244n0i3xvljlxhlrqb42', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 13:57:17.239141'),
('dddrp9wf3xsqx9sibmsh0u7a0rpqepof', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 12:29:10.852799'),
('dok74974h07efbr6xxsr5foxqfpmkxxz', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 15:00:21.539534'),
('dvv6fzgbi9vluk5uv17qpy5zidjda5lx', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-11 19:55:08.373050'),
('eaghmn2m06s81n1g5wlivbdjcd5gnf7y', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 14:01:53.568566'),
('g81veb5b7q8cpaj9vqtd95lf6hfcpb16', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 12:57:05.669024'),
('g8aziqq0cbcsjbqfqt030ssh09g0daux', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 20:28:02.788848'),
('gfujlatfcm8ss5s1vf14jpkxgh2lrrmo', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-16 10:02:39.123227'),
('goag8ah1gfgk8bv77ltuhrd7hq4gkfsg', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 13:39:09.586233'),
('gp1svauxyr55j17jbg0wx8y3x6h0mlir', 'MTc5YzBjZmI5ZDc4NjE5OTlkMmIwMWVmNTdiMGE4Y2M3YTYzNTUyNzp7fQ==', '2020-02-12 10:00:03.225420'),
('h4qmkc7j9m88vo1kg7y5y16cth2yfep7', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 14:59:48.179629'),
('h61mbdydccrsjbnzy60p2tse8h0g3p37', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-12 07:01:44.080354'),
('hzfbso3ggt2psm44tg05syxr8ep6hg9o', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-16 10:05:39.317213'),
('i6a9osvp4vih8bo5tqdcql76hw245bca', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 13:48:18.639814'),
('imo3dtvnffg5nzcnmgrad6frnfv1e84l', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-12 10:05:58.224127'),
('ixqs8bonmc4v2t3tvy3cbdmcswcbxi84', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 13:55:57.004682'),
('m4xvd6cyukkx4yl5l0khoeq1yymkdaf9', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 13:37:35.201935'),
('nr2t4mhxl058b8zqh8qoaltsucf4jl92', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-17 14:39:08.708904'),
('o37w458wzmmxj30bjvx7ecwt465bkyxz', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 08:54:43.380707'),
('o4f8yq3751rpgy9dpasbexhwb7gyk767', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-18 09:19:15.065354'),
('o4yix004arz8ovkwl83tmwf6gfp75zgq', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 14:28:53.258599'),
('o7di5x9j0vj6n3vakv2lcm608sclwgcw', 'NmM4NDg5NTBjZTViNzA4OGNiNTU0MWNkOTE5MjM2ODIzNjFmNTYxNDp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5M2RkNTBlOTA0ZTFiZTBkZDk4ZDM1MjI4NzBlOGU4NmRiZjE5YjRiIn0=', '2020-02-15 11:02:41.824006'),
('oev6679fwiykjhy1ka8g9h4znz5v63vy', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 12:44:31.617350'),
('okthq4gwci5cdn4z6hdt9exd4w9d2enh', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-19 12:03:08.218782'),
('pichjztverfc58j3csi0ycxrduoq207o', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 14:40:58.686793'),
('pxsmfcj2gyzq7mz2t07hhuvnucdw34c0', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 08:53:24.244719'),
('q1azgail8sks70lzs1cbfmj7ql2oalat', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 12:29:31.347946'),
('q1gsasj5cml8gybzzrc8u77fa4yh6a0e', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-12 12:50:19.930410'),
('rjh6tkokzz7n0x44ndalxn2vyiihbf3a', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 13:53:39.947835'),
('rydeu9lrxlrdz9q9knb2upkalx5h6xou', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 08:54:13.895929'),
('ryn2nrxt9877qne7ghj26gwn3efhkyae', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-16 10:07:39.496596'),
('t3wrubyav4yo2aaq07kby3jkg4hfvzul', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 08:55:15.198024'),
('t6x4gs57a3imq0fw3g2fryw0c53s0uvl', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 12:30:24.815607'),
('taf186li3dyplbcbqkw3cxi6x6in1jr0', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 20:28:46.535488'),
('tc206wbfsqx1uiasyhh5k2930f0g9i0g', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 12:55:20.141276'),
('tg8x9epa2nz21cfvtagng4m1w7w5ic53', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 14:39:46.628677'),
('to77acxpzrrvqenn6cgqgt0d0cky1cpc', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-11 14:03:24.160168'),
('ukcbumr9xra4af75ic6d6btvvx593xgg', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 14:31:15.690036'),
('vk2v29wsdhrgjcakkclasljgstbop8xq', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-12 10:28:38.520570'),
('vqvip2k5nkuedggphan5qv5f5mo70x1w', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 08:52:39.067555'),
('w1kuozkdi5spqdc7oo0kw6392i1acmwk', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 14:29:29.910210'),
('wf1mdayfqd0rmw6x9rlo6q608rwef1vo', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 14:39:56.270391'),
('wtte62fm9myfiwssga96pqgdd2bzdsvb', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 14:29:46.871316'),
('wuuz7q7ybsuyvuns7jg0gq3ilco3xvts', 'MTc5YzBjZmI5ZDc4NjE5OTlkMmIwMWVmNTdiMGE4Y2M3YTYzNTUyNzp7fQ==', '2020-02-15 11:01:12.531722'),
('xfnc7647z3q4xjdg3y7nsvdovzq14d0t', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 12:19:06.242306'),
('xri8v2iydbjpxjjayzd5ltdqrc0p7bc1', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 05:40:51.684809'),
('yjfdf0v5owtowbqpasofo4gmmgi6a2p6', 'YTFiNDE0MTQwZDY3MTVhZWE2Y2JkNjEzYzc5ZTNlMjI0M2EwZGY0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ODhlODVmODhjMmRmMjUxNTgxOTBlZDE4YjdlNDhiZDNiZDQ5ODA4In0=', '2020-02-16 10:04:40.450396'),
('ykg5evbvgg21ddo2jqoy177ae3ybcj71', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 14:30:23.872185'),
('z8qgozi6nxtsl8r1fih1qbgm90dqep52', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-12 07:44:12.493101'),
('zl4h19a6lpbgftkqejesljo53snnuwvs', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 08:56:28.720145'),
('znlr5mlnzhdtjlh1tcyif92bw0ddpcce', 'NTVlNjJmM2EyOTVjZTdhNjM3YjgwNjEyYmRhNThkYjU1MGY0M2E4Nzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3YzM0YjAzMDE5ZTA5MWNiODVhZWNjMDZkYzE4ZWM0NTJmMjNjY2I0In0=', '2020-02-14 14:40:27.411362');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `error_codes`
--

CREATE TABLE `error_codes` (
  `er_id` int(11) NOT NULL,
  `er_code` varchar(300) NOT NULL,
  `er_name` varchar(300) NOT NULL,
  `er_createdat` timestamp NULL DEFAULT current_timestamp(),
  `er_editedat` timestamp NULL DEFAULT current_timestamp(),
  `er_createdby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `error_codes`
--

INSERT INTO `error_codes` (`er_id`, `er_code`, `er_name`, `er_createdat`, `er_editedat`, `er_createdby`) VALUES
(1, 'DK17', 'TARAZ', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(2, 'DK18', 'TEFE', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(3, 'DK01', 'YAG_LEKESI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(4, 'DK04', 'GERGIN_GEVSEK_TEL', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(5, 'DK16', 'NOPE', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(6, 'DK22', 'HAFIF_TEFELER', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(7, 'DK23', 'HAFIF_TARAZLAR', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(8, 'DK26', 'COZGU_SIYRIGI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(9, 'DK29', 'ATLAMA', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(10, 'DK39', 'ATKI_IPLIK_SIYRILMASI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(11, 'DK57', 'YAGLI_IPLIK', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(12, 'DK05', 'YANLIS_TEL', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(13, 'DK07', 'TEL_YOLU(COZGU_KACIGI)', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(14, 'DK24', 'COZGU_IZLERI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(15, 'DK25', 'CIMBAR_IZI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(16, 'DK32', 'TARAK_IZI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(17, 'DK30', 'ATKI_BIRIKIMI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(18, 'DK31', 'KIRPIK', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(19, 'DK37', 'EZILME_IZLERI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(21, 'DK58', 'ENINE_YOLLAR', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(22, 'DK65', 'YAGLI_ATKI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(23, 'DK19', 'CIMBIZ_IZI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(24, 'DK48', 'IPLIK_DUZGUNSUZLUGU', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(25, 'DK02', 'INCE_KALIN_ATKI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(26, 'DK10', 'ATKI_KACIGI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(27, 'DK11', 'YARIM_ATKI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(28, 'DK12', 'CIFT_ATKI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(29, 'DK27', 'AYAK_KACIGI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(30, 'DK41', 'YIRTIK', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(31, 'DK42', 'EN_FARKI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(32, 'DK43', 'ENINE_BANT', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(33, 'DK44', 'GRAMAJ_FARKI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(34, 'DK46', 'FARKLI_KALITE', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(35, 'DK51', 'LIKRASI_BOZUK', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(36, 'DK08', 'COZGU_KOPUGU', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(37, 'DK09', 'KAFES', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(38, 'DK13', 'BONCUK', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(39, 'DK14', 'YUZME', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(40, 'DK15', 'ATKIYI_ICERI_ALMA', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(41, 'DK20', 'DELIK', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(42, 'DK21', 'PATLAK', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(43, 'DK28', 'UCUNTU_HAV', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(44, 'DK47', 'IP_CEKMESI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(45, 'DK50', 'KIRIKLAR', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(46, 'DK54', 'YABANCI_IPLIK_KARISMASI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(47, 'DK59', 'COZGU_ATKI_KOPUGU', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(48, 'DK03', 'INCE_KALIN_COZGU', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(49, 'DK40', 'TAHAR_TARAK_HATASI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(50, 'DK53', 'TUYLENME', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(51, 'DK60', 'PAS_LEKESI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(52, 'DK61', 'BOYA_LEKESI', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(53, 'DK62', 'COKLU_KIRPIK', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(54, 'DK63', 'COKLU_NOPE', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(55, 'DK64', 'BUYUK_EZILME', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(363, 'DK', 'ACMA', '2020-01-28 11:26:01', '2020-01-28 11:26:01', NULL),
(368, 'DENEME2333', 'DENEMEE33', '2020-02-04 03:23:59', NULL, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `quality_codes`
--

CREATE TABLE `quality_codes` (
  `qu_id` int(11) NOT NULL,
  `qu_code` varchar(300) NOT NULL,
  `qu_name` varchar(300) NOT NULL,
  `qu_createdat` timestamp NULL DEFAULT current_timestamp(),
  `qu_editedat` timestamp NULL DEFAULT current_timestamp(),
  `qu_createdby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `quality_codes`
--

INSERT INTO `quality_codes` (`qu_id`, `qu_code`, `qu_name`, `qu_createdat`, `qu_editedat`, `qu_createdby`) VALUES
(679, 'AK10668', 'HAREM_SIFON', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(680, 'AK11239', 'MAT_SATEN', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(681, 'AK11343', 'MAT_SATEN_STRETCH', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(682, 'AK11766', 'REY', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(683, 'AK11888', 'AMARANT', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(684, 'AK11907', 'ARYA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(685, 'AK11918', 'VARDES_SATIN', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(686, 'AK11919', 'DOBLE_CARA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(687, 'AK11927', 'THERON', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(688, 'AK11930', 'AMBER', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(689, 'AK11935', 'CARRY', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(690, 'AK11963', 'SORRENTO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(691, 'AK11963-L', 'SORRENTO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(692, 'AK11979', 'KING_CREPE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(693, 'AK11982', 'HEAVY_REY', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(694, 'AK11996', 'SILKY_YORYU', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(695, 'AK1200', 'JAVANAISE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(696, 'AK12002', 'HIGH_SILKY', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(697, 'AK1212', 'MONICA_MAROCAINE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(698, 'AK1212-E', 'MAROCAINE_ECO_VERO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(699, 'AK1239', 'SATEN_MAROCAINE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(700, 'AKL13616', 'ADWINA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(702, 'AK1500', 'VISCOSE30/1', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(703, 'AK1500_V', 'VISCOSE30/1', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(704, 'AK1500-185', 'VISCOSE30/1', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(705, 'AK1500-E', 'VIS.30/1_ECO_VERO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(706, 'AK1500-L', 'VISCOSE30/1', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(707, 'AK1500-LV', 'VISCOSE30/1', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(708, 'AK1500-V', 'VISCOSE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(709, 'AK15015', 'BLOSSOM', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(710, 'AK15017', 'ESTILO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(711, 'AK15018', 'VISCOSE_CRINKLE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(712, 'AK15019', 'FUERTE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(713, 'AK15021', 'GRADEN(MOSS_CREPE)', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(714, 'AK15028', 'LIGHT_BELMANDO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(715, 'AK15029', 'CHANCE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(716, 'AK15033', 'TALIN', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(717, 'AK15033-E', 'TALIN_ECO_VERO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(718, 'AK15034', 'TOSCANA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(719, 'AK15050', 'SALOMON', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(720, 'AK15054', 'NEMESIS', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(721, 'AK15083', 'JASMINE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(722, 'AK15106', 'MEGAN', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(723, 'AK15109', 'MONTE_CARLO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(724, 'AK15111', 'FIRENZE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(725, 'AK15117', 'GITANE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(726, 'AK15122', 'TERESSA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(727, 'AK15133', 'DOMINIQUE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(728, 'AK15136', 'MAGNUM', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(729, 'AK15138', 'THYRA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(730, 'AK15139', 'GENIS_BELMANDO_160CM', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(731, 'AK15142', 'CHERIE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(732, 'AK1589', 'HEAVY_VISCOSE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(733, 'AK1592', 'BELMANDO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(734, 'AK1592-V', 'BELMANDO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(735, 'AK16240', 'COTTON_VOILE60/1', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(736, 'AK16728', 'TROY', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(737, 'AK16779', 'CARLEY', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(738, 'AK16788', 'COTTON_POPLIN', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(739, 'AK16801', 'GRACE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(740, 'AK16802', 'GINGER', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(741, 'AK16805', 'CLOUD', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(742, 'AK16812', 'TULIP', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(743, 'AK16823', 'MARIS', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(744, 'AK16825', 'POPLIN50/1', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(745, 'AK16851', 'TINA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(746, 'AK16854', 'COTTON_POPLIN60/1', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(747, 'AK16858', 'ESKA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(748, 'AK16861', 'TULIP_TWILL', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(749, 'AK16862', 'TALUS', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(750, 'AK2520', 'LIZ', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(751, 'AK2569', 'LIZ_STRIPE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(752, 'AK2575', 'TOUCH', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(753, 'AK2595', 'LUNA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(754, 'AK2598', 'CREPE_BACK_SATIN', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(755, 'AK2600', 'FLAT_MAROCAINE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(756, 'AK2602', 'LOTUS', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(757, 'AK2604', 'CLARO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(758, 'AK2612', 'CALIDA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(759, 'AK2616', 'ALPHA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(760, 'AK2630', 'MIMAS', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(761, 'AK2638', 'ELISKA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(762, 'AK2642', 'LETTA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(763, 'AK2651', 'SPRING', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(764, 'AK2666', 'TERRY_COTTON', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(765, 'AK2675', 'GRACIA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(766, 'AK2678', 'VIVALDI', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(767, 'AK2687', 'BRAVO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(768, 'AK2689', 'ALPHA_MAT', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(769, 'AK2690', 'SHAKIRA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(770, 'AK5004', 'VISCOSE_CRINKLE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(771, 'AK5012', 'SILK_CREPE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(772, 'AK5016', 'BARCELONA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(773, 'AK5020', 'TESS', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(774, 'AK5021', 'SHELBY', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(775, 'AK5023', 'SYDNEY', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(776, 'AK5024', 'TOSCA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(777, 'AK5026', 'SELINO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(778, 'AK5027', 'LYRIC', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(779, 'AK7001', 'SANTA_MONICA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(780, 'AKL13622', 'AGILE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(781, 'AKN1777', 'NYLON_ELASTAN_BENGALIN', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(782, 'IMP1500', 'VISCOSE30/1', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(783, 'IMP10668', 'HAREM_SIFON', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(784, 'IMP1518', 'GEORGETTE_CREPE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(785, 'IMP1536', 'COTTON_VOILE60/1', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(786, 'IMP1537', 'COTTON_CRN40*40', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(787, 'IMP1538', 'COTTON_VOILE_CHEES', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(788, 'IM1574', 'BUBBLE_SATEN', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(789, 'IMP1575', 'CORDELIA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(790, 'IMP1600', 'BELLE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(791, 'IMP1602', 'ELETA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(792, 'IMP1611', 'VISCOSE_VOILE80/1', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(793, 'IMP2002', 'COTTON_SILK_VOILE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(794, 'IMP2007', 'CREPE_DEMOR', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(795, 'IMP2009', 'THYRA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(796, 'IMP2012', 'AMELIA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(797, 'IMP2013', 'CARMINA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(798, 'IMP2017', 'KESHA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(799, 'IMP2024', 'CRYSTAL', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(800, 'IMP2027', 'CHRISTINA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(801, 'IMP2035', 'VARIO', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(802, 'IMP2036', 'PRIMA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(803, 'IMP2039', 'PUCKER', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(804, 'IMP2041', 'SANSA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(805, 'IMP2044', 'VENICE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(806, 'IMP3002', 'COTTON_POPLIN', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(807, 'IMP4000', 'BUTTERFLY', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(808, 'IMP4001', 'BUTTERFLY_SATEN', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(809, 'KNT2612', 'CHAMP', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(810, 'KNT2700', 'MIRANDA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(811, 'KNT2717', 'LAURA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(812, 'KNT2806-32P', 'KALINKA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(813, 'KNT2856', 'GIBSON', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(814, 'KNT3112', 'APRIL', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(815, 'KNT3121', 'KIBELE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(816, 'KNT3139', 'RONA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(817, 'KNT3155', 'LITERA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(818, 'KNT3169', 'HARVEY', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(819, 'KNT3170', 'PANDORA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(820, 'KNT3180', 'VENEZIA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(821, 'KNT3211', 'P/V_DEVORE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(822, 'KNT3245', 'DIANA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(823, 'KNT3285', 'MARTIN', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(824, 'KNT3289', 'SUNNY', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(825, 'KNT3291', 'TESS', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(826, 'KNT3299_B', 'CELIKLI', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(827, 'KNT3306', 'MICRO_TECRA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(828, 'KNT3315', 'MIRA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(829, 'KNT3320', 'VORTEX_LAURA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(830, 'KNT3332', 'PIA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(831, 'KNT3334', 'KARITA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(832, 'KNT3355', 'RAYA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(833, 'KNT3358', 'SAMANTHA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(834, 'KNT3368', 'SEARE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(835, 'KNT3271', 'AKELDAN', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(836, 'KNT3457', 'ADELINA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(837, 'KNT3507', 'VIOLANTE', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(838, 'KNT3535', 'MAGIC', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(839, 'KNT3539', 'GLOMERA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(840, 'KNT3548-32P', 'FORTUNA', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(841, 'IMP1500E', 'VISKON', '2020-01-28 11:24:44', '2020-01-28 11:24:44', NULL),
(842, 'DENEME23', 'DENEME23', NULL, '2020-02-01 08:56:06', 1),
(843, 'DENEME3', 'DENEME3', NULL, NULL, 1),
(844, 'DENEME4', 'DENEME4', '2020-01-29 06:55:18', NULL, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `records`
--

CREATE TABLE `records` (
  `re_id` int(11) NOT NULL,
  `re_fabrictype` varchar(300) NOT NULL,
  `re_path` varchar(300) NOT NULL,
  `re_labeledby` int(11) NOT NULL,
  `re_createdat` timestamp NOT NULL DEFAULT current_timestamp(),
  `re_editedat` timestamp NOT NULL DEFAULT current_timestamp(),
  `re_qualityid` int(11) NOT NULL,
  `re_errorid` int(11) NOT NULL,
  `re_image` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `records`
--

INSERT INTO `records` (`re_id`, `re_fabrictype`, `re_path`, `re_labeledby`, `re_createdat`, `re_editedat`, `re_qualityid`, `re_errorid`, `re_image`) VALUES
(19, 'HAM', 'DENEME', 1, '2020-02-01 18:21:19', '2020-02-06 04:25:45', 679, 1, 'HAM/AK11930___AMBER/DK31___KIRPIK/www.jpg'),
(20, 'HAM', 'DENEME', 1, '2020-02-03 05:17:04', '2020-02-06 02:45:16', 747, 55, 'HAM/AK16858___BUYUK_EZILME/DK64___BUYUK_EZILME/www.jpg'),
(21, 'HAM', 'DENEMEE', 1, '2020-02-03 05:18:14', '2020-02-03 08:18:14', 688, 17, 'HAM/AK11930___AMBER/DK30___ATKI_BIRIKIMI/asd.jpg'),
(22, 'HAM', 'DENEMEEqwd', 1, '2020-02-03 11:43:48', '2020-02-03 14:43:48', 696, 19, 'HAM/AK12002___HIGH_SILKY/DK37___EZILME_IZLERI/asd.jpg'),
(23, 'HAM', 'DENEMEE', 2, '2020-02-04 06:52:52', '2020-02-04 09:52:52', 697, 22, 'HAM/AK1212___MONICA_MAROCAINE/DK65___YAGLI_ATKI/www.jpg'),
(24, 'HAM', 'DENEME2', 2, '2020-02-04 07:33:55', '2020-02-06 04:26:27', 689, 5, 'HAM/AK1200___JAVANAISE/DK13___BONCUK/www.jpg'),
(25, 'HAM', 'DENEM', 5, '2020-02-04 07:42:54', '2020-01-15 00:00:00', 698, 363, ''),
(26, 'HAM', 'DENEM', 4, '2020-02-04 07:43:29', '2020-02-06 05:35:40', 756, 28, 'HAM/AK12002___HIGH_SILKY/DK62___COKLU_KIRPIK/asd.jpg'),
(27, 'HAM', 'DENEME', 1, '2020-02-04 10:55:55', '2020-02-04 13:55:55', 735, 13, 'HAM/AK16240___COTTON_VOILE60/1/DK07___TEL_YOLU(COZGU_KACIGI)/asd.jpg'),
(28, 'HAM', 'DENE', 1, '2020-02-05 06:02:23', '2020-02-05 09:02:23', 746, 13, 'HAM/AK16854___COTTON_POPLIN60/1/DK07___TEL_YOLU(COZGU_KACIGI)/asd.jpg'),
(29, 'HAM', 'DENE', 1, '2020-02-05 06:04:20', '2020-02-05 09:04:20', 735, 13, 'HAM/AK16240___COTTON_VOILE60/1/DK07___TEL_YOLU(COZGU_KACIGI)/asd.jpg'),
(30, 'HAM', 'DENEMEE', 1, '2020-02-05 06:08:33', '2020-02-05 09:08:33', 746, 18, 'HAM/AK16854___COTTON_POPLIN60-1/DK31___KIRPIK/asd.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `us_id` int(11) NOT NULL,
  `us_email` varchar(300) NOT NULL,
  `us_name` varchar(300) NOT NULL,
  `us_password` varchar(300) DEFAULT NULL,
  `us_role` varchar(300) DEFAULT NULL,
  `us_fname` varchar(300) NOT NULL,
  `us_lname` varchar(300) NOT NULL,
  `us_lastseen` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`us_id`, `us_email`, `us_name`, `us_password`, `us_role`, `us_fname`, `us_lname`, `us_lastseen`) VALUES
(1, 'cemal.dak@gmail.com', 'cemaldak', 'cemaldak', NULL, 'Cemal', 'Dak', '2020-02-06 02:42:03'),
(2, 'cemal.dak@gmail.com', 'cmldk', 'cemaldak', NULL, 'Cemal', 'Dak', '2020-02-04 07:33:36'),
(4, 'asd@asd.com', 'deneme', 'cemaldak', NULL, 'Cemal', 'Dak', '2020-02-01 08:02:41'),
(5, 'admin@admin.com', 'admin', 'admin', NULL, 'admin', 'admiin', '2020-02-03 07:31:09');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Tablo için indeksler `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Tablo için indeksler `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Tablo için indeksler `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Tablo için indeksler `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Tablo için indeksler `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Tablo için indeksler `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Tablo için indeksler `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Tablo için indeksler `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Tablo için indeksler `error_codes`
--
ALTER TABLE `error_codes`
  ADD PRIMARY KEY (`er_id`),
  ADD KEY `er_createdby` (`er_createdby`);

--
-- Tablo için indeksler `quality_codes`
--
ALTER TABLE `quality_codes`
  ADD PRIMARY KEY (`qu_id`),
  ADD KEY `qu_createdby` (`qu_createdby`);

--
-- Tablo için indeksler `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`re_id`),
  ADD KEY `re_labeledby` (`re_labeledby`),
  ADD KEY `re_qualityid` (`re_qualityid`),
  ADD KEY `re_errorid` (`re_errorid`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`us_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `error_codes`
--
ALTER TABLE `error_codes`
  MODIFY `er_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- Tablo için AUTO_INCREMENT değeri `quality_codes`
--
ALTER TABLE `quality_codes`
  MODIFY `qu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=845;

--
-- Tablo için AUTO_INCREMENT değeri `records`
--
ALTER TABLE `records`
  MODIFY `re_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Tablo kısıtlamaları `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Tablo kısıtlamaları `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Tablo kısıtlamaları `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Tablo kısıtlamaları `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Tablo kısıtlamaları `error_codes`
--
ALTER TABLE `error_codes`
  ADD CONSTRAINT `error_codes_ibfk_1` FOREIGN KEY (`er_createdby`) REFERENCES `users` (`us_id`);

--
-- Tablo kısıtlamaları `quality_codes`
--
ALTER TABLE `quality_codes`
  ADD CONSTRAINT `quality_codes_ibfk_1` FOREIGN KEY (`qu_createdby`) REFERENCES `users` (`us_id`);

--
-- Tablo kısıtlamaları `records`
--
ALTER TABLE `records`
  ADD CONSTRAINT `records_ibfk_1` FOREIGN KEY (`re_qualityid`) REFERENCES `quality_codes` (`qu_id`),
  ADD CONSTRAINT `records_ibfk_2` FOREIGN KEY (`re_errorid`) REFERENCES `error_codes` (`er_id`),
  ADD CONSTRAINT `records_ibfk_3` FOREIGN KEY (`re_labeledby`) REFERENCES `users` (`us_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
