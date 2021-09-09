-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 03 sep. 2021 à 10:05
-- Version du serveur :  8.0.26-0ubuntu0.20.04.2
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `authdash`
--

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(185, 'App\\Models\\User', 1, 'myapptoken', 'a6841cf3e8b951d9866881daa6e41fc45f4a9b7885d07eb8cf7aaa4acf07aeb8', '[\"*\"]', NULL, '2021-08-30 12:40:58', '2021-08-30 12:40:58'),
(186, 'App\\Models\\User', 1, 'myapptoken', '09f41d7fec5d40dc197ebf600f983270508c41dcccdc9dab1c170fa04f6e951a', '[\"*\"]', NULL, '2021-08-30 17:40:53', '2021-08-30 17:40:53'),
(187, 'App\\Models\\User', 1, 'myapptoken', 'c1242b91f5af080020d5b1f6aa3d0d8812509e76e25befb797b447a876b11e5a', '[\"*\"]', NULL, '2021-08-30 17:41:39', '2021-08-30 17:41:39'),
(188, 'App\\Models\\User', 1, 'myapptoken', 'e2065305b8ae209e3a31954dc150486978c684934c3d7e2840c8ce7735886a3f', '[\"*\"]', NULL, '2021-08-30 17:42:06', '2021-08-30 17:42:06'),
(189, 'App\\Models\\User', 1, 'myapptoken', '0f37ddd848a1b8b12ad81fc3820fee2e9e14179dc65b7eeb48ff6245e7be0ea4', '[\"*\"]', NULL, '2021-08-30 17:42:39', '2021-08-30 17:42:39'),
(190, 'App\\Models\\User', 1, 'myapptoken', '3ca19a853f5192baa55e192c30aff7582df866c0d785596e01635f6fd6fad55b', '[\"*\"]', NULL, '2021-08-30 17:43:12', '2021-08-30 17:43:12'),
(191, 'App\\Models\\User', 1, 'myapptoken', 'bfefc5cdd1cf4e69fcd4e1d6b8bff0d53342f8a4c7ea3980c8c6c2f175b75cb9', '[\"*\"]', NULL, '2021-08-30 17:46:03', '2021-08-30 17:46:03'),
(192, 'App\\Models\\User', 1, 'myapptoken', '561f377c71e6d23125a675b4f257ac754d021d0e2d4b77b9b111b801c3a9cdb8', '[\"*\"]', NULL, '2021-08-30 17:50:23', '2021-08-30 17:50:23'),
(193, 'App\\Models\\User', 1, 'myapptoken', '5c0877d0294e044266751e62cdc2c72081815bc509fa4cb5339e7706903ceaaa', '[\"*\"]', NULL, '2021-08-30 17:50:47', '2021-08-30 17:50:47'),
(194, 'App\\Models\\User', 1, 'myapptoken', '12f0548a47dbf45bf56d56a0fb9bbfca1d2c881c7adc33d096fab78e3846b94f', '[\"*\"]', NULL, '2021-08-30 17:52:01', '2021-08-30 17:52:01'),
(195, 'App\\Models\\User', 1, 'myapptoken', 'c9b444d8abded786e87bd4b0c35d8b4821f4daffbb6df436e0723aef9a75278c', '[\"*\"]', NULL, '2021-08-30 18:50:02', '2021-08-30 18:50:02'),
(196, 'App\\Models\\User', 1, 'myapptoken', '1f6cd794ff2d31b3d9bf59c8c6c13d8a2c14e76847fc557c20dd8fbb4ec5e24c', '[\"*\"]', NULL, '2021-08-30 18:58:05', '2021-08-30 18:58:05'),
(197, 'App\\Models\\User', 1, 'myapptoken', 'ccdf51c8adc6aa049ba49bd678799c3c0c9bb5983a3d88ed90ddb3c7e7126613', '[\"*\"]', NULL, '2021-08-30 18:58:40', '2021-08-30 18:58:40'),
(198, 'App\\Models\\User', 1, 'myapptoken', '7747c2f75e7fa590e5908cbbd27d56c6609c767b18ed3f48892872cbf89d1778', '[\"*\"]', NULL, '2021-08-31 05:38:29', '2021-08-31 05:38:29'),
(199, 'App\\Models\\User', 1, 'myapptoken', 'f7deb48654dba37791c4806c56f0adbf30b77689644c89ebf82f33340046f559', '[\"*\"]', NULL, '2021-09-02 10:48:13', '2021-09-02 10:48:13'),
(200, 'App\\Models\\User', 1, 'myapptoken', '5bad503fef099d3e8c59215df0be9445d4e6b2bfcc192b1ef1748cc0ac8fbd7f', '[\"*\"]', NULL, '2021-09-02 10:53:46', '2021-09-02 10:53:46'),
(201, 'App\\Models\\User', 1, 'myapptoken', '0fbfa18be7ba8b999e6ebe10d6d3da73cd0054ccf0bc7ced930808ffe4daba34', '[\"*\"]', NULL, '2021-09-02 10:57:17', '2021-09-02 10:57:17'),
(202, 'App\\Models\\User', 1, 'myapptoken', '95400fcc5bff1bea79b5ee57b12c2e4fd5b8630f98fe483eafea39ef3ee63f21', '[\"*\"]', NULL, '2021-09-02 11:01:57', '2021-09-02 11:01:57'),
(203, 'App\\Models\\User', 1, 'myapptoken', 'f74cb01f7fb5ebeff34a0baafae4291b0c3f52257a2d18bc4d457106a7e16167', '[\"*\"]', NULL, '2021-09-02 11:04:14', '2021-09-02 11:04:14'),
(204, 'App\\Models\\User', 1, 'myapptoken', '2acc1813a4dd5a5234840a8dafb15304256733ac591296fe90f469e62fcd917d', '[\"*\"]', NULL, '2021-09-02 11:10:05', '2021-09-02 11:10:05'),
(205, 'App\\Models\\User', 1, 'myapptoken', '06ceccf021371b77a0f042aa6682f516755624c48d59a23e72e9ce86bb549469', '[\"*\"]', NULL, '2021-09-02 11:10:34', '2021-09-02 11:10:34'),
(206, 'App\\Models\\User', 1, 'myapptoken', 'c2fc854e4a3568b8250eae764df51dc4419ee4c384a8a2a7de0857b44e743f54', '[\"*\"]', NULL, '2021-09-02 11:12:11', '2021-09-02 11:12:11'),
(207, 'App\\Models\\User', 1, 'myapptoken', '907ab7615aea5adda47ddeb88b62624d3b74376964072ded2e13bc2d44fa69d6', '[\"*\"]', NULL, '2021-09-02 11:13:15', '2021-09-02 11:13:15'),
(208, 'App\\Models\\User', 1, 'myapptoken', '685a868042da737b33d475a8ec3a3047eebe797d450d68afcacd6b22bef31389', '[\"*\"]', NULL, '2021-09-02 11:15:06', '2021-09-02 11:15:06'),
(209, 'App\\Models\\User', 1, 'myapptoken', '55705e7e6fad50f5d3858c582595d4bd3e4f0b134925520099f4f3cf2fc6bed1', '[\"*\"]', NULL, '2021-09-02 11:16:50', '2021-09-02 11:16:50'),
(210, 'App\\Models\\User', 1, 'myapptoken', 'd6ebcf28abfff441ce8a8166df8003b4844a5423863fd3b8ee05bfd79a71cf1b', '[\"*\"]', NULL, '2021-09-02 11:32:30', '2021-09-02 11:32:30'),
(211, 'App\\Models\\User', 1, 'myapptoken', 'f8e063126acfd0baed4f0068300cc6fc58e2592949d2a0db32de42436e0005d7', '[\"*\"]', NULL, '2021-09-02 11:43:54', '2021-09-02 11:43:54'),
(212, 'App\\Models\\User', 1, 'myapptoken', 'cd1bd40f3600324eeac0aee3284de8c3578352fd6b88a4947fec920ec2b08743', '[\"*\"]', NULL, '2021-09-02 11:47:21', '2021-09-02 11:47:21'),
(213, 'App\\Models\\User', 1, 'myapptoken', 'dd587a118b358bc1c95d39a4ca7c1fc08215281fc9d26d8ae2843974459c7763', '[\"*\"]', NULL, '2021-09-02 11:54:52', '2021-09-02 11:54:52'),
(214, 'App\\Models\\User', 1, 'myapptoken', '2c1e77347013b04c7cfdba75d09a92ba6ea73ff9155902a87fe4bdec67739f24', '[\"*\"]', NULL, '2021-09-02 11:55:40', '2021-09-02 11:55:40'),
(215, 'App\\Models\\User', 1, 'myapptoken', 'ab3f7606bf206264f1e528f3e512b91fee3bb770bbf76c2531357df16326c733', '[\"*\"]', NULL, '2021-09-02 11:57:03', '2021-09-02 11:57:03'),
(216, 'App\\Models\\User', 1, 'myapptoken', '3e4a0347e0dae995912864b65d89a952818ecd3e62c520edb1569ea8610014b2', '[\"*\"]', NULL, '2021-09-02 12:09:47', '2021-09-02 12:09:47'),
(217, 'App\\Models\\User', 1, 'myapptoken', '0ae56037b0b341f2e883cd2fd7cab9f6ce0fb4485c50cddd7ecfc1708c8c6690', '[\"*\"]', NULL, '2021-09-02 17:28:37', '2021-09-02 17:28:37'),
(218, 'App\\Models\\User', 3, 'myapptoken', '81ef612b5c1aef2857672b897c2c2c86bbbfe18c12563f665f582f4c770ea42b', '[\"*\"]', NULL, '2021-09-02 17:32:48', '2021-09-02 17:32:48'),
(219, 'App\\Models\\User', 3, 'myapptoken', 'e1f35e8187a7c37cbd369ddb6b41478137dcb4987dc995d8e9fc892f61f2d54c', '[\"*\"]', NULL, '2021-09-02 18:07:22', '2021-09-02 18:07:22'),
(220, 'App\\Models\\User', 1, 'myapptoken', 'b1395354e7be4c7ba50238a3afe05719e56172cf8e5ac7211098bc6c8a3d25da', '[\"*\"]', NULL, '2021-09-02 18:17:30', '2021-09-02 18:17:30'),
(221, 'App\\Models\\User', 1, 'myapptoken', '3017549d29cf00c7a295d46a2031f4b8fb67ac166fa749595d680bb482cbfd9b', '[\"*\"]', NULL, '2021-09-02 18:21:47', '2021-09-02 18:21:47'),
(222, 'App\\Models\\User', 1, 'myapptoken', 'c590caae1f27167cccd93ac920e34a00f1c03cd134ed987f68c2d9128d8a9ee9', '[\"*\"]', NULL, '2021-09-02 18:22:44', '2021-09-02 18:22:44'),
(223, 'App\\Models\\User', 1, 'myapptoken', 'f64c98d612cbefd85f34f5fa56ccadca5606f58ddf9792744c6da93e47f57241', '[\"*\"]', NULL, '2021-09-02 18:25:51', '2021-09-02 18:25:51'),
(224, 'App\\Models\\User', 1, 'myapptoken', 'f989ee392bbb3a3f48376284e5add2e6c9105472de5067eca75947ccf6ba0722', '[\"*\"]', NULL, '2021-09-02 18:31:13', '2021-09-02 18:31:13'),
(225, 'App\\Models\\User', 1, 'myapptoken', 'a9d9efa2f3a402d42679f03c5078c33228a86b17b6d8e68a0bee323b0554b93a', '[\"*\"]', NULL, '2021-09-02 18:32:19', '2021-09-02 18:32:19'),
(226, 'App\\Models\\User', 1, 'myapptoken', 'c3f61f61b3cae53307829f6345c198ce7905d7430f205073da59684c1a78782f', '[\"*\"]', NULL, '2021-09-02 18:32:44', '2021-09-02 18:32:44'),
(227, 'App\\Models\\User', 1, 'myapptoken', '1c33ae35e7d5c43c805be3c4bad260d199b9ededa2c84e55b81cbcc496560115', '[\"*\"]', NULL, '2021-09-02 18:33:46', '2021-09-02 18:33:46'),
(228, 'App\\Models\\User', 1, 'myapptoken', '36c48f65ee55c8d42e6f0bcf59264d1521d089a6d514d2ab6e6475b9a137c2f7', '[\"*\"]', NULL, '2021-09-02 18:34:32', '2021-09-02 18:34:32'),
(229, 'App\\Models\\User', 1, 'myapptoken', '6f7113b113a5aa87506739d63892988e86be15feae0fb0dacd4e0cc73213b4d8', '[\"*\"]', NULL, '2021-09-02 18:52:56', '2021-09-02 18:52:56'),
(230, 'App\\Models\\User', 1, 'myapptoken', '55cba9b87e8aa4e8c8ff7bc60f7878ff447dbf6b7799170dc03c750d574697d1', '[\"*\"]', NULL, '2021-09-02 18:57:06', '2021-09-02 18:57:06'),
(231, 'App\\Models\\User', 1, 'myapptoken', '73f10342433490426a1d1bf2653463921295457ae7ab900e263b3b93e031b0b0', '[\"*\"]', NULL, '2021-09-02 19:01:30', '2021-09-02 19:01:30'),
(232, 'App\\Models\\User', 1, 'myapptoken', 'fa104ebeb52091622e95f71903b9e17f29ba3a72b512ee81f1774eed695a7706', '[\"*\"]', NULL, '2021-09-02 19:03:47', '2021-09-02 19:03:47'),
(233, 'App\\Models\\User', 1, 'myapptoken', '5e29185eb6ef73e6057e6cb46bab25e096961ae9233958f2c8db7fd873ede193', '[\"*\"]', NULL, '2021-09-02 19:04:45', '2021-09-02 19:04:45'),
(234, 'App\\Models\\User', 1, 'myapptoken', '254f2c29a38db51e98bf7c82c88ed6095b063ed2b65de81d168b79343b65ff80', '[\"*\"]', NULL, '2021-09-02 19:05:24', '2021-09-02 19:05:24'),
(235, 'App\\Models\\User', 1, 'myapptoken', '66df4786e3fb3de7c43b0521f21bf2737fdb01f3365935f34085f2f6657344a2', '[\"*\"]', NULL, '2021-09-02 19:06:32', '2021-09-02 19:06:32'),
(236, 'App\\Models\\User', 1, 'myapptoken', '8637301380e3b481593fa656fac9f5d7ed9956d066379bfb577bd07cc29f2b85', '[\"*\"]', NULL, '2021-09-02 19:06:50', '2021-09-02 19:06:50'),
(237, 'App\\Models\\User', 1, 'myapptoken', '7af8baf1a862a9e07195267c48fb785d75f33f59e3f003e3af1de65da0afd370', '[\"*\"]', NULL, '2021-09-02 19:07:00', '2021-09-02 19:07:00'),
(238, 'App\\Models\\User', 1, 'myapptoken', 'bb857eb421de287e613324b32e88c47453f4fb39fcd1be3bf54c252063bd5247', '[\"*\"]', NULL, '2021-09-02 19:07:30', '2021-09-02 19:07:30'),
(239, 'App\\Models\\User', 1, 'myapptoken', 'b6a0189a404f04a496a8998f04c013ca551d2a3bf227eab32a4fa70f6e0535af', '[\"*\"]', NULL, '2021-09-02 19:08:13', '2021-09-02 19:08:13'),
(240, 'App\\Models\\User', 1, 'myapptoken', '4168fd17084faf8a78acde5f353642294a0283ff66c5b86371c54a04931a02d7', '[\"*\"]', NULL, '2021-09-02 19:10:06', '2021-09-02 19:10:06'),
(241, 'App\\Models\\User', 1, 'myapptoken', 'acf79337c09cf130cf1f0c610d5269c1aa185d197d23e7cf6b9bf5ac08f5fb39', '[\"*\"]', '2021-09-02 19:26:53', '2021-09-02 19:16:01', '2021-09-02 19:26:53'),
(242, 'App\\Models\\User', 2, 'myapptoken', '82c91153c6e3c6b1170ee3b6dbc7a16ed51e981c35c0f57c48a8bd1d19a710bd', '[\"*\"]', '2021-09-02 19:35:47', '2021-09-02 19:29:26', '2021-09-02 19:35:47'),
(243, 'App\\Models\\User', 3, 'myapptoken', 'e96bfab9688cd96576e441ad3ffea1ea1e7ddd040e31d4c5acf6292448e4c911', '[\"*\"]', '2021-09-02 19:38:40', '2021-09-02 19:38:14', '2021-09-02 19:38:40'),
(244, 'App\\Models\\User', 3, 'myapptoken', '4aa3da1c64a9e2fa3f1230a91d13791e4cdbdf953d5be6b2ea9ae75168ab1ec3', '[\"*\"]', '2021-09-03 05:48:07', '2021-09-03 05:47:38', '2021-09-03 05:48:07');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(48) NOT NULL,
  `email` varchar(48) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `admin` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `list_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `admin`, `created_at`, `updated_at`, `list_id`) VALUES
(1, 'ali', 'ali@ali', '$2y$10$UTIlJSV4hsotVOzV9RLc2O9iCJkroUA5XDxy6mmIeI4rpuIMgWDbO', 0, '2021-08-30 12:20:08', '2021-08-30 14:20:08', 2),
(2, 'yvan', 'yvan@yvan', '$2y$10$wIOSnEgQQCqSMkXMZeFxk.Hk/ba7WXu/ln8QJ6pim4XUQ5eZaMRze', 0, '2021-08-30 12:45:42', '2021-08-30 14:45:42', 35),
(3, 'romain', 'romain@romain', '$2y$10$tHCeFUQxw1J.aIuxjzpsluBwwKn/aElpg20JbTnp9e.g0zJSk2dDW', 0, '2021-08-30 12:46:34', '2021-08-30 14:46:34', 39),
(4, 'ali1', 'ali1@ali1', '$2y$10$jeLxdba/9AhjmZ56qqkgI.LheEhAYZ5HD0/sO59.88qc0b3pK3AS2', 0, '2021-08-30 13:19:06', '2021-08-30 15:19:06', 40),
(8, 'ali2', 'ali2@ali2', '$2y$10$/I18HvLXUi1/HW39ZCDR9.D2nw1MMJGoeqLWe.dGUgbLnlMK5iGxK', 0, '2021-08-30 13:27:39', '2021-08-30 15:27:39', 37);

-- --------------------------------------------------------

--
-- Structure de la table `widgets`
--

CREATE TABLE `widgets` (
  `id` int NOT NULL,
  `names` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `widgets`
--

INSERT INTO `widgets` (`id`, `names`, `updated_at`, `created_at`) VALUES
(38, 'final', '2021-09-02 21:38:40', '2021-09-02 21:38:40'),
(39, 'vendredi', '2021-09-03 07:48:07', '2021-09-03 07:48:07');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `list_id` (`list_id`);

--
-- Index pour la table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
