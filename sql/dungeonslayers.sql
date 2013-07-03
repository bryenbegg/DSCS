--
-- MySQL 5.5.31
-- Wed, 03 Jul 2013 19:14:41 +0000
--

CREATE DATABASE `dungeonslayers` DEFAULT CHARSET ucs2;

USE `dungeonslayers`;

CREATE TABLE `armor_types` (
   `id` int(10) not null auto_increment,
   `name` varchar(50),
   `av` int(2),
   `special` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=13;

INSERT INTO `armor_types` (`id`, `name`, `av`, `special`) VALUES ('1', 'Chainmail', '2', 'Movement Rate -0.5');
INSERT INTO `armor_types` (`id`, `name`, `av`, `special`) VALUES ('2', 'Leather Armor', '1', '');
INSERT INTO `armor_types` (`id`, `name`, `av`, `special`) VALUES ('3', 'Leather Vambrace and Greaves', '1', '');
INSERT INTO `armor_types` (`id`, `name`, `av`, `special`) VALUES ('4', 'Metal Helmet', '1', 'Initiative -1');
INSERT INTO `armor_types` (`id`, `name`, `av`, `special`) VALUES ('5', 'Plate Greaves', '1', 'Movement Rate -0.5');
INSERT INTO `armor_types` (`id`, `name`, `av`, `special`) VALUES ('6', 'Plate Vambrace', '1', 'Movement Rate -0.5');
INSERT INTO `armor_types` (`id`, `name`, `av`, `special`) VALUES ('7', 'Plate Armor', '3', 'Movement Rate -1');
INSERT INTO `armor_types` (`id`, `name`, `av`, `special`) VALUES ('8', 'Robe', '0', '');
INSERT INTO `armor_types` (`id`, `name`, `av`, `special`) VALUES ('9', 'Runic Robe', '0', 'Aura +1');
INSERT INTO `armor_types` (`id`, `name`, `av`, `special`) VALUES ('10', 'Shield, Metal', '1', 'Movement Rate -0.5');
INSERT INTO `armor_types` (`id`, `name`, `av`, `special`) VALUES ('11', 'Shield, Tower', '2', 'Movement Rate -1');
INSERT INTO `armor_types` (`id`, `name`, `av`, `special`) VALUES ('12', 'Shield, Wooden', '1', 'Breaks on defense fumble');

CREATE TABLE `character_armors` (
   `id` int(10) not null auto_increment,
   `character_sheet_id` int(10),
   `armor_type_id` int(10),
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `character_armors` is empty]

CREATE TABLE `character_companions` (
   `id` int(10) not null auto_increment,
   `character_sheet_id` int(10),
   `name` varchar(50),
   `level` int(2),
   `body` int(2),
   `mobility` int(2),
   `mind` int(2),
   `strength` int(2),
   `agility` int(2),
   `intellect` int(2),
   `constitution` int(2),
   `dexterity` int(2),
   `aura` int(2),
   `race_type_id` int(10),
   `hero_type_id` int(10),
   `gold` int(10),
   `gender` int(1),
   `height` varchar(10),
   `weight` varchar(10),
   `special` text,
   `language` text,
   `alphabets` text,
   `character_note_id` int(10),
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `character_companions` is empty]

CREATE TABLE `character_equips` (
   `id` int(10) not null auto_increment,
   `character_sheet_id` int(10),
   `name` varchar(50),
   `mod` int(2),
   `where` varchar(50),
   `special` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `character_equips` is empty]

CREATE TABLE `character_miscs` (
   `id` int(10) not null auto_increment,
   `character_sheet_id` int(10),
   `name` text,
   `description` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `character_miscs` is empty]

CREATE TABLE `character_notes` (
   `id` int(10) not null,
   `character_sheet_id` int(10),
   `Contents` text CHARSET ucs2 not null,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

-- [Table `character_notes` is empty]

CREATE TABLE `character_pps` (
   `id` int(10) not null auto_increment,
   `character_sheet_id` int(10),
   `maxbody` int(2),
   `maxmobility` int(2),
   `maxmind` int(2),
   `maxstrength` int(2),
   `maxagility` int(2),
   `maxintellect` int(2),
   `maxconstitution` int(2),
   `maxdexterity` int(2),
   `maxaura` int(2),
   `modbody` int(2),
   `modmobility` int(2),
   `modmind` int(2),
   `modstrength` int(2),
   `modagility` int(2),
   `modintellect` int(2),
   `modconstitution` int(2),
   `moddexterity` int(2),
   `modaura` int(2),
   `modhp` int(2),
   `modtp` int(2),
   `ppbody` int(2),
   `ppmobility` int(2),
   `ppmind` int(2),
   `ppstrength` int(2),
   `ppagility` int(2),
   `ppintellect` int(2),
   `ppconstitution` int(2),
   `ppdexterity` int(2),
   `ppaura` int(2),
   `pphp` int(2),
   `pptp` int(2),
   `pplanguage` int(2),
   `specialbody` text,
   `specialmobility` text,
   `specialmind` text,
   `specialstrength` text,
   `specialagility` text,
   `specialintellect` text,
   `specialconstitution` text,
   `specialdexterity` text,
   `specialaura` text,
   `specialhp` text,
   `specialtp` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `character_pps` is empty]

CREATE TABLE `character_sheets` (
   `id` int(10) not null auto_increment,
   `name` varchar(50),
   `player` varchar(50),
   `level` int(2),
   `pp` int(3),
   `tp` int(3),
   `xp` int(20),
   `body` int(2),
   `mobility` int(2),
   `mind` int(2),
   `strength` int(2),
   `agility` int(2),
   `intellect` int(2),
   `constitution` int(2),
   `dexterity` int(11),
   `aura` int(2),
   `race_type_id` int(10),
   `hero_type_id` int(10),
   `gold` int(10),
   `gender` int(1),
   `bday` date,
   `bplace` varchar(50),
   `height` varchar(10),
   `weight` varchar(10),
   `hair` varchar(50),
   `eyes` varchar(50),
   `special` text,
   `language` text,
   `alphabets` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=2;

INSERT INTO `character_sheets` (`id`, `name`, `player`, `level`, `pp`, `tp`, `xp`, `body`, `mobility`, `mind`, `strength`, `agility`, `intellect`, `constitution`, `dexterity`, `aura`, `race_type_id`, `hero_type_id`, `gold`, `gender`, `bday`, `bplace`, `height`, `weight`, `hair`, `eyes`, `special`, `language`, `alphabets`) VALUES ('1', 'Aru', 'Bryen', '2', '4', '1', '385', '8', '6', '6', '3', '0', '0', '2', '0', '6', '2', '1', '10000', '1', '', '', '', '', '', '', '', '', '');

CREATE TABLE `character_spells` (
   `id` int(10) not null auto_increment,
   `character_sheet_id` int(10),
   `spell_type_id` int(10),
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `character_spells` is empty]

CREATE TABLE `character_talents` (
   `id` int(10) not null auto_increment,
   `character_sheet_id` int(10),
   `talent_type_id` int(10),
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `character_talents` is empty]

CREATE TABLE `character_weapons` (
   `id` int(10) not null auto_increment,
   `character_sheet_id` int(10),
   `weapon_type_id` int(10),
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `character_weapons` is empty]

CREATE TABLE `hero_types` (
   `id` int(10) not null auto_increment,
   `name` varchar(50),
   `parent` int(10),
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=22;

INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('1', 'Fighter', '0');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('2', 'Mage', '0');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('3', 'Scout', '0');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('4', 'Healer', '2');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('5', 'Sorcerer', '2');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('6', 'Wizard', '2');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('7', 'Archmage', '2');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('8', 'Assassin', '3');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('9', 'Battle Mage', '2');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('10', 'Berserker', '1');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('11', 'Blood Mage', '2');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('12', 'Cleric', '2');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('13', 'Demonologist', '2');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('14', 'Druid', '2');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('15', 'Elementalist', '2');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('16', 'Monk', '1');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('17', 'Necromancer', '2');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('18', 'Paladin', '1');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('19', 'Ranger', '3');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('20', 'Rogue', '3');
INSERT INTO `hero_types` (`id`, `name`, `parent`) VALUES ('21', 'Weapon Master', '1');

CREATE TABLE `race_racial_relations` (
   `id` int(10) not null auto_increment,
   `race_type_id` int(10),
   `racial_type_id` int(10),
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `race_racial_relations` is empty]

CREATE TABLE `race_types` (
   `id` int(10) not null auto_increment,
   `name` varchar(50),
   `description` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=4;

INSERT INTO `race_types` (`id`, `name`, `description`) VALUES ('1', 'Elf', 'Elves, with their pointed ears and slender build, make strong fighters, agile scouts or talented mages.');
INSERT INTO `race_types` (`id`, `name`, `description`) VALUES ('2', 'Human', 'The adaptable Humans produced many different cultures and are equally well suited to become Fighters, Scouts or Mages.');
INSERT INTO `race_types` (`id`, `name`, `description`) VALUES ('3', 'Dwarf', 'The tough, bearded and often grumpy Dwarves prefer the life of a Fighter, but they are also very well suited for other classes.');

CREATE TABLE `racial_types` (
   `id` int(10) not null auto_increment,
   `name` varchar(50),
   `rp` int(1),
   `description` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=28;

INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('1', 'ALLERGIC TO METAL', '-2', 'Representatives of this race are not able to use metal items (including metal weapons and armor) and have Defense -1 against damage from metal weapons.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('2', 'ARROGANT', '-1', 'Representatives of this race appear arrogant and are reluctant to accept help from others; this includes healing spells which they only accept in extreme emergencies.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('3', 'DARKVISION', '1', 'Members of this race have Darkvision as a racial ability.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('4', 'MONOCULAR', '-1', 'Ranged attacks and targeted spells by this race are reduced by 1.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('5', 'FRAGILE', '-1', 'The Defense of this delicate race is reduced by 1.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('6', 'QUICK', '1', 'The Initiative rolls of this race are increased by 2.\nAn alternative racial ability for Elves to Fleet-Footed.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('7', 'GOLD LUST', '-1', 'Every time a member of this race notices something precious, he or she must successfully roll a MND IN 4 check; if this is unsuccessful, the character covets that item.\n');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('8', 'LARGE', '4', 'Hit Points are doubled, but also easier to hit.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('9', 'SMALL', '-4', 'Hit points halved, but also harder to hit. Normal weapons are too big, a shortsword must be used like a two-handed weapon.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('10', 'LONGEVITY', '0', 'Representatives of this race age very slowly once they have reached adulthood.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('11', 'SLOW', '-1', 'This race is slow and therefore its Movement Rate is reduced by 1.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('12', 'FLEET FOOTED', '1', 'Sneaking and similar checks for this race are increased by 1.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('13', 'LIGHT SENSITIVITY', '-1', 'All checks in bright sunlight which involve sight are reduced by 1 for members of this race.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('14', 'MAGIC RESISTANCE', '-1', 'This race is less affected by spells and magic. Any magic effects except elemental damage are halved (e.g. damage, healing, potion effects or spell duration).');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('15', 'MAGICALLY GIFTED', '1', 'embers of this race have the gift of magic - it is incredibly easy for them to understand and cast magic. They gain a  1 bonus to SPC.\nAn alternative racial ability for Elves to Fleet-Footed.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('16', 'MAGICALLY IMPOTENT', '-1', 'Members of this race may never cast magic.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('17', 'NIGHT VISION', '1', 'Representatives of this race have the racial ability Night Vision.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('18', 'FAST', '1', 'Members of this quick and agile race have their Movement Rate increased by 1.\nAn alternative racial ability for Elves to Fleet-Footed.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('19', 'GIFTED', '2', 'Members of this race receive an additional Talent Point during character generation.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('20', 'CLUMSY', '-2', 'Clumsy races are very uncoordinated and awkward in their actions - all checks involving Mobility are reduced by 4.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('21', 'UNKEMPT', '-1', 'Checks involving social interaction by members of this race with other races are reduced by 2.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('22', 'IMMORTAL', '0', 'Upon reaching adulthood, members of this race no longer age like ordinary mortals. They do not die due to old age - they can only die by force or when they have grown weary of life.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('23', 'INCOMPETENT', '-4', 'This race must spend one additional Talent Point for the first rank of any new talent.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('24', 'DESPISED', '-1', 'Members of this race are despised and shunned by other races. These are hesitant to sell goods to the despised race and if they do so, they sell them at significantly higher prices. Equipment and other services cost twice as much as they normally would.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('25', 'TOUGH', '1', 'Members of this race have their Defense increased by 1.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('26', 'MORE THAN MEETS THE EYE', '3', 'Members of a small race with this racial ability can ignore the HP penalty that would normally apply because of their small size.');
INSERT INTO `racial_types` (`id`, `name`, `rp`, `description`) VALUES ('27', 'SURE SHOT', '1', 'Members of this race have RAT and TSC increased by  1.\nAn alternative racial ability for Elves to Fleet-Footed.');

CREATE TABLE `spell_reqs` (
   `id` int(10) not null auto_increment,
   `spell_type_id` int(10),
   `healer` int(2),
   `wizard` int(2),
   `sorcerer` int(2),
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `spell_reqs` is empty]

CREATE TABLE `spell_types` (
   `id` int(10) not null auto_increment,
   `name` varchar(50),
   `description` text,
   `aoe` binary(1),
   `price` varchar(10),
   `spellmodifier` varchar(50),
   `duration` varchar(50),
   `distance` varchar(50),
   `cooldown` varchar(50),
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `spell_types` is empty]

CREATE TABLE `talent_reqs` (
   `id` int(10) not null auto_increment,
   `talent_type_id` int(10),
   `fighter` int(2),
   `scout` int(2),
   `mage` int(2),
   `healer` int(2),
   `sorcerer` int(2),
   `wizard` int(2),
   `archmage` int(2),
   `assassin` int(2),
   `battlemage` int(2),
   `berserker` int(2),
   `bloodmage` int(2),
   `cleric` int(2),
   `demonoligist` int(2),
   `druid` int(2),
   `elementalist` int(2),
   `monk` int(2),
   `necromancer` int(2),
   `paladin` int(2),
   `ranger` int(2),
   `rogue` int(2),
   `weaponmaster` int(2),
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `talent_reqs` is empty]

CREATE TABLE `talent_types` (
   `id` int(10) not null auto_increment,
   `name` varchar(50),
   `rank` int(1),
   `effect` text,
   `description` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `talent_types` is empty]

CREATE TABLE `weapon_types` (
   `id` int(10) not null auto_increment,
   `name` varchar(50) not null,
   `wb` int(2),
   `mat` int(2),
   `rat` int(2),
   `special` text,
   `desciption` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 AUTO_INCREMENT=1;

-- [Table `weapon_types` is empty]