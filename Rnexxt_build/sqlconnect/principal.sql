-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 09-02-2020 a las 06:55:46
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rnext`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `principal`
--

DROP TABLE IF EXISTS `principal`;
CREATE TABLE IF NOT EXISTS `principal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto_src` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `parentUserId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

--
-- Volcado de datos para la tabla `principal`
--

INSERT INTO `principal` (`id`, `foto_src`, `nom`, `text`, `parentUserId`) VALUES
(1, 'images/a_iron.jpg', 'Tony Stank', 'Anthony Edward \"Tony\" Stark was a billionaire industrialist, a founding member of the Avengers, and the former CEO of Stark Industries. A brash but brilliant inventor, Stark was self-described as a genius, billionaire, playboy, and philanthropist. With his great wealth and exceptional technical knowledge, Stark was one of the world\'s most powerful men following the deaths of his parents and enjoyed the playboy lifestyle for many years until he was kidnapped by the Ten Rings in Afghanistan, while demonstrating a fleet of Jericho missiles. With his life on the line, Stark created an armored suit which he used to escape his captors. Upon returning home, he utilized several more armors to use against terrorists, as well as Obadiah Stane who turned against Stark. Stark enjoyed the fame that came with his new secret identity and decided to share it with the world, publicly revealing himself as Iron Man.', 1),
(2, 'images/a_america.jpg', 'Steve America Rogers', 'Captain Steven Grant \"Steve\" Rogers is a World War II veteran, a founding member of the Avengers, and Earth\'s first superhero. Rogers had suffered from numerous health problems, and upon America\'s entry into World War II, was rejected from the service within United States Army despite several attempts to enlist. Rogers was the only recipient of the Super Soldier Serum developed by Abraham Erskine under the Strategic Scientific Reserve. Determined to serve, Rogers ultimately volunteered for the Project Rebirth, which enhanced the frail Rogers\' body to the peak of human physicality. Mistrusted by Chester Phillips, the head of the SSR, Rogers was relegated to propaganda campaigns, and was given the new moniker of Captain America. Rogers later joined the war with a combat role after he single-handedly liberated captured Allied prisoners of war.', 1),
(3, 'images/a_thor.jpg', 'Thor Odinson jr', 'Thor Odinson is the Asgardian God of Thunder, the former king of Asgard and New Asgard, and a founding member of the Avengers. When his irresponsible and impetuous behavior reignited a conflict between Asgard and Jotunheim, Thor was denied the right to become king, stripped of his power, and banished to Earth by Odin. While exiled on Earth, Thor learned humility, finding love with Jane Foster, and helped save his new friends from the Destroyer sent by Loki. Due to his selfless act of sacrifice, Thor redeemed himself in his father\'s eyes and was granted his power once more, which he then used to defeat Loki\'s schemes of genocide.', 1),
(4, 'images/a_hulk', 'Bruce Banner', 'Robert Bruce Banner, M.D., Ph.D., is a renowned scientist and a founding member of the Avengers. As someone who was highly respected for his work regarding biochemistry, nuclear physics, and gamma radiation, he was commissioned by Thaddeus Ross to recreate the Super Soldier Serum which created Captain America, although Ross elected not to inform Banner what he was creating. However, when an exposure to high levels of gamma radiation instead of vita radiation went awry, the mild-mannered scientist had found that when angered, provoked or excited, he would transform into the huge, rage-fueled, nearly mindless creature known as Hulk.', 1),
(5, 'images/a_hawk.jpg', 'Clinton Barton', 'Clinton Francis \"Clint\" Barton, also known as Hawkeye, is a skilled marksman, a former special agent of S.H.I.E.L.D. and one of the founding members of the Avengers. Known for his use of the bow and arrow as his primary weapon, Barton had become one of the best agents of S.H.I.E.L.D., responsible for the recruitment of Black Widow, whom he developed a strong friendship with. Assigned by Nick Fury into watching over the Tesseract, he was brainwashed by Loki and used as his pawn for all his evil schemes. However, following their Attack on the Helicarrier, he was freed from Loki\'s mental controls by Black Widow and joined the Avengers to fight against Loki\'s Chitauri army in the Battle of New York, ending Loki\'s Invasion, before Hawkeye had returned to his work as a S.H.I.E.L.D. agent.', 1),
(6, 'images/a_widow.jpg', 'Natasha Romanov', 'Natalia Alianovna \"Natasha\" Romanoff, also known as Black Widow, was one of the most talented spies and assassins in the entire world and a founding member of the Avengers. Originally a KGB operative and dangerous assassin, Romanoff was recruited into S.H.I.E.L.D. by Clint Barton. Having extensive mastery in martial arts and armed with her Widow\'s Bite, Black Widow became one of S.H.I.E.L.D.\'s most efficient agents. During one mission, she was sent undercover into Stark Industries to watch Tony Stark due to the fear that he was dying. During this mission, Romanoff assisted Stark with defeating Ivan Vanko\'s terrorist plots against him.', 1),
(7, 'images/a_war.jpg', 'War Machine Rocks yeah', 'Colonel James Rupert \"Rhodey\" Rhodes is an officer with the United States Air Force and liaison between the military in the Department of Acquisitions and Stark Industries, where he became close friends with Tony Stark. When Stark had been kidnapped by the Ten Rings, Rhodes personally led a mission to rescue his best friend. However, upon their return, Rhodes saw Stark moving away from developing his weapons for the military and soon discovered that he was instead focusing on becoming a hero known as Iron Man. Despite all of his fears for his friend\'s safety, Rhodes still joined Iron Man in bringing down Obadiah Stane\'s schemes, while trying to keep Stark\'s secrets, only for Stark to reveal them to the media himself.', 1),
(8, 'images/a_falcon.jpg', 'Falcon', 'Samuel Thomas \"Sam\" Wilson, better known as Falcon, is a former United States Air Force pararescue airman, who left active duty when his wing-man Riley died in combat, instead choosing to help other veterans suffering from post-traumatic stress disorder. At this time, Wilson met Captain America and was drawn into his conflict with HYDRA, as Captain America needed help from anyone not associated with S.H.I.E.L.D. as they had been infiltrated by HYDRA. Retaking his title as the Falcon, Wilson had then assisted in destroying all Alexander Pierce\'s schemes of world domination. Following their victory against Pierce\'s HYDRA unit, Falcon agreed to assist Captain America in tracking down the Winter Soldier, who was in fact Captain America\'s close friend who had been brainwashed.', 1),
(9, 'images/a_spider.jpg', 'spiderman', 'Peter Benjamin Parker is a high school student who gained spider-like abilities, fighting crime across New York City as the alter ego Spider-Man, hoping someday, he will live up to his heroes in the Avengers. While Parker juggled all his continued superhero duties with the demands of his high-school life, he was approached by Tony Stark who recruited Spider-Man to join the Avengers Civil War, putting Spider-Man into the brief conflict with his personal hero, Captain America. Parker then agreed and was given his new suit as well as brand new Stark technology in exchange for all his help, although Stark still did not make him an official member of the Avengers and instead returned Parker back home to continue his own hero work.', 1),
(10, 'images/a_ant.jpg', 'Ant Man', 'Scott Edward Harris Lang is a former criminal who had been convinced by Hank Pym to take on the mantle as Ant Man, in order for them to then prevent Darren Cross from attempting to manipulate the Pym Particles to create extremely weapons, which he would then sell to HYDRA and the Ten Rings. Lang was trained up by Hope van Dyne and Pym to master the Ant-Man technology, before he was sent to steal the Yellowjacket Suit from Cross. However, their plan was uncovered by Cross, who managed to kidnap Lang\'s daughter, resulting with a final fight where Ant-Man defeated Cross by sending them both to the Quantum Realm. Ant-Man was able to survive the journey into the Quantum Realm, giving Pym hope that his wife could be saved as Lang returned into his old life, only to be told that the Avengers had learnt of him and began seeking him out.', 1),
(11, 'images/a_nebula.jpg', 'Nebula 2', 'Nebula is a Luphomoid assassin, an adopted daughter of the intergalactic warlord Thanos and adopted sister of Gamora. As the right-hand woman of Ronan the Accuser during his and Thanos\' quest to retrieve the Orb, she helped him fight the Guardians of the Galaxy during the Battle of Xandar. Fleeing the battle after a fight with Gamora, Nebula was soon captured by the Sovereign and handed back to the Guardians. She escaped and helped Taserface lead the other Ravagers in a mutiny against their former leader Yondu Udonta before leaving to find and kill Gamora. After forgiving and helping her sister alongside the Guardians during the Battle on Ego\'s Planet, she left in a ship to pursue a revenge mission against Thanos.', 1),
(12, 'images/a_rocket.jpg', 'Rocket Raccoon', '89P13 is a genetically enhanced creature turned freelance criminal, calling himself Rocket. Alongside his friend and partner Groot, Rocket traveled the galaxy picking up bounties until they met Star-Lord who then convinced them to assist him to sell the Orb for a massive profit. However as it was discovered that the Orb was one of the Infinity Stones which was being sought out by Ronan the Accuser, Rocket was convinced to risk everything to stop Ronan\'s plans to destroy Xandar and enslave the world. During the ensuing conflict, Rocket managed to assist his friends in destroying Ronan, despite Groot being killed. Rocket then became a member of the Guardians of the Galaxy alongside the newly planted baby Groot.', 1),
(13, 'images/a_wanda.jpg', 'Wanda', 'Wanda Maximoff is a native of Sokovia who grew up with her fraternal twin brother, Pietro. In an effort to help purge their country of strife, the twins joined HYDRA and agreed to undergo experiments with the Scepter under the supervision of Wolfgang von Strucker. The two received superpowers as a result, with Wanda attaining various abilities including telekinesis, telepathy, and energy manipulation. When HYDRA fell, the twins joined Ultron to get their revenge on Tony Stark, but eventually switched sides and joined the Avengers when they discovered Ultron\'s true intentions. Although Pietro was killed during the ensuing Ultron Offensive, Wanda survived and became a member of the Avengers. During the Avengers Civil War, she sided with Captain America and was briefly imprisoned in the Raft before Rogers freed her along with his teammates.', 1),
(14, 'images/a_silver.jpg', 'quicksilver', 'Pietro Maximoff was a native of Sokovia who grew up with his fraternal twin sister, Wanda. The country, which was embroiled in constant war and strife, became the base of operations for a HYDRA cell operated by Wolfgang von Strucker, who recruited Pietro and Wanda to take part in a series of tests involving the Scepter, giving the twins superpowers. While his sister received a number of mental abilities, Pietro acquired the ability to move at supersonic speeds and other physical features.', 1),
(15, 'images/a_vision.jpg', 'Vision', 'Vision was an android who possessed a synthetic body made from vibranium created by Ultron with Helen Cho\'s help, using the powerful artifact known as the Mind Stone to bring Vision to life. Originally conceived as the perfect form for Ultron, the body was taken by the Avengers before Tony Stark and Bruce Banner proceeded to upload the remnants of Stark\'s personal A.I. J.A.R.V.I.S. into it. Upon his birth, Vision declared he was the hybrid of both Ultron and J.A.R.V.I.S., one that would fight with them to protect humanity. Vision had then joined with the Avengers in the Battle of Sokovia, using his powers to prevent Ultron from transferring his consciousness to the internet, and allowing the Avengers to successfully put an end to Ultron.', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
