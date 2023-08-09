-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2019 at 02:31 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `user_id` bigint(11) NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_img`) VALUES
(2, 'Laravel Tutorials', '<p><span style=\"color: #525252; font-family: \'book antiqua\', palatino, serif; font-size: 18pt; background-color: #ffffff;\">Interested in learning more about Laravel? </span></p>\r\n<p><span style=\"color: #525252; font-family: \'book antiqua\', palatino, serif; font-size: 18pt; background-color: #ffffff;\">This section features tutorials on everything from getting started with Laravel, to expert topics, and everything in between.</span></p>', '2019-04-15 11:50:21', '2019-04-17 06:08:22', 3, 'cover_img/img4_1555501102.jpg'),
(3, 'Post three', '<p>some content of post threedsasd</p>', '2019-04-16 01:56:51', '2019-04-17 05:56:49', 3, 'cover_img/3_1555500409.jpg'),
(8, 'Post Store Function code', '<div style=\"color: #d4d4d4; background-color: #1e1e1e; font-family: Consolas, \'Courier New\', monospace; font-size: 14px; line-height: 19px; white-space: pre;\">\r\n<div><span style=\"color: #569cd6;\">public</span> <span style=\"color: #569cd6;\">function</span> <span style=\"color: #dcdcaa;\">store</span>(<span style=\"color: #569cd6;\">Request</span> <span style=\"color: #9cdcfe;\">$request</span>)</div>\r\n<div>{</div>\r\n<h3 style=\"padding-left: 40px;\"><span style=\"color: #569cd6;\">$this</span>-&gt;<span style=\"color: #dcdcaa;\">validate</span>(<span style=\"color: #9cdcfe;\">$request</span>,[</h3>\r\n<h3 style=\"padding-left: 80px;\"><span style=\"color: #ce9178;\">\'title\'</span> =&gt; <span style=\"color: #ce9178;\">\'required\'</span>,</h3>\r\n<h3 style=\"padding-left: 80px;\"><span style=\"color: #ce9178;\">\'body\'</span> =&gt; <span style=\"color: #ce9178;\">\'required\'</span></h3>\r\n<h3 style=\"padding-left: 40px;\">]);</h3>\r\n<br />\r\n<div style=\"padding-left: 40px;\"><span style=\"color: #9cdcfe;\">$new_post</span> = <span style=\"color: #569cd6;\">new</span> <span style=\"color: #4ec9b0;\">Post</span>;</div>\r\n<div style=\"padding-left: 40px;\"><span style=\"color: #9cdcfe;\">$new_post</span>-&gt;<span style=\"color: #9cdcfe;\">title</span> = <span style=\"color: #9cdcfe;\">$request</span>-&gt;<span style=\"color: #dcdcaa;\">input</span>(<span style=\"color: #ce9178;\">\'title\'</span>);</div>\r\n<div style=\"padding-left: 40px;\"><span style=\"color: #9cdcfe;\">$new_post</span>-&gt;<span style=\"color: #9cdcfe;\">body</span> = <span style=\"color: #9cdcfe;\">$request</span>-&gt;<span style=\"color: #dcdcaa;\">input</span>(<span style=\"color: #ce9178;\">\'body\'</span>);</div>\r\n<div style=\"padding-left: 40px;\"><span style=\"color: #9cdcfe;\">$new_post</span>-&gt;<span style=\"color: #9cdcfe;\">body</span> = <span style=\"color: #dcdcaa;\">auth</span>()-&gt;<span style=\"color: #dcdcaa;\">user</span>()-&gt;<span style=\"color: #9cdcfe;\">id</span>;</div>\r\n<div style=\"padding-left: 40px;\"><span style=\"color: #9cdcfe;\">$new_post</span>-&gt;<span style=\"color: #dcdcaa;\">save</span>();</div>\r\n<br />\r\n<div style=\"padding-left: 40px;\"><span style=\"color: #c586c0;\">return</span> <span style=\"color: #dcdcaa;\">redirect</span>(<span style=\"color: #ce9178;\">\'/post\'</span>)-&gt;<span style=\"color: #dcdcaa;\">with</span>(<span style=\"color: #ce9178;\">\'success\'</span>,<span style=\"color: #ce9178;\">\'Post Created\'</span>);</div>\r\n<div>}</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n</div>', '2019-04-16 23:30:10', '2019-04-17 06:40:11', 3, 'cover_img/img7_1555503011.jpg'),
(11, 'Responsive images', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; max-width: 80%; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;\">Images in Bootstrap are made responsive with&nbsp;<code class=\"highlighter-rouge\" style=\"box-sizing: border-box; font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 14px; color: #e83e8c; word-break: break-word;\">.img-fluid</code>.&nbsp;<code class=\"highlighter-rouge\" style=\"box-sizing: border-box; font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 14px; color: #e83e8c; word-break: break-word;\">max-width: 100%;</code>&nbsp;and&nbsp;<code class=\"highlighter-rouge\" style=\"box-sizing: border-box; font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 14px; color: #e83e8c; word-break: break-word;\">height: auto;</code>&nbsp;are applied to the image so that it scales with the parent element.</p>\r\n<div class=\"bd-example\" style=\"box-sizing: border-box; position: relative; padding: 1.5rem; margin: 1rem 0px 0px; border: 0.2rem solid #f8f9fa; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;\">Responsive image</div>\r\n<div class=\"bd-clipboard\" style=\"box-sizing: border-box; position: relative; float: right; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;\"><button class=\"btn-clipboard\" style=\"border-radius: 0.25rem; margin: 0px; font-family: inherit; font-size: 12px; line-height: inherit; overflow: visible; position: absolute; top: 0.5rem; right: 0.5rem; z-index: 10; display: block; padding: 0.25rem 0.5rem; color: #818a91; cursor: pointer; border: 0px initial initial;\" title=\"\" type=\"button\" data-original-title=\"Copy to clipboard\">Copy</button></div>\r\n<figure class=\"highlight\" style=\"box-sizing: border-box; display: block; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 1.5rem; background-color: #f8f9fa; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">\r\n<pre style=\"box-sizing: border-box; font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 14px; margin-top: 0px; margin-bottom: 0px; overflow: auto; padding: 0px; background-color: transparent; border: 0px;\"><code class=\"language-html\" style=\"box-sizing: border-box; font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: inherit; color: #212529;\" data-lang=\"html\"><span class=\"nt\" style=\"box-sizing: border-box; color: #2f6f9f;\">&lt;img</span> <span class=\"na\" style=\"box-sizing: border-box; color: #4f9fcf;\">src=</span><span class=\"s\" style=\"box-sizing: border-box; color: #d44950;\">\"...\"</span> <span class=\"na\" style=\"box-sizing: border-box; color: #4f9fcf;\">class=</span><span class=\"s\" style=\"box-sizing: border-box; color: #d44950;\">\"img-fluid\"</span> <span class=\"na\" style=\"box-sizing: border-box; color: #4f9fcf;\">alt=</span><span class=\"s\" style=\"box-sizing: border-box; color: #d44950;\">\"Responsive image\"</span><span class=\"nt\" style=\"box-sizing: border-box; color: #2f6f9f;\">&gt;</span></code></pre>\r\n</figure>\r\n<h2 id=\"image-thumbnails\" style=\"box-sizing: border-box; margin-top: 3rem; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 2rem; pointer-events: none; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; background-color: #ffffff;\">&nbsp;</h2>\r\n<div class=\"bd-callout bd-callout-warning\" style=\"box-sizing: border-box; padding: 1.25rem; margin-top: 1.25rem; margin-bottom: 1.25rem; border-width: 1px 1px 1px 0.25rem; border-style: solid; border-color: #eeeeee #eeeeee #eeeeee #f0ad4e; border-image: initial; border-radius: 0.25rem; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h5 id=\"svg-images-and-ie-10\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.25rem;\">SVG images and IE 10</h5>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px;\">In Internet Explorer 10, SVG images with&nbsp;<code class=\"highlighter-rouge\" style=\"box-sizing: border-box; font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 14px; color: #e83e8c; word-break: break-word; border-radius: 0.25rem;\">.img-fluid</code>&nbsp;are disproportionately sized. To fix this, add&nbsp;<code class=\"highlighter-rouge\" style=\"box-sizing: border-box; font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 14px; color: #e83e8c; word-break: break-word; border-radius: 0.25rem;\">width: 100% \\9;</code>&nbsp;where necessary. This fix improperly sizes other image formats, so Bootstrap doesn&rsquo;t apply it automatically.</p>\r\n</div>', '2019-04-17 06:32:19', '2019-04-17 06:35:36', 3, 'cover_img/img5_1555502736.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Nikunj', 'nikunj@gmail.com', NULL, '$2y$10$.6/oHH6qNcig13QMI3bvte7g8Ra9Tz5qvKJIJjCZk.3VwUWHv7fm6', NULL, '2019-04-16 06:42:49', '2019-04-16 06:42:49'),
(4, 'abc', 'abc@gmail.com', NULL, '$2y$10$nsng5vhsfPyv0rlMx/jW3egdyEdS17dKSKmlX4MlzpbIrxZ9vlRNK', NULL, '2019-04-17 01:59:37', '2019-04-17 01:59:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
