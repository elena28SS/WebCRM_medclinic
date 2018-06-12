-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 12 2018 г., 14:07
-- Версия сервера: 5.5.53-log
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2basic`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text NOT NULL,
  `rule_name` varchar(64) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `CartPatient`
--

CREATE TABLE `CartPatient` (
  `id_patient` int(225) NOT NULL,
  `id_sotr` int(225) UNSIGNED NOT NULL,
  `Complains` text NOT NULL,
  `Lecheniye` text NOT NULL,
  `Anamnesis_morbi` text NOT NULL,
  `Anamnesis_vitae` text NOT NULL,
  `Lek_allergye` text NOT NULL,
  `kod_Mkb10` varchar(50) NOT NULL,
  `Name_Diagnozis` text NOT NULL,
  `Epicrysis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `CartPatient`
--

INSERT INTO `CartPatient` (`id_patient`, `id_sotr`, `Complains`, `Lecheniye`, `Anamnesis_morbi`, `Anamnesis_vitae`, `Lek_allergye`, `kod_Mkb10`, `Name_Diagnozis`, `Epicrysis`) VALUES
(1, 1, 'На эпизоды интенсивных болей в правом подреберье, вынуждающие больного обращаться за медицинской помощью, купируются приемом спазмолитиков', 'Периодически принимает спазмалитики - но-шпа и папаверин для купирования острых болей . Планового лечениея и рекомендаций  врача не придерживается', 'Для уточнения заболевания необходимо в хронологическом порядке провести анализ имеющихся результатов лабораторных, инструментальных методов исследования. Важно оценить результаты ранее проведенных лечеб-ных мероприятий и эффективность лекарственных препаратов при данной патологии (с указанием препаратов и доз).', 'Аллергические  реакции на лекарственные препараты, пищевые продукты отсутстсвуют Частые оРЗ.  Брат болел туберкулезом в 1978г. Бабушка по материнской линии умерла от  рака печени в 65лет Наследственные заб отстутствуют', 'нет', 'ER09', 'Основной ДЖВП по гипертоническому типу Обструкция желчевыводящих путей2 ст. Холелитиаз.Холестаз.\r\nСопутствующий: Сахарный диабет II типа. Среднетяжелая форма.ГБ II ст\r\n', '_'),
(2, 3, 'систематические боли за грудиной , усиливающиеся  при хотьбе, напряжении , волнении', 'Лечебные нагрузки , прием ангиопротекторов( трентал 0,5х3 курсом 1 мес). витаминов К, Оротата Калия в теч 2 нед., бальнеологическое лечение', 'Пациент перенес инфаркт миокарда 1-й степени 3 года назад, страдает нестабильной стенокардией с ангиоспазмами по рестриктивному типу.\r\nБоли возникли 3 мес назад после перенесенного стресса. Периодичность не наблюдается.', 'Пациент проживает в Волгограде, работаетна Госпредприятии в должности старшего экономиста, периодически имеет стрессы . Из перенесенных заболеваний хр.тонзиллит,редкие ОРВИ.', 'Лекарственный анамнез спокоен, пищевой аллергии нет', '123.8  ', 'Нестабильная гипертония1 ст, ИБС, текущее  осложнение инфаркта миокарда', 'Поступил на обследование'),
(3, 3, ' на уплотнение в области щитовидной железы. Обнаружила 2 нед назад случайно, при пальпации перешейка щитовидной железы', '  Иодид калия 0,5х3р в теч 2 нед. Повторить через мес', ' Отсутстсвует', 'dfg', 'et', '2378', 'Эутиреоидный зоб. Поликистоз щитовидной железы.', 'fd'),
(5, 1, 'на кашель, насморк,зуд, першение в носоглотке. Болен 3 дня, после поездки на природу, где было много цветущих растений.  ', ' обильное питье, активированный уголь,таб zirtec 1 шт х2 р - 7 дн', 'Страдает аллергией на пыльцу растений', 'апп', 'апапа', '1022', 'Вазомоторного ринит на фоне пыльцевой аллергии', 'аава');

-- --------------------------------------------------------

--
-- Структура таблицы `ClassifMkb_ds`
--

CREATE TABLE `ClassifMkb_ds` (
  `id` int(11) NOT NULL,
  `class_MKB10` varchar(50) NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ClassifMkb_ds`
--

INSERT INTO `ClassifMkb_ds` (`id`, `class_MKB10`, `Name`) VALUES
(1, 'A00-B99', 'Некоторые инфекционные и паразитарные болезни'),
(2, 'D50-D89', 'Болезни крови, кроветворных органов и отдельные нарушения, вовлекающие иммунный механизм'),
(3, 'E00-E90', 'Болезни эндокринной системы, расстройства питания и нарушения обмена веществ'),
(4, 'F00-F99', 'Психические расстройства и расстройства поведения'),
(5, 'G00-G99', 'Болезни нервной системы'),
(6, 'H00-H59', 'Болезни глаза и его придаточного аппарата'),
(7, 'H60-H95 ', 'Болезни уха и сосцевидного отростка'),
(8, 'I00-I99', 'Болезни системы кровообращения'),
(9, 'J00-J99', 'Болезни органов дыхания'),
(10, 'K00-K93', 'Болезни органов пищеварения'),
(11, 'L00-L99', 'Болезни кожи и подкожной клетчатки'),
(12, 'M00-M99 ', 'Болезни костно-мышечной системы и соединительной ткани'),
(13, 'N00-N99', 'Болезни мочеполовой системы'),
(14, 'O00-O99', 'Беременность, роды и послеродовой период'),
(15, 'P00-P96 ', 'Отдельные состояния, возникающие в перинатальном периоде'),
(16, 'Q00-Q99', ' Врожденные аномалии [пороки развития], деформации и хромосомные нарушения'),
(17, 'R00-R99', 'Симптомы, признаки и отклонения от нормы, выявленные при клинических и лабораторных исследованиях, не классифицированные в других рубриках'),
(18, 'S00-T98', 'Травмы, отравления и некоторые другие последствия воздействия внешних причин'),
(19, 'V01-Y98', 'Внешние причины заболеваемости и смертности'),
(20, 'Z00-Z99', ' Факторы, влияющие на состояние здоровья населения и обращения в учреждения здравоохранения');

-- --------------------------------------------------------

--
-- Структура таблицы `Company_Ensurance`
--

CREATE TABLE `Company_Ensurance` (
  `id_com` int(25) UNSIGNED NOT NULL,
  `Name_company` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Company_Ensurance`
--

INSERT INTO `Company_Ensurance` (`id_com`, `Name_company`) VALUES
(2, 'Альфа Страхование');

-- --------------------------------------------------------

--
-- Структура таблицы `Diagnosis_mkb`
--

CREATE TABLE `Diagnosis_mkb` (
  `id` int(50) UNSIGNED NOT NULL,
  `diagnosis_name` text NOT NULL,
  `kod_mkb_10` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Diagnostika_spr`
--

CREATE TABLE `Diagnostika_spr` (
  `id_type_diagnjstiki` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name_diagnjstik` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Diagnostika_spr`
--

INSERT INTO `Diagnostika_spr` (`id_type_diagnjstiki`, `id`, `name_diagnjstik`) VALUES
(1, 1, 'Эндоскопия желудка'),
(1, 2, 'Эндоскопия желчного пузыря'),
(8, 3, 'УЗИ матки и яичников'),
(8, 4, 'УЗИ щитовидной железы'),
(7, 5, 'Рентген грудной клетки'),
(2, 6, 'Исследование ДНК на отцовство'),
(3, 7, 'МРТ'),
(4, 8, 'Мониторинг ЧСС и сердечного ритма'),
(4, 9, 'Электрокардиография'),
(3, 10, 'Электроэнцефалография'),
(1, 11, 'Эндоскопия мочевого пузыря'),
(3, 12, 'ЭЭГ');

-- --------------------------------------------------------

--
-- Структура таблицы `Info_Patients`
--

CREATE TABLE `Info_Patients` (
  `id_patient` int(255) NOT NULL,
  `Data_create` date DEFAULT NULL,
  `id_sotr_create` int(100) NOT NULL,
  `gender` enum('жен','муж','','') NOT NULL,
  `FIO` text NOT NULL,
  `Birhtday` date NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `City` tinytext NOT NULL,
  `street` tinytext NOT NULL,
  `SNILS` mediumint(225) NOT NULL,
  `N_serya_Pasport` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Info_Patients`
--

INSERT INTO `Info_Patients` (`id_patient`, `Data_create`, `id_sotr_create`, `gender`, `FIO`, `Birhtday`, `Adress`, `City`, `street`, `SNILS`, `N_serya_Pasport`) VALUES
(1, '2017-01-02', 3, 'муж', 'Фирсов Иван Петрович', '1987-01-02', 'Москва Солющенский пер22', 'Москва', 'Солющенский пер22', 8388607, 'ВА556566'),
(2, '0000-00-00', 3, 'муж', 'Аникеев Иван Леонтьевич', '1978-07-10', 'Волгоград, Иркутская 23 кв17', 'Волгоград', 'Иркутская 23', 8388607, 'ВА0356465765'),
(3, '0000-00-00', 3, 'жен', 'Вароева Ангелина Олеговна', '1988-12-07', 'Волгоград, Электролесовская 5 кв 45', 'Волгоград', 'Электролесовская 5', 8388607, 'АР 345467'),
(5, '0000-00-00', 2, 'жен', 'нен', '0000-00-00', 'проь', 'оььоо', 'ьоьоьо', 546546, '56н5656');

-- --------------------------------------------------------

--
-- Структура таблицы `Lab_analises`
--

CREATE TABLE `Lab_analises` (
  `id` int(50) NOT NULL,
  `name_analisa` tinytext NOT NULL,
  `id_type_analises` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `Lab_analises`
--

INSERT INTO `Lab_analises` (`id`, `name_analisa`, `id_type_analises`) VALUES
(1, 'Общий анализ крови стандартный (5 парам) ', 1),
(2, 'общий анализ мочи', 1),
(3, 'моча по нечипоренко', 2),
(4, 'моча по Зимницкому', 2),
(5, 'кровь на белок , остаточный азот и мочевину', 2),
(6, 'кровь на сахар', 4),
(7, 'моча на сахар', 4),
(8, 'кровь на эстрогены ', 5),
(9, 'Исследование ТТГ и СТГ', 5),
(10, 'Онкомаркер  рака молочной железы', 6),
(11, 'Маркер рака яичников', 6),
(12, 'СОЭ( скорость оседания эритроцитов)', 3),
(13, 'Определение группы крови и резус-фактора (метод гелевых карт) ', 3),
(14, 'Лейкоциты +лейкоцитарная формула (кровь из пальца)', 3),
(15, 'цитология транссудата', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `ListDiagnostObsl`
--

CREATE TABLE `ListDiagnostObsl` (
  `id` int(225) NOT NULL,
  `id_patient` int(225) NOT NULL,
  `id_diagnostic` int(225) NOT NULL,
  `data_diagnostic` datetime NOT NULL,
  `id_sotr` int(225) NOT NULL,
  `Resultat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ListDiagnostObsl`
--

INSERT INTO `ListDiagnostObsl` (`id`, `id_patient`, `id_diagnostic`, `data_diagnostic`, `id_sotr`, `Resultat`) VALUES
(1, 1, 2, '0000-00-00 00:00:00', 2, 'Определяется полость пузыря размером 3Х5см, желчный проток проходим спазмирован по гипертоническому типу, в правом желчном потоке определяется образование похожее на конкрмент размером 2ммх3мм. '),
(2, 2, 9, '0000-00-00 00:00:00', 6, 'Снижение общего вольтажа,зубец R нечеткий, верхушка сглажена. Ритм синусоидный, чсс122\' Экстрасистолия 1-2 в мин'),
(3, 3, 4, '2017-12-05 00:00:00', 10, 'Контуры щитовидной железы в норме. Размеры 5x7см . перешеек 2х2 см ..участков повышенной эхолокации и полостных образований не обнаружено'),
(4, 3, 4, '0000-00-00 00:00:00', 3, 'В норме');

-- --------------------------------------------------------

--
-- Структура таблицы `ListLabObsledov`
--

CREATE TABLE `ListLabObsledov` (
  `id` int(225) NOT NULL,
  `id_patient` int(225) NOT NULL,
  `id_analiz` int(11) NOT NULL,
  `data_obsl` datetime NOT NULL,
  `id_sotr` int(225) NOT NULL,
  `Result` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ListLabObsledov`
--

INSERT INTO `ListLabObsledov` (`id`, `id_patient`, `id_analiz`, `data_obsl`, `id_sotr`, `Result`) VALUES
(1, 1, 5, '0000-00-00 00:00:00', 3, 'dgfghgj'),
(2, 3, 9, '0000-00-00 00:00:00', 6, ' ТТГ 0,5%%');

-- --------------------------------------------------------

--
-- Структура таблицы `ListLechProced`
--

CREATE TABLE `ListLechProced` (
  `id` int(225) NOT NULL,
  `id_patient` int(225) NOT NULL,
  `id_proced_lech` int(11) NOT NULL,
  `ed_izm` int(11) NOT NULL,
  `data_proc` datetime NOT NULL,
  `cours_kol` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ListLechProced`
--

INSERT INTO `ListLechProced` (`id`, `id_patient`, `id_proced_lech`, `ed_izm`, `data_proc`, `cours_kol`) VALUES
(1, 1, 10, 1, '1900-12-28 18:50:00', 4),
(2, 1, 5, 1, '2017-12-09 00:00:00', 10),
(3, 2, 4, 1, '2018-01-24 17:45:00', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `ListOsmotrPhisic`
--

CREATE TABLE `ListOsmotrPhisic` (
  `id` int(225) UNSIGNED NOT NULL,
  `id_patient` int(255) NOT NULL,
  `Id_sotrudn` int(225) NOT NULL,
  `date_osmotra` datetime NOT NULL,
  `Respiratory_system` text NOT NULL,
  `Cardiovascular_system` text NOT NULL,
  `Gastrointestinal_tract` text NOT NULL,
  `Urogenitale_system` text NOT NULL,
  `Nervously_psychic_sphere` text NOT NULL,
  `Auscultatia_Chest` text NOT NULL,
  `Palpaciya_lymph_uzl` mediumtext NOT NULL,
  `heart_rate` tinyint(4) NOT NULL,
  `arterialAD` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ListOsmotrPhisic`
--

INSERT INTO `ListOsmotrPhisic` (`id`, `id_patient`, `Id_sotrudn`, `date_osmotra`, `Respiratory_system`, `Cardiovascular_system`, `Gastrointestinal_tract`, `Urogenitale_system`, `Nervously_psychic_sphere`, `Auscultatia_Chest`, `Palpaciya_lymph_uzl`, `heart_rate`, `arterialAD`) VALUES
(1, 1, 3, '1900-12-29 18:50:00', 'Дыхание чистое. ЧД 16\\ мин. Аускультативно по всем легочным полям чисто', ' Границы сердца в пределах нормы. Тоны громкие ритмичные. Систолический шум над верхушкой. Пальпация верхушки 2х2см', 'Пальпация живота  болезненна в правом подреберье и в обл желчного пузыря, дефанса и локальных спазмированных участков нет. Границы печени в пределах нормы, край тупой эластичный   болезненный  в точке желчного пузыря', 'Жалобы на болезненные мочеиспускания, песок в моче', 'В норме', 'гипертонические шумы над аортой', ' не увеличены', 80, '123/56'),
(2, 4, 1, '0000-00-00 00:00:00', 'etrty', 'ererer', 'etetet', 'yui', 'ererer', 'erere', 'ererer', 123, '344'),
(3, 3, 1, '2018-01-17 17:35:00', '  аускультативно- поля чистые', ' Тоны приглушены, легкий систолич шум. чсс 67\"', 'цуцуцfghj', 'цуцhhh', 'уццhgjj', 'цуцуцyhyjj', 'цуцу', 122, '.80\\60'),
(4, 2, 1, '2018-02-14 14:50:00', 'в норме', ' в норме', 'жалоб нет  норме', ' жалоб нет', ' адекватен', 'без особенностей', 'в норме', 122, '120\\70'),
(5, 2, 3, '2018-02-14 14:55:00', 'в норме', 'в норме', 'N', 'N', 'N', 'N', 'N', 89, '120\\89');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(3) NOT NULL,
  `parent_id` tinyint(3) NOT NULL,
  `level` tinyint(3) NOT NULL,
  `position` int(3) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `title` text NOT NULL,
  `alias` text NOT NULL,
  `default` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1513161019);

-- --------------------------------------------------------

--
-- Структура таблицы `N_polisa`
--

CREATE TABLE `N_polisa` (
  `N_polisa` int(225) UNSIGNED NOT NULL,
  `id_comp` int(25) UNSIGNED NOT NULL,
  `Vid_str` enum('OMS','DMS','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Post_doljnost`
--

CREATE TABLE `Post_doljnost` (
  `id_doljn` int(16) UNSIGNED NOT NULL,
  `nazvanie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Post_doljnost`
--

INSERT INTO `Post_doljnost` (`id_doljn`, `nazvanie`) VALUES
(1, 'Врач-терапевт'),
(2, 'Врач-хирург'),
(3, 'Регистратор-медсестра'),
(4, 'Офтальмолог'),
(5, 'Отоларинголог'),
(6, 'Акушер-гинеколог'),
(7, 'Рентгенолог'),
(8, 'Педиатр'),
(9, 'Фтизиатр');

-- --------------------------------------------------------

--
-- Структура таблицы `Price_lab_obsl`
--

CREATE TABLE `Price_lab_obsl` (
  `id_analisa` int(50) NOT NULL,
  `ed_iz` tinyint(4) NOT NULL,
  `Stoimost` decimal(10,0) NOT NULL,
  `valuta` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Price_proc_diagnost`
--

CREATE TABLE `Price_proc_diagnost` (
  `id_proc_diagn` int(11) NOT NULL,
  `ed_iz` tinytext NOT NULL,
  `stoimost` decimal(10,0) NOT NULL,
  `valuta` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Price_proc_diagnost`
--

INSERT INTO `Price_proc_diagnost` (`id_proc_diagn`, `ed_iz`, `stoimost`, `valuta`) VALUES
(1001, '1', '300', '$'),
(1002, '1', '240', 'руб');

-- --------------------------------------------------------

--
-- Структура таблицы `Price_proc_lech`
--

CREATE TABLE `Price_proc_lech` (
  `id_proc_lech` int(11) NOT NULL,
  `ed_iz` tinyint(4) NOT NULL,
  `stoimost` decimal(10,0) NOT NULL,
  `valuta` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Proced_lech_spr`
--

CREATE TABLE `Proced_lech_spr` (
  `id` int(11) NOT NULL,
  `type` int(50) NOT NULL,
  `name_procedure` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Proced_lech_spr`
--

INSERT INTO `Proced_lech_spr` (`id`, `type`, `name_procedure`) VALUES
(4, 1, 'Ионофорез'),
(5, 1, 'Электрофорез'),
(6, 6, 'Аппендэктомия'),
(7, 2, 'плазмаферез  с криопреципитатом'),
(8, 3, 'склеротерапия вен нижних конечностей'),
(9, 3, 'склеротерапия телеангиэктазий'),
(10, 3, 'склеротерапия  геморроидальных узлов');

-- --------------------------------------------------------

--
-- Структура таблицы `Raspisanie`
--

CREATE TABLE `Raspisanie` (
  `id` int(225) NOT NULL,
  `id_spec` int(225) NOT NULL,
  `id_sotr` int(255) NOT NULL,
  `Den_nedeli` tinytext NOT NULL,
  `Priem_begin` time NOT NULL,
  `Priem_end` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Raspisanie`
--

INSERT INTO `Raspisanie` (`id`, `id_spec`, `id_sotr`, `Den_nedeli`, `Priem_begin`, `Priem_end`) VALUES
(1, 2, 3, 'пн', '10:00:00', '16:00:15'),
(2, 5, 1, 'вт-чт', '10:00:00', '17:00:00'),
(3, 2, 3, 'вт-чт', '14:00:00', '20:00:00'),
(4, 2, 3, 'ср -пт', '09:00:00', '16:00:00'),
(5, 5, 1, 'ср - пт', '12:00:00', '19:00:00'),
(6, 5, 1, 'пн', '08:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `Setka_priema`
--

CREATE TABLE `Setka_priema` (
  `id` int(225) NOT NULL,
  `Data_priema` date NOT NULL,
  `id_specialn` int(100) NOT NULL,
  `id_sotrudnika` int(225) UNSIGNED NOT NULL,
  `id_patient` int(11) NOT NULL,
  `Den_nedeli` tinytext NOT NULL,
  `Time_priem_1` time NOT NULL,
  `Time_priem_2` time NOT NULL,
  `Time_priem_3` time NOT NULL,
  `Time_priem_4` time NOT NULL,
  `Time_priem_5` time NOT NULL,
  `Time_priem_6` time NOT NULL,
  `Time_priem_7` time NOT NULL,
  `Time_priem_8` time NOT NULL,
  `Time_priem_9` time NOT NULL,
  `Time_priem_10` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Setka_priema`
--

INSERT INTO `Setka_priema` (`id`, `Data_priema`, `id_specialn`, `id_sotrudnika`, `id_patient`, `Den_nedeli`, `Time_priem_1`, `Time_priem_2`, `Time_priem_3`, `Time_priem_4`, `Time_priem_5`, `Time_priem_6`, `Time_priem_7`, `Time_priem_8`, `Time_priem_9`, `Time_priem_10`) VALUES
(1, '0000-00-00', 0, 1, 0, 'пн', '00:00:00', '10:30:00', '11:00:00', '11:30:00', '12:00:00', '12:30:00', '13:00:00', '13:30:00', '14:00:00', '14:30:00'),
(2, '0000-00-00', 0, 1, 0, 'вт-чт', '00:00:00', '15:30:00', '16:00:00', '16:30:00', '17:00:00', '17:30:00', '18:00:00', '18:30:00', '19:00:00', '19:30:00'),
(3, '0000-00-00', 2, 3, 0, 'вт', '00:00:10', '00:00:10', '00:00:10', '00:00:10', '00:00:10', '00:00:10', '00:00:10', '00:00:10', '00:00:10', '00:00:10'),
(4, '2018-02-12', 2, 3, 0, 'пн', '10:00:00', '10:30:00', '11:00:00', '11:30:00', '12:00:00', '12:30:00', '13:00:00', '13:30:00', '14:00:00', '14:50:00'),
(5, '2018-02-13', 2, 1, 0, 'f', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:01', '00:00:00'),
(6, '2018-02-16', 2, 1, 0, 'f', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:01'),
(7, '2018-02-21', 2, 3, 0, 'f', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:00'),
(8, '2018-02-16', 2, 3, 0, 'f', '00:00:00', '00:00:00', '00:00:01', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00'),
(9, '2018-02-16', 3, 3, 0, 'f', '00:00:00', '00:00:00', '00:00:01', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00'),
(10, '2018-02-16', 6, 3, 0, 'f', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:01', '00:00:00', '00:00:00', '00:00:00', '00:00:00'),
(11, '2018-02-15', 2, 3, 0, 'f', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:01', '00:00:01', '00:00:01', '00:00:00'),
(12, '2018-02-14', 8, 3, 0, 'f', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:01', '00:00:00', '00:00:00', '00:00:00', '00:00:00'),
(13, '2018-03-07', 2, 1, 0, 'f', '00:00:00', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:01', '00:00:00', '00:00:00', '00:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `Sotrudniki`
--

CREATE TABLE `Sotrudniki` (
  `id` int(225) NOT NULL,
  `id_sotr` int(225) UNSIGNED NOT NULL,
  `FIO` text NOT NULL,
  `id_doljn` int(16) UNSIGNED NOT NULL,
  `telef` bigint(255) NOT NULL,
  `stage_rabot_let` tinyint(4) NOT NULL,
  `god_vipuska` year(4) NOT NULL,
  `id_specializ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Sotrudniki`
--

INSERT INTO `Sotrudniki` (`id`, `id_sotr`, `FIO`, `id_doljn`, `telef`, `stage_rabot_let`, `god_vipuska`, `id_specializ`) VALUES
(0, 1, 'Селиванов Евгений Викторович', 1, 2147483647, 12, 1989, 5),
(0, 3, 'Аристова Ирина Евгеньевна', 2, 79092354564, 10, 2007, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Specialisation_Spr`
--

CREATE TABLE `Specialisation_Spr` (
  `id` int(11) NOT NULL,
  `name_special` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Specialisation_Spr`
--

INSERT INTO `Specialisation_Spr` (`id`, `name_special`) VALUES
(1, 'Терапевт'),
(2, 'Хирург'),
(3, 'Гинеколог'),
(4, 'Нефролог'),
(5, 'Кардиолог'),
(6, 'ЛОР'),
(7, 'Эндокринолог'),
(8, 'Уролог'),
(9, 'Врач функциональной диагностики'),
(10, 'Врач -лаборант'),
(11, 'Специалист УЗИ'),
(12, 'Физиотерапевт'),
(13, 'Онколог'),
(14, 'Иммунолог'),
(15, 'Невропатолог'),
(16, 'Офтальмолог');

-- --------------------------------------------------------

--
-- Структура таблицы `Tablicazapici`
--

CREATE TABLE `Tablicazapici` (
  `id_sotr` int(225) NOT NULL,
  `Data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tablzapisinapriem`
--

CREATE TABLE `tablzapisinapriem` (
  `id` int(225) NOT NULL,
  `Data_priema` date NOT NULL,
  `Vremia_priema` time NOT NULL,
  `id_sotr` int(225) UNSIGNED NOT NULL,
  `id_specialn` int(255) NOT NULL,
  `id_patient` int(225) NOT NULL,
  `Telefon_patienta` bigint(225) NOT NULL,
  `Diagnosis` varchar(150) NOT NULL,
  `Pervichniy` set('да','нет','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `tablzapisinapriem`
--

INSERT INTO `tablzapisinapriem` (`id`, `Data_priema`, `Vremia_priema`, `id_sotr`, `id_specialn`, `id_patient`, `Telefon_patienta`, `Diagnosis`, `Pervichniy`) VALUES
(2, '2018-01-20', '00:00:12', 1, 0, 1, 78006653423, 'ДЖВП', 'нет'),
(3, '2018-02-16', '10:20:00', 3, 2, 2, 3454656565, 'gfghh', ''),
(4, '2018-02-08', '14:30:00', 3, 2, 3, 44565677, 'hhjkjk', ''),
(5, '2018-02-12', '11:00:00', 3, 2, 3, 3255466, 'SDFDF', ''),
(6, '2018-02-12', '11:30:00', 3, 2, 3, 3554545, 'dfgg', ''),
(7, '2018-02-16', '12:00:00', 3, 2, 1, 3255466, 'Бронхиальная астма', 'нет'),
(8, '2018-02-14', '00:00:01', 3, 2, 1, 23546565, 'ыва', 'нет');

-- --------------------------------------------------------

--
-- Структура таблицы `Type_Diagnostika`
--

CREATE TABLE `Type_Diagnostika` (
  `id` int(11) NOT NULL,
  `name_type_diagnproc` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Type_Diagnostika`
--

INSERT INTO `Type_Diagnostika` (`id`, `name_type_diagnproc`) VALUES
(1, 'Эндоскопические исследования'),
(2, 'Генетические исследования'),
(3, ' Исследование головного  мозга'),
(4, ' Исследование Сердечно сосудистой системы и сердечного ритма'),
(5, 'Цистоскопия'),
(6, 'Дерматоскопия'),
(7, 'Рентген, флюорография'),
(8, 'УЗИ');

-- --------------------------------------------------------

--
-- Структура таблицы `Type_lab_analises`
--

CREATE TABLE `Type_lab_analises` (
  `id` int(11) NOT NULL,
  `name_type_analises` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Type_lab_analises`
--

INSERT INTO `Type_lab_analises` (`id`, `name_type_analises`) VALUES
(1, 'Общие анализы крови , мочи , кала'),
(2, 'Нефрологический профиль'),
(3, 'общеклинические исследования'),
(4, 'Тесты при сахарном диабете'),
(5, 'Гормональный фон '),
(6, 'Онкомаркеры'),
(7, 'Цитологические исследование');

-- --------------------------------------------------------

--
-- Структура таблицы `Type_proc_lech`
--

CREATE TABLE `Type_proc_lech` (
  `id` int(100) NOT NULL,
  `name_type_lech` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Type_proc_lech`
--

INSERT INTO `Type_proc_lech` (`id`, `name_type_lech`) VALUES
(1, 'Физиотерапия'),
(2, 'ПЛАЗМАФЕРЕЗ'),
(3, 'СКЛЕРОТЕРАПИЯ'),
(4, 'Рефлексотерапия'),
(5, 'РАДИОВОЛНОВЫЕ ТЕХНОЛОГИИ'),
(6, 'Хирургическое лечение');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id` int(225) UNSIGNED NOT NULL,
  `status` tinyint(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `passvord` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `item_name` (`item_name`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD KEY `parent` (`parent`,`child`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `CartPatient`
--
ALTER TABLE `CartPatient`
  ADD PRIMARY KEY (`id_patient`),
  ADD KEY `id_sotr` (`id_sotr`);

--
-- Индексы таблицы `ClassifMkb_ds`
--
ALTER TABLE `ClassifMkb_ds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_MKB10` (`class_MKB10`);

--
-- Индексы таблицы `Company_Ensurance`
--
ALTER TABLE `Company_Ensurance`
  ADD PRIMARY KEY (`id_com`);

--
-- Индексы таблицы `Diagnosis_mkb`
--
ALTER TABLE `Diagnosis_mkb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kod_mkb_10` (`kod_mkb_10`);

--
-- Индексы таблицы `Diagnostika_spr`
--
ALTER TABLE `Diagnostika_spr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_diagnostiki` (`id_type_diagnjstiki`);

--
-- Индексы таблицы `Info_Patients`
--
ALTER TABLE `Info_Patients`
  ADD PRIMARY KEY (`id_patient`);

--
-- Индексы таблицы `Lab_analises`
--
ALTER TABLE `Lab_analises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_analises` (`id_type_analises`);

--
-- Индексы таблицы `ListDiagnostObsl`
--
ALTER TABLE `ListDiagnostObsl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_patient` (`id_patient`,`id_diagnostic`,`id_sotr`);

--
-- Индексы таблицы `ListLabObsledov`
--
ALTER TABLE `ListLabObsledov`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_analiz` (`id_analiz`),
  ADD KEY `id_patient` (`id_patient`);

--
-- Индексы таблицы `ListLechProced`
--
ALTER TABLE `ListLechProced`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_proced_lech` (`id_proced_lech`),
  ADD KEY `id_patient` (`id_patient`);

--
-- Индексы таблицы `ListOsmotrPhisic`
--
ALTER TABLE `ListOsmotrPhisic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_sotrudn` (`Id_sotrudn`),
  ADD KEY `date_osmotra` (`date_osmotra`),
  ADD KEY `id_patient` (`id_patient`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `N_polisa`
--
ALTER TABLE `N_polisa`
  ADD PRIMARY KEY (`N_polisa`),
  ADD KEY `id_comp` (`id_comp`);

--
-- Индексы таблицы `Post_doljnost`
--
ALTER TABLE `Post_doljnost`
  ADD PRIMARY KEY (`id_doljn`);

--
-- Индексы таблицы `Price_lab_obsl`
--
ALTER TABLE `Price_lab_obsl`
  ADD PRIMARY KEY (`id_analisa`);

--
-- Индексы таблицы `Price_proc_diagnost`
--
ALTER TABLE `Price_proc_diagnost`
  ADD PRIMARY KEY (`id_proc_diagn`);

--
-- Индексы таблицы `Price_proc_lech`
--
ALTER TABLE `Price_proc_lech`
  ADD PRIMARY KEY (`id_proc_lech`);

--
-- Индексы таблицы `Proced_lech_spr`
--
ALTER TABLE `Proced_lech_spr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Индексы таблицы `Raspisanie`
--
ALTER TABLE `Raspisanie`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Setka_priema`
--
ALTER TABLE `Setka_priema`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sotrudnika` (`id_sotrudnika`),
  ADD KEY `id_specialn` (`id_specialn`),
  ADD KEY `Time_priem_1` (`Time_priem_1`,`Time_priem_2`,`Time_priem_3`,`Time_priem_4`,`Time_priem_5`,`Time_priem_6`,`Time_priem_7`,`Time_priem_8`,`Time_priem_9`,`Time_priem_10`),
  ADD KEY `id_patient` (`id_patient`);

--
-- Индексы таблицы `Sotrudniki`
--
ALTER TABLE `Sotrudniki`
  ADD PRIMARY KEY (`id_sotr`),
  ADD KEY `id_doljn` (`id_doljn`),
  ADD KEY `id_specializ` (`id_specializ`);

--
-- Индексы таблицы `Specialisation_Spr`
--
ALTER TABLE `Specialisation_Spr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tablzapisinapriem`
--
ALTER TABLE `tablzapisinapriem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_patient` (`id_patient`),
  ADD KEY `Data_priema` (`Data_priema`),
  ADD KEY `id_specialn` (`id_specialn`),
  ADD KEY `Vremia_priema` (`Vremia_priema`),
  ADD KEY `tablzapisinapriem_ibfk_1` (`id_sotr`);

--
-- Индексы таблицы `Type_Diagnostika`
--
ALTER TABLE `Type_Diagnostika`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Type_lab_analises`
--
ALTER TABLE `Type_lab_analises`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Type_proc_lech`
--
ALTER TABLE `Type_proc_lech`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ClassifMkb_ds`
--
ALTER TABLE `ClassifMkb_ds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `Company_Ensurance`
--
ALTER TABLE `Company_Ensurance`
  MODIFY `id_com` int(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `Diagnosis_mkb`
--
ALTER TABLE `Diagnosis_mkb`
  MODIFY `id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `Diagnostika_spr`
--
ALTER TABLE `Diagnostika_spr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `Info_Patients`
--
ALTER TABLE `Info_Patients`
  MODIFY `id_patient` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `Lab_analises`
--
ALTER TABLE `Lab_analises`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `ListDiagnostObsl`
--
ALTER TABLE `ListDiagnostObsl`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `ListLabObsledov`
--
ALTER TABLE `ListLabObsledov`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `ListLechProced`
--
ALTER TABLE `ListLechProced`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `ListOsmotrPhisic`
--
ALTER TABLE `ListOsmotrPhisic`
  MODIFY `id` int(225) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `N_polisa`
--
ALTER TABLE `N_polisa`
  MODIFY `N_polisa` int(225) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `Post_doljnost`
--
ALTER TABLE `Post_doljnost`
  MODIFY `id_doljn` int(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `Proced_lech_spr`
--
ALTER TABLE `Proced_lech_spr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `Setka_priema`
--
ALTER TABLE `Setka_priema`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `Specialisation_Spr`
--
ALTER TABLE `Specialisation_Spr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `tablzapisinapriem`
--
ALTER TABLE `tablzapisinapriem`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `Type_Diagnostika`
--
ALTER TABLE `Type_Diagnostika`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `Type_lab_analises`
--
ALTER TABLE `Type_lab_analises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `Type_proc_lech`
--
ALTER TABLE `Type_proc_lech`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(225) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `CartPatient`
--
ALTER TABLE `CartPatient`
  ADD CONSTRAINT `cartpatient_ibfk_1` FOREIGN KEY (`id_patient`) REFERENCES `Info_Patients` (`id_patient`);

--
-- Ограничения внешнего ключа таблицы `Diagnosis_mkb`
--
ALTER TABLE `Diagnosis_mkb`
  ADD CONSTRAINT `diagnosis_mkb_ibfk_1` FOREIGN KEY (`kod_mkb_10`) REFERENCES `ClassifMkb_ds` (`class_MKB10`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Diagnostika_spr`
--
ALTER TABLE `Diagnostika_spr`
  ADD CONSTRAINT `diagnostika_spr_ibfk_1` FOREIGN KEY (`id_type_diagnjstiki`) REFERENCES `Type_Diagnostika` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Lab_analises`
--
ALTER TABLE `Lab_analises`
  ADD CONSTRAINT `lab_analises_ibfk_1` FOREIGN KEY (`id_type_analises`) REFERENCES `Type_lab_analises` (`id`);

--
-- Ограничения внешнего ключа таблицы `ListLabObsledov`
--
ALTER TABLE `ListLabObsledov`
  ADD CONSTRAINT `listlabobsledov_ibfk_1` FOREIGN KEY (`id_patient`) REFERENCES `Info_Patients` (`id_patient`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `listlabobsledov_ibfk_2` FOREIGN KEY (`id_analiz`) REFERENCES `Lab_analises` (`id`);

--
-- Ограничения внешнего ключа таблицы `ListLechProced`
--
ALTER TABLE `ListLechProced`
  ADD CONSTRAINT `listlechproced_ibfk_1` FOREIGN KEY (`id_patient`) REFERENCES `Info_Patients` (`id_patient`);

--
-- Ограничения внешнего ключа таблицы `Price_lab_obsl`
--
ALTER TABLE `Price_lab_obsl`
  ADD CONSTRAINT `price_lab_obsl_ibfk_1` FOREIGN KEY (`id_analisa`) REFERENCES `Lab_analises` (`id`);

--
-- Ограничения внешнего ключа таблицы `Price_proc_lech`
--
ALTER TABLE `Price_proc_lech`
  ADD CONSTRAINT `price_proc_lech_ibfk_1` FOREIGN KEY (`id_proc_lech`) REFERENCES `List_lech_proced` (`id_proced_lech`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `Proced_lech_spr`
--
ALTER TABLE `Proced_lech_spr`
  ADD CONSTRAINT `proced_lech_spr_ibfk_1` FOREIGN KEY (`type`) REFERENCES `Type_proc_lech` (`id`);

--
-- Ограничения внешнего ключа таблицы `tablzapisinapriem`
--
ALTER TABLE `tablzapisinapriem`
  ADD CONSTRAINT `tablzapisinapriem_ibfk_1` FOREIGN KEY (`id_sotr`) REFERENCES `Sotrudniki` (`id_sotr`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tablzapisinapriem_ibfk_2` FOREIGN KEY (`id_patient`) REFERENCES `Info_Patients` (`id_patient`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tablzapisinapriem_ibfk_3` FOREIGN KEY (`id_specialn`) REFERENCES `Setka_priema` (`id_specialn`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
