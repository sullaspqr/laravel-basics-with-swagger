-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2025. Már 01. 18:22
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `laravelprojekt`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_01_085354_create_personal_access_tokens_table', 1),
(5, '2025_03_01_132814_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `completed`, `created_at`, `updated_at`) VALUES
(1, 'Nihil tenetur magni ipsam odio consequuntur odit voluptas.', 'Quo laboriosam molestiae ipsa omnis aut. Magnam repellendus dolores repudiandae voluptas voluptate et. Autem repellendus voluptatem corporis repudiandae quo. Magni laborum mollitia occaecati omnis sapiente provident vel.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(2, 'In perferendis soluta nihil error ea ab cupiditate.', 'Consequatur ullam exercitationem reiciendis recusandae. Perferendis explicabo ad autem et delectus eligendi voluptas. Et explicabo rerum beatae voluptatibus. Consequatur provident voluptatibus et in maiores. Eum assumenda mollitia esse.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(3, 'Architecto animi ea est et atque voluptatum aliquid recusandae.', 'Neque nemo hic impedit modi. Aut aut repellat tenetur. Est expedita voluptatem doloribus quas sunt. Mollitia sit deserunt error occaecati neque magnam neque.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(4, 'Velit occaecati totam et ut qui deleniti non.', 'Facilis eaque tempora minima rerum quas numquam accusamus velit. Accusantium velit ab itaque ab consequuntur nesciunt cumque. Sed ducimus dolores dolores deleniti.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(5, 'Doloremque consequatur nulla modi placeat dolor dolorum.', 'Voluptatem eaque qui aperiam unde et reprehenderit fuga. Minima aut est ab. Et ea possimus asperiores quo occaecati est dignissimos sunt. Voluptas quidem mollitia ullam et ullam aut excepturi.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(6, 'Nemo sint qui eligendi dolor in consectetur.', 'Tempore rerum minima aut nobis sunt consequuntur. Voluptatem atque eveniet sit consequuntur magni quia possimus. Quidem quia distinctio molestias architecto aut repellendus aliquam. Vero ipsam assumenda autem libero tempora facilis dicta.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(7, 'Repellat ea blanditiis amet quo debitis.', 'Ut ducimus aperiam quo quo consectetur quasi. Maiores id laborum rerum adipisci unde voluptatem. Aut sint iure culpa beatae.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(8, 'Vel dolores facere autem quos magni quia illum quod.', 'Tempore odio deleniti et amet nemo ut aliquam qui. Voluptatem dicta deserunt vitae enim. Enim ducimus aut esse quia laudantium nihil ea rem.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(9, 'Fugit nobis similique molestias quia.', 'Qui sit vel quia et quas eveniet facere. Illo eligendi aperiam aut voluptatem similique voluptatem qui. Tenetur sed sequi ut rerum minus.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(10, 'Amet ipsa reiciendis nihil cumque exercitationem ea.', 'Voluptatem voluptatem ratione atque nisi. Dolores ut qui qui eius. Nisi et iusto vel voluptas tempore.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(11, 'In qui dicta quas quia rerum non.', 'Dolores veritatis tempora itaque quia. Doloribus quia quis asperiores aliquam et quia. Sed ut repellat impedit laudantium alias praesentium omnis. Dolores sunt quidem libero architecto minima est.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(12, 'Qui non alias assumenda ea optio non qui deleniti.', 'Voluptas velit quasi consectetur id quis facilis enim deserunt. Voluptatem eos reiciendis reiciendis veniam. Et fugit repudiandae voluptate aut et natus cum quas.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(13, 'Aut sed voluptas non ab officiis.', 'Fuga distinctio id sequi aut hic corrupti blanditiis. Minima voluptatem necessitatibus enim maxime eum aut voluptatem labore. Et voluptas eos quis occaecati sed. Sit tenetur omnis quidem quis.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(14, 'Veniam quibusdam mollitia perferendis.', 'Vitae nisi quam ab iure quisquam repellendus ut. Accusantium ipsa neque facilis ut itaque. Veritatis omnis voluptates laborum. Corporis similique at aspernatur dignissimos consequuntur quibusdam eum.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(15, 'Cupiditate et perferendis sit ut incidunt.', 'Non quibusdam rerum assumenda esse fugit incidunt expedita. Ad rerum iusto nobis ut et aut architecto. Consequatur pariatur doloremque vitae temporibus dolore vel et. Voluptates magnam sint eos consequuntur voluptatem iste. Vel dicta aut aut.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(16, 'Ut dolore earum consectetur.', 'Qui nihil enim omnis quo dicta qui. Soluta quia omnis vel error. Voluptatum soluta officiis dolores eaque reiciendis. Minima aut quia voluptas voluptatem libero consequatur dolores.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(17, 'Fuga et aperiam sit.', 'Quis a a tempora. Atque adipisci consequatur est ut quo non dignissimos. Facilis nihil aut eligendi et cum itaque consequuntur.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(18, 'Optio mollitia voluptatem earum sint beatae exercitationem a.', 'Nostrum veniam ut officia suscipit maxime. Numquam dolores sapiente dolor nobis doloribus ut alias. Saepe et molestiae voluptatibus voluptas ipsa adipisci. Tempora esse illum et perferendis omnis nostrum molestiae.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(19, 'Ea architecto qui omnis.', 'Saepe et error dolores maxime. Vel saepe aut non eaque et est. Eum odio nesciunt ipsam labore et sequi. Consectetur quia eaque ratione consequuntur voluptates.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(20, 'Dolorum occaecati occaecati qui repellendus ut sunt.', 'Perferendis nam id quos fuga illo aperiam nemo voluptatem. Laborum eos nostrum nobis aut exercitationem ipsa. Sunt recusandae temporibus non est explicabo laborum maiores non.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(21, 'Cum accusantium blanditiis aspernatur unde natus ut.', 'Aliquam et sunt id est iste quisquam. Architecto deleniti nostrum aut dolore. Pariatur et unde sed praesentium. Repellat quidem facere pariatur consequatur. Facere laboriosam ipsa repudiandae minus blanditiis.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(22, 'Quas voluptatum dolores minus beatae dolores sit dicta.', 'Sunt nam quibusdam natus distinctio in architecto molestiae. Asperiores sed ea non ipsum omnis voluptas. Sit ex ea odit ea molestias quam non vero. Sequi ut aspernatur et aut aut.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(23, 'Atque id veniam nihil dolorum accusamus.', 'Sunt dolor velit quis autem minima iure. Voluptatem voluptatem est voluptatem sit sit. Qui amet non debitis commodi. Voluptatem itaque occaecati rerum facilis. Id perspiciatis illo voluptatem aut et.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(24, 'Sed in libero dolor quam quo expedita saepe nulla.', 'Ipsum aut et cupiditate aperiam et vel. Iste modi quia et odio voluptatibus autem laboriosam. Tempore sed repellat atque placeat sequi provident. Aperiam mollitia quaerat sapiente quas repudiandae iste.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(25, 'Cupiditate beatae consectetur magni fugit veniam molestiae incidunt.', 'Tempore consequatur minus laborum repellendus. Est unde qui quis et excepturi. Molestiae consequuntur facilis aut alias provident quis perferendis cumque.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(26, 'Voluptas sit officia molestiae nemo quasi voluptas in.', 'Alias est nulla iusto quis provident repellendus. Dicta ea et nostrum vero aliquid illo magni. Dolore nisi natus aliquam qui blanditiis. A aspernatur reiciendis dolorum impedit et.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(27, 'Error dignissimos debitis nobis reiciendis tempora non.', 'Ipsam facilis quo optio. Necessitatibus animi et et dolor. Vitae ea dignissimos est consequatur est. Ea dicta voluptas ea qui harum.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(28, 'Sint reprehenderit consequatur ea molestiae omnis et.', 'Minima consequuntur dolore nemo maxime culpa cum eos amet. Minus aut illum provident quis voluptas. Nisi explicabo cumque et est ipsum eaque voluptates. Iusto et magni ea excepturi.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(29, 'Et nostrum qui explicabo.', 'Saepe delectus quod harum pariatur non. Facilis est sint in velit quisquam quia rerum. Harum impedit incidunt tenetur tempora eaque deleniti.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(30, 'Autem placeat nobis itaque sunt vel consequuntur quis sequi.', 'Autem veritatis neque accusamus qui est quia aut. Provident est quia deleniti iusto mollitia magnam. Quia quos error quis voluptatem. Qui hic consequatur pariatur aspernatur vel praesentium veritatis voluptatem. Mollitia dignissimos facilis nostrum asperiores dolorem.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(31, 'Distinctio aut rerum saepe sed inventore sint.', 'Sed dolorem sint sit ut. Non veritatis atque cumque. Non blanditiis laudantium libero totam ratione vero cumque. Fuga dolorem non sunt sequi.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(32, 'Autem velit praesentium est placeat.', 'Quos eum est voluptatem et et quae commodi. Tenetur eligendi a consequatur tenetur est et corporis voluptatibus. Aut adipisci quo est aut recusandae sint ut.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(33, 'Maiores facilis occaecati fuga possimus.', 'Hic quas necessitatibus et amet quis nam. Eius dolor sunt hic esse dicta ut consequuntur.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(34, 'Unde in officia dignissimos sequi inventore blanditiis et.', 'Omnis ad voluptas sint voluptatem vitae. Blanditiis qui a sit est maiores consequatur nostrum. Provident dolorem et nihil qui sapiente.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(35, 'Cupiditate facilis tenetur officiis dignissimos.', 'Aut quo ut et atque. Voluptatem rerum ex distinctio tempora consequatur ut reiciendis. Dolores consequatur dolores architecto quidem.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(36, 'Quod quibusdam excepturi repellat id iusto.', 'Quis officiis molestias occaecati. Numquam quis natus sed est autem molestias voluptatum dolor. Sit sint minima dolorem. Esse et magnam ut et ex quis. Quia qui quia maxime et.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(37, 'Quidem similique et nulla consectetur officiis veniam culpa.', 'Voluptas illo omnis fugiat aspernatur. Sapiente enim impedit neque est. Cum facere hic recusandae dicta quibusdam. Quia sint laboriosam eaque quia vero.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(38, 'Molestiae ex sequi omnis quia qui voluptatem.', 'Quibusdam quis omnis ipsa quisquam fugiat veritatis distinctio impedit. Maxime nam dolor autem magnam officiis delectus sapiente. Et quisquam ut inventore pariatur placeat sunt vitae.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(39, 'Omnis reiciendis nemo harum unde accusantium quidem.', 'Dolores quia modi ut facilis aliquid dolor illum. Earum voluptatem ut consectetur veritatis. Et at et voluptate eveniet enim vel. Quo optio sequi nisi accusantium debitis sapiente distinctio.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(40, 'Voluptas facere qui maxime suscipit accusamus.', 'Porro ex quasi iusto quam placeat aut. Voluptas rerum nobis repellat accusantium dolore. Recusandae est quia nostrum veniam itaque.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(41, 'Voluptatem dolorum voluptatem alias porro.', 'Quod aut iste sunt tempore tempora perferendis. Incidunt quia sint quasi minima ut consequatur. Fugit eligendi cupiditate autem. Et assumenda non dicta. Aut sit deserunt qui.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(42, 'Sequi corporis quo magni quo debitis.', 'Ea reprehenderit omnis a magnam perspiciatis. Dolor illo sit soluta praesentium quo illum placeat consequatur. Numquam aut possimus nemo quaerat. Recusandae quo illum placeat labore sint.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(43, 'Et distinctio est sequi non.', 'Et repellendus qui provident recusandae eum nihil sit. Omnis et quos ut sed pariatur vitae. Qui molestias in autem eaque enim perferendis.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(44, 'Autem quaerat est rem commodi.', 'Ut qui saepe repellendus inventore. Laboriosam nobis dicta ut ad. Et dolores fugiat voluptate similique facilis hic. Reprehenderit modi omnis beatae qui commodi rem. Soluta doloribus nulla expedita perspiciatis tenetur.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(45, 'Ducimus accusamus aut dignissimos sunt.', 'Necessitatibus eum omnis sed laudantium. Ut deserunt facere voluptas quo quibusdam eos. Dolores non eius in libero. Voluptatum reprehenderit nihil soluta voluptatem molestiae quia. Porro voluptatem ipsum dolores cupiditate voluptates.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(46, 'Optio quas quo reiciendis ullam.', 'Cupiditate libero voluptates magni consequuntur eveniet tempora nam. Cum rerum velit quo consequatur culpa. Sunt beatae tempora ad eveniet. Delectus consequatur dolor voluptatum beatae.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(47, 'Sunt et distinctio aliquam aut alias possimus quo ea.', 'Nisi voluptatibus quis nihil cupiditate corporis dicta in quod. Ipsum qui fugiat reiciendis.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(48, 'Libero natus non autem aperiam.', 'Illum cumque id repellendus velit. Hic tempora suscipit odit omnis perspiciatis quod. Expedita perferendis alias et voluptatem nemo consequatur. Magnam earum sed est perspiciatis sed consequatur nobis. Non totam necessitatibus laboriosam velit.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(49, 'Rem qui quasi molestias enim quam soluta.', 'Officiis voluptate id dicta vel mollitia. Iure quidem iste iste occaecati ut consectetur. Sint minima et ab. Iure quo dolorem aliquam officia ipsa rerum sit et.', 0, '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(50, 'Facere laudantium doloribus voluptatem accusamus aut et.', 'Aut qui possimus assumenda qui. At autem doloremque excepturi est quam officiis. Maxime nisi et nam ut. Non dolor sit nobis fugiat et illo. Debitis consequatur distinctio rerum id.', 1, '2025-03-01 13:29:04', '2025-03-01 13:29:04');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ollie Balistreri', 'lilliana.ohara@example.net', '2025-03-01 13:29:04', '$2y$12$Qee8BsHinoaMmLTE6kUlR.d1Xb0WR4Lh0THWUDXOTRC1pwqUeF3EW', 'ctGX5vVzQL', '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(2, 'Ally Walter', 'zulauf.ethelyn@example.net', '2025-03-01 13:29:04', '$2y$12$Qee8BsHinoaMmLTE6kUlR.d1Xb0WR4Lh0THWUDXOTRC1pwqUeF3EW', 'TVFOkcBZHV', '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(3, 'Prof. Cornell Abshire III', 'joshuah61@example.net', '2025-03-01 13:29:04', '$2y$12$Qee8BsHinoaMmLTE6kUlR.d1Xb0WR4Lh0THWUDXOTRC1pwqUeF3EW', 'pzE1LJdEwZ', '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(4, 'Janie Dare', 'ocie.nader@example.net', '2025-03-01 13:29:04', '$2y$12$Qee8BsHinoaMmLTE6kUlR.d1Xb0WR4Lh0THWUDXOTRC1pwqUeF3EW', 'VjGejNgOJg', '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(5, 'Chanelle Bergstrom Jr.', 'korey26@example.org', '2025-03-01 13:29:04', '$2y$12$Qee8BsHinoaMmLTE6kUlR.d1Xb0WR4Lh0THWUDXOTRC1pwqUeF3EW', 'htkUBx8rdL', '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(6, 'Nya Dibbert Jr.', 'russel.cade@example.com', '2025-03-01 13:29:04', '$2y$12$Qee8BsHinoaMmLTE6kUlR.d1Xb0WR4Lh0THWUDXOTRC1pwqUeF3EW', 'Mkwua3zcGx', '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(7, 'Maye Wolff', 'coy.stokes@example.com', '2025-03-01 13:29:04', '$2y$12$Qee8BsHinoaMmLTE6kUlR.d1Xb0WR4Lh0THWUDXOTRC1pwqUeF3EW', 'zbF9FuUXFr', '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(8, 'Alessandra Grady MD', 'kaden.sanford@example.net', '2025-03-01 13:29:04', '$2y$12$Qee8BsHinoaMmLTE6kUlR.d1Xb0WR4Lh0THWUDXOTRC1pwqUeF3EW', '9VFMh8wyCq', '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(9, 'Antonetta Hagenes', 'pouros.norberto@example.net', '2025-03-01 13:29:04', '$2y$12$Qee8BsHinoaMmLTE6kUlR.d1Xb0WR4Lh0THWUDXOTRC1pwqUeF3EW', '2nemdkzYic', '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(10, 'Ibrahim Donnelly', 'mattie92@example.net', '2025-03-01 13:29:04', '$2y$12$Qee8BsHinoaMmLTE6kUlR.d1Xb0WR4Lh0THWUDXOTRC1pwqUeF3EW', '9gaV7DB76g', '2025-03-01 13:29:04', '2025-03-01 13:29:04'),
(11, 'Test User', 'test@example.com', '2025-03-01 13:29:04', '$2y$12$Qee8BsHinoaMmLTE6kUlR.d1Xb0WR4Lh0THWUDXOTRC1pwqUeF3EW', 'YO1qnygAUQ', '2025-03-01 13:29:04', '2025-03-01 13:29:04');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- A tábla indexei `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- A tábla indexei `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- A tábla indexei `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
