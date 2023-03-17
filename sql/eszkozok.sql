-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 17. 21:57
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
-- Adatbázis: `konyha`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eszkozok`
--

CREATE TABLE `eszkozok` (
  `id` smallint(6) NOT NULL,
  `type` varchar(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(200) NOT NULL,
  `price` smallint(50) NOT NULL,
  `valid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `eszkozok`
--

INSERT INTO `eszkozok` (`id`, `type`, `name`, `description`, `img`, `price`, `valid`) VALUES
(1, 'Cukrasz', 'Cukrászkés', 'Torták felvágáshoz használják.', 'cukraszkes-1063x400', 16900, 1),
(2, 'Cukrasz', 'Cukrász spatula', 'Ezt a hajlított spatulát remekül használhatod krémkenésre.\r\nA sütemények és torták megtöltésekor egyenletesen el tudod kenni vele a krémet.', 'cukraszspatula-600x400', 1199, 1),
(3, 'Cukrasz', 'Habverő', 'Kézi habverő mellyel könnyen és gyorsan dolgozhatsz a konyhában.\r\nAkasztós.', 'habvero-500x500', 950, 1),
(4, 'Cukrasz', 'Habzsák', 'Anyaga: műanyag belső, szövet külső\r\nMérete: 31 cm hosszú; 20 cm széles a betöltő szája, az alsó része 6 mm széles\r\nSúlya: 20 g\r\n', 'habzsak-500x500', 706, 1),
(5, 'Cukrasz', 'Reszelő', 'Reszelő 4 oldalas piramis.', 'reszelo-500x500', 3990, 1),
(6, 'Cukrasz', 'Sodrófa', 'Tészták nyújtására alkalmas sodrófa.', 'sodrofa-500x500', 3500, 1),
(7, 'Cukrasz', 'Tortaszelő', 'A drótos tortaszelő segítségével  egyforma piskótakorongokat  tudsz készíteni.\r\n\r\nA  drót két végét rögzítsd a kívánt magasságra  és a szeletelőt  húzd át egyenletesen  a piskótakorongon. ', 'tortaszelo-500x500', 1853, 1),
(8, 'Cukrász', 'Tortavágó kés', 'Miután kihűlt a piskóta, a recés tortavágóval könnyedén elvághatod a lapokat. A kész sütemény vagy torta szeletelésénél is jó hasznát fogod venni. ', 'tortavagokes-500x500', 1697, 1),
(9, 'Gepek', 'Botmixer', 'Pürésítés, keverés és pépesítés: az ergonómikus fogantyú könnyű Clever Mixx tökéletesen kézbe illik ami könnyeddé és egyszerűvé teszi a munkát.\r\nKifröccsenésmentes üzem, hála az új, innovatív botmixerszárnak. ', 'botmixer-500x500', 19999, 1),
(10, 'Gepek', 'Kézi mixer', 'Az öt sebesség beállításával és a turbó funkcióval mindig megtalálja a megfelelő mixelési sebességet. ', 'habvero_kezi-500x500', 8489, 1),
(11, 'Gepek', 'Kávéfőző', 'Presszó kávéfőző tejhabosítóval \r\nSzín: fekete\r\nÜvegkiöntő szintjelzésekkel\r\nKapacitás: 4 csésze kávé\r\nVáltókapcsoló kávé és gőz funkció között\r\nSzivócső tej melegítéséhez vagy habosításához (cappuccino készítéséhez)\r\nAutomatikus kikapcsolás 20 perccel az utolsó főzési ciklus után\r\nTeljesítmény: 800W', 'kavefozo-500x500', 17990, 1),
(12, 'Gepek', 'Kenyérpirító', 'Nem tudja a reggelit elképzelni szendvics, vagy ropogós pirítós nélkül? Akkor ebben az esetbe választja a Zwilling, Enfinigy 1000 wattos kenyérpirítóját, amely 4 különálló fűtőelemmel van ellátva a tökéletes pirítás érdekében.\r\n\r\n    2 szeletes kenyérpirító \r\n    Az emelő automatikus beállítása\r\n    3 automatikus program\r\n    4 különálló fűtőegység\r\n    Kényelmes kábeltárolás\r\n', 'kenyerpirito-500x500', 30000, 1),
(13, 'Gepek', 'Konyhai mérleg', 'BEURER KS 25 KONYHAI MÉRLEG 3KG-IG DIGITÁLIS\r\n\r\n– Elegáns konyhai mérleg mérlegtállal\r\n– Kéken megvilágított kijelző\r\n– Praktikus tara hozzámérési funkció\r\n– Teherbírás: 3 kg\r\n– Beosztás: 1 g\r\n– Méret: 22 x 15 x 5 cm\r\n– LCD kijelző mérete: 6.6 x 2.8 cm\r\n– Számjegyek mérete: 22 mm\r\n– átállítás g, kg, lb:oz\r\n– Kikapcsoló automatika\r\n– Túlterhelés jelzése\r\n– 3x 1,5 AAA elemmel\r\n– Súly: 470 g\r\n– 5 év garancia', 'merleg-500x500', 10052, 1),
(14, 'Gepek', 'Robotgép', 'A robotgéppel egy adagban feldolgozható maximális mennyiségek:\r\n\r\n    1 kg fehér liszt\r\n    800 dkg teljes kiörlésű liszt\r\n    12 tojásfehérje\r\n    1 l tejszín\r\n    2,7 kg sütemény tészta\r\n    2 kg kenyértészta (puha kelt tészta = 55%-os felszívódási arány)\r\n    1,5 kg tört burgonya\r\n    108 db aprósüteménye\r\n\r\n', 'robotgep-500x500', 20000, 1),
(15, 'Gepek', 'Turmixgép', 'Kiváló eredmények\r\n\r\nErőteljes motor: 1200 W, akár 30000 fordulat/perc sebességgel.\r\n1,5 liter hasznos térfogatú \r\nThermoSafe üvegkehely FlowBooster–el\r\nKiváló minőségű ProEdge rozsdamentes acél pengék, Solingen, Németországból.\r\nKeverőrúd, hogy a sűrű vagy fagyasztott összetevőket is könnyedén feldolgozhassa', 'turmix-500x500', 10000, 1),
(16, 'Gepek', 'Vízforraló', 'Víz forralására alkalmas, teát készíteni TILOS benne.', 'vizforralo-500x500', 21021, 1),
(17, 'Kesek', 'Bárd', 'Arcos 288400 - 390 gramm súlyú a 200 mm hosszú, 2.5 mm vastag pengéjű Universal kínai bárd. Használja minden nap, intenzíven! Nem fog csalódni.  \r\nUniversal kések, bárdok - mindennapos intenzív használat kompromisszumok nélkül!', 'bard-500x500', 20016, 1),
(18, 'Kesek', 'Filéző kés', 'Filéző kés alapvető tulajdonsága: közepes méretű, éles és hajlékony kés, ami halak filézésére alkalmas. Az egyik legjobb késgyártó a Marttiini cég, 1928-ban alakult a Finn Rovaniemi-ben. Ahogy a 80-as év végén betette lábát kis hazánkba, azóta töretlen sikert élvez!', 'filezo-500x500', 12000, 1),
(19, 'Kesek', 'Kenyér szelő kés', 'Most mégis kiemelném a szinte mindennap használt és legelterjedtebb kés típust, ami a kenyérszelő kés. Ezek a kések egy recés pengével vannak ellátva, amelyek általában 20-23 cm hosszúságúak. Rozsdamentes acél éllel készülnek, a recés penge pedig a gyors és könnyű szeletelést teszi lehetővé.', 'kenyerkes-500x500', 8789, 1),
(20, 'Kesek', 'Lazackés', 'Tökéletesen kiegyensúlyozott, ergonomikus kialakítású kések.\r\nProfi gasztronómiai és hétköznapi használatra.\r\nHézagmentes markolat kialakításuk miatt a baktériumok nem rakódnak le résekben.\r\nRendkívül hosszan tartó élek, ami könnyen karbantartható.\r\n', 'lazackes-500x500', 11289, 1),
(21, 'Kesek', 'Steak kés', 'Általában steakkéseknek nevezik az étkezésre használt késeket, annak ellenére, hogy csak igen ritkán használják ezeket steak elfogyasztására. Ezért inkább az étkezőkés, evőkés, asztali kés elnevezéseket célszerű használni.', 'steak-500x500', 13456, 1),
(22, 'Kesek', 'Szakács kés', 'A kés a szakácsok legfontosabb munkaeszköze.\r\nA kés legyen jó minőségű, éles, jó fogású és az adott funkciókra megfelelő.\r\n', 'szakacs-500x500', 27899, 1),
(23, 'Kesek', 'Zöldségkés', 'A zöldségkés tisztít, szeletel, hámoz, eltávolítja a hiányosságokat. A penge lehet egyenes, hegyes vagy ívelt, különböző hosszúságú. Jelenleg sokféle gyümölcsöt és zöldséget lehet vásárolni egész évben, tisztításuk és adagolásuk során célszerű speciális késeket használni, például.', 'zoldseg-500x500', 6899, 1),
(24, 'Sutok', 'Elektromos sütő', '\r\nProgramok száma\r\n    10 db \r\nTisztíthatóság\r\n    EcoClean Direct \r\nSütő kapacitás\r\n    71 l \r\nDigitális kijelző\r\n    Igen \r\nLégkeverés\r\n    Igen \r\nEnergiaosztály\r\n    A \r\nBeépítési szélesség\r\n    56 cm \r\n\r\nBeépítési magasság\r\n    60 cm \r\nBeépítési mélység\r\n    55 cm \r\nSzín\r\n    Inox ', 'elektromossuto-500x500', 12300, 1),
(25, 'Sutok', 'Gázsütő', 'ütő típusa: gáz\r\nA sütő kapacitása: 60 liter,\r\nKönnyen tisztítható zománc bevonat,\r\n3 ergonomikus gomb,\r\n4 fűtési funkció,\r\nVisszaszámlálás,\r\nDupla üvegajtó,\r\nAz ujjlenyomatok ellen védett acél,\r\nSzíne: Fehér + az üveg fekete,\r\nEnergiaosztály: A +,\r\nAz áramellátás típusa: 230 V, ', 'gazsuto-500x500', 32200, 1),
(26, 'Sutok', 'Kenyérsütő', 'Típus: Kenyérsütő\r\nSzín: Fekete\r\nHáz anyaga: Műanyag és fém\r\nTeljesítmény: 800 W\r\nKenyérsütő tálcák száma: 1\r\nSpatulák száma: 2\r\nTapadásmentes bevonat\r\nKenyérméretek: 2\r\nKenyérméret (min-max): 900–1200 g\r\n', 'kenyersuto-500x500', 30000, 1),
(27, 'Sutok', 'Légkeveréses sütő', 'Típus: Légkeveréses sütő\r\nSzín: Fekete\r\nTeljesítmény: 1300 W\r\nManuális vezérlés\r\n30 perces időzítő\r\nAutomata kikapcsolás funkció\r\nMax hőmérséklet: 200 °C\r\nTúlmelegedés elleni védelem\r\nHőálló ház\r\nCsúszásmentes lábak\r\n\r\n', 'legkeveresessuto-500x500', 32000, 1),
(28, 'Sutok', 'Szendvics sütő', '4 háromszög alakú szendvics készítéséhez\r\nAutomatikus hőfokszabályzás\r\nKönnyen tisztítható sütőlapok\r\nTapadásmentes felületi kivitelű sütőlapok\r\nHőszigetelt fogantyú és burkolat\r\nMűködésjelző - piros jelzőfény\r\nMelegítésjelző (sütéshez előkészítés) - zöld jelzőfény\r\nFüggőleges helyzetben tárolás lehetősége', 'szendvicssuto-500x500', 7290, 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `eszkozok`
--
ALTER TABLE `eszkozok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `eszkozok`
--
ALTER TABLE `eszkozok`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
