-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 11 jan. 2026 à 19:32
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `djihad`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Téléphones'),
(2, 'Pc'),
(3, 'Imprimantes'),
(4, 'Caméras'),
(5, 'Appareils intelligents');

-- --------------------------------------------------------

--
-- Structure de la table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `wilaya` varchar(100) DEFAULT NULL,
  `commune` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'قيد المعالجة',
  `payment_method` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Structure de la table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `stock` int(11) DEFAULT 0,
  `status` varchar(20) DEFAULT 'جديد'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `brand`, `image`, `created_at`, `stock`, `status`) VALUES
(52, 'iPhone 15 Pro Max', 'Le plus puissant et léger iPhone d’Apple, avec un design en titane élégant et un écran Super Retina XDR 6,7\" ProMotion ultra-fluide et lumineux. Doté d’un système triple caméra 48 Mpx avec zoom optique ×5 pour des photos et vidéos 4K HDR d’une qualité exceptionnelle. Propulsé par la puce A17 Pro ultra-rapide, idéale pour les jeux et applis pro, avec une grande autonomie et la charge rapide USB-C. Résistant à l’eau et à la poussière (IP68) et sécurisé par Face ID.', 325000.00, 1, 'Apple', 'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-15-pro-max-1.jpg', '2025-07-02 18:52:48', 0, 'جديد'),
(53, 'iPhone 15 Pro', 'Apple iPhone 15 Pro avec design élégant et performance élevée.', 295000.00, 1, 'Apple', 'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-15-pro-1.jpg', '2025-07-02 18:52:48', 0, 'جديد'),
(54, 'iPhone 15 Plus', 'Apple iPhone 15 Plus avec grand écran et autonomie longue.Apple iPhone 15 Plus avec grand écran et autonomie longue.Apple iPhone 15 Plus avec grand écran et autonomie longue.Apple iPhone 15 Plus avec grand écran et autonomie longue.Apple iPhone 15 Plus avec grand écran et autonomie longue.Apple iPhone 15 Plus avec grand écran et autonomie longue.Apple iPhone 15 Plus avec grand écran et autonomie longue.Apple iPhone 15 Plus avec grand écran et autonomie longue.Apple iPhone 15 Plus avec grand écran et autonomie longue.', 270000.00, 1, 'Apple', 'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-15-plus-1.jpg', '2025-07-02 18:52:48', 0, 'جديد'),
(55, 'iPhone 15', 'Apple iPhone 15 avec design raffiné et performance fluide.', 250000.00, 1, 'Apple', 'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-15-1.jpg', '2025-07-02 18:52:48', 0, 'جديد'),
(56, 'iPhone 14 Pro Max', '\r\n✨ iPhone 15 Pro Max\r\nDécouvrez l’iPhone le plus puissant et le plus léger jamais conçu par Apple, avec un design en titane haut de gamme qui allie robustesse et légèreté pour une prise en main parfaite. Son écran Super Retina XDR de 6,7\" avec technologie ProMotion offre une fluidité exceptionnelle, des couleurs éclatantes et une clarté impressionnante, même en plein soleil.\r\n\r\n📸 Équipé d’un système de triple caméra professionnelle de 48 Mpx et d’un téléobjectif avec zoom optique ×5, il capture des photos ultra-détaillées et des images nettes à toutes les distances. Profitez également d’améliorations majeures pour les photos de nuit, les portraits et les vidéos cinématographiques en 4K HDR Dolby Vision.\r\n\r\n⚡ Alimenté par la puce A17 Pro, la plus rapide et la plus puissante à ce jour, conçue pour offrir des performances inégalées dans les jeux exigeants, la réalité augmentée et les applications professionnelles, sans aucun ralentissement tout en optimisant la consommation d’énergie.\r\n\r\n🔋 Bénéficiez d’une autonomie longue durée qui vous accompagne tout au long de la journée, ainsi que du nouveau port USB-C qui rend la charge plus rapide et le transfert de données plus simple avec tous vos appareils.\r\n\r\n🔒 Doté de fonctionnalités de sécurité avancées telles que Face ID, et d’une résistance à l’eau et à la poussière certifiée IP68 pour une utilisation en toute sérénité, où que vous soyez.', 215000.00, 1, 'Apple', 'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-pro-max-1.jpg', '2025-07-02 18:52:48', 0, 'جديد'),
(57, 'iPhone 14 Pro', 'Apple iPhone 14 Pro avec écran ProMotion et excellente caméra.', 200000.00, 1, 'Apple', 'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-pro-1.jpg', '2025-07-02 18:52:48', 0, 'جديد'),
(58, 'iPhone 14 Plus', 'Apple iPhone 14 Plus avec grand écran et batterie durable.', 185000.00, 1, 'Apple', 'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-plus-1.jpg', '2025-07-02 18:52:48', 0, 'جديد'),
(59, 'iPhone 14', 'Apple iPhone 14 avec design classique et bonne performance.', 170000.00, 1, 'Apple', 'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-14-1.jpg', '2025-07-02 18:52:48', 0, 'جديد'),
(60, 'iPhone 13 Pro Max', 'Apple iPhone 13 Pro Max avec écran Super Retina XDR.', 150000.00, 1, 'Apple', 'https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-13-pro-max-1.jpg', '2025-07-02 18:52:48', 0, 'جديد'),
(61, 'iPhone 13 Pro', 'Apple iPhone 13 Pro avec puce A15 Bionic et caméra performante.', 135000.00, 1, 'Apple', 'https://tse2.mm.bing.net/th/id/OIP.VZTYcMzlnel-_ptS5jygsgHaEK?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3', '2025-07-02 18:52:48', 0, 'جديد'),
(62, 'iPhone 13', 'Apple iPhone 13 avec performance fiable et design élégant.', 125000.00, 1, 'Apple', 'https://tse4.mm.bing.net/th/id/OIP.sSH17_AfmdKmww2iiG0ckgHaE8?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3', '2025-07-02 18:52:48', 0, 'جديد'),
(63, 'Samsung Galaxy S24 Ultra', 'Samsung Galaxy S24 Ultra avec caméra 200MP et performance ultime.', 275000.00, 1, 'Samsung', 'https://tse2.mm.bing.net/th/id/OIP.LuOe8eHItEE7jFlrxWHUkgHaFj?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3', '2025-07-02 18:52:48', 0, 'جديد'),
(64, 'Samsung Galaxy S24+', 'Samsung Galaxy S24 Plus avec écran Dynamic AMOLED.', 250000.00, 1, 'Samsung', 'https://tse2.mm.bing.net/th/id/OIP.dPH8FYWzzpeHe69DHvtyugHaHn?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3', '2025-07-02 18:52:48', 0, 'جديد'),
(65, 'Samsung Galaxy S24', 'Samsung Galaxy S24 avec excellente performance et caméra avancée.', 230000.00, 1, 'Samsung', 'https://thvnext.bing.com/th?id=OIF.mMMxM02jun5PbuPNw%2fLsyQ&cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3', '2025-07-02 18:52:48', 0, 'جديد'),
(66, 'Samsung Galaxy S23 Ultra', 'Samsung Galaxy S23 Ultra avec caméra 200MP et écran 120Hz.', 215000.00, 1, 'Samsung', 'https://tse4.mm.bing.net/th/id/OIP.e_eMpPuRLzrkHPS3S0Dg_gHaFj?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3', '2025-07-02 18:52:48', 0, 'جديد'),
(67, 'Samsung Galaxy S23+', 'Samsung Galaxy S23 Plus avec performance fluide et caméra haute qualité.', 190000.00, 1, 'Samsung', 'https://tse2.mm.bing.net/th/id/OIP.vLxROftvMiuyAgrSZJicMgHaE7?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3', '2025-07-02 18:52:48', 0, 'جديد'),
(68, 'Samsung Galaxy S23', 'Samsung Galaxy S23 avec design compact et performance rapide.', 175000.00, 1, 'Samsung', 'https://tse1.mm.bing.net/th/id/OIP.KyxfYTV3_-FczwL5Jaa9vgHaEK?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3', '2025-07-02 18:52:48', 0, 'جديد'),
(69, 'Samsung Galaxy A54', 'Samsung Galaxy A54 milieu de gamme avec bonne caméra.', 88000.00, 1, 'Samsung', 'https://tse3.mm.bing.net/th/id/OIP.IBM4o7WsGlGWP18kDmb-GAHaJP?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3', '2025-07-02 18:52:48', 0, 'جديد'),
(70, 'Samsung Galaxy A34', 'Samsung Galaxy A34 avec écran Super AMOLED et triple caméra.', 76000.00, 1, 'Samsung', 'https://tse4.mm.bing.net/th/id/OIP.U5UkKr4dorCajoPUzcDM0QHaHa?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3', '2025-07-02 18:52:48', 0, 'جديد'),
(71, 'Samsung Galaxy A24', 'Samsung Galaxy A24 économique avec batterie longue durée.', 63000.00, 1, 'Samsung', 'https://tse1.mm.bing.net/th/id/OIP.-kC2xMnb-ExbXZq9OhpwYgHaHQ?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3', '2025-07-02 18:52:48', 0, 'جديد'),
(83, 'Oppo A58', 'Smartphone Oppo A58 avec écran 6.56\" HD+ et grande batterie 5000mAh.', 45000.00, 1, 'Oppo', 'https://tse4.mm.bing.net/th/id/OIP.xn3TIeYg8VYmZ77ueBIqewHaHa?cb=thvnext&rs=1&pid=ImgDetMain&o=7&rm=3', '2025-07-02 19:06:43', 0, 'جديد'),
(84, 'Oppo A38', 'Oppo A38, écran 6.56\" 90Hz, 4GB RAM, caméra 50MP.', 39000.00, 1, 'Oppo', 'https://fdn2.gsmarena.com/vv/pics/oppo/oppo-a38-1.jpg', '2025-07-02 19:06:43', 0, 'جديد'),
(85, 'Oppo A18', 'Oppo A18, smartphone économique avec batterie 5000mAh.', 35000.00, 1, 'Oppo', 'https://fdn2.gsmarena.com/vv/pics/oppo/oppo-a18-1.jpg', '2025-07-02 19:06:43', 0, 'جديد'),
(86, 'Redmi 12C', 'Xiaomi Redmi 12C avec écran 6.71\" HD+, Helio G85.', 34000.00, 1, 'Xiaomi', 'https://fdn2.gsmarena.com/vv/pics/xiaomi/xiaomi-redmi-12c-1.jpg', '2025-07-02 19:06:43', 0, 'جديد'),
(87, 'Redmi 10A', 'Smartphone économique Redmi 10A avec batterie 5000mAh.', 30000.00, 1, 'Xiaomi', 'https://fdn2.gsmarena.com/vv/pics/xiaomi/xiaomi-redmi-10a-1.jpg', '2025-07-02 19:06:43', 0, 'جديد'),
(88, 'Redmi 10C', 'Redmi 10C, écran 6.71\", Snapdragon 680, batterie 5000mAh.', 36000.00, 1, 'Xiaomi', 'https://fdn2.gsmarena.com/vv/pics/xiaomi/xiaomi-redmi-10c-1.jpg', '2025-07-02 19:06:43', 0, 'جديد'),

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` between 1 and 5),
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT 'male',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Structure de la table `views`
--

CREATE TABLE `views` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `view_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_favorite` (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `views_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `views_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
