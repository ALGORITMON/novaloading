--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]

-- Профессия Администратора
TEAM_ADMIN = DarkRP.createJob("Администратор", {
    color = Color(100, 100, 100, 255), -- Серый цвет
    model = {
        "models/nada/OrsonKrennic.mdl",
        "models/nada/GarrickVersio.mdl"
    }, -- Модель комбайна
    description = [[Сотрудник администрации сервера. Следит за порядком и помогает игрокам.]],
    weapons = {}, -- Инструмент для проверки принтеров
    command = "administrator", -- Команда: /admin
    max = 0, -- 0 = неограниченное количество
    salary = 1000, -- Зарплата не нужна
    admin = 1, -- 1 = только для админов [citation:3]
    vote = false, -- Голосование не требуется
    hasLicense = true, -- Есть лицензия на оружие
    candemote = false, -- Нельзя уволить с должности
    category = "Администрация", -- Категория в меню (её нужно будет создать)
})

TEAM_CITIZEN = DarkRP.createJob("Гражданин", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl",
    },
    description = [[Гражданин - Самая простая роль в городе.]],
    weapons = {},
    command = "citizen",
    max = 0,
    salary = 65,  -- ← ПОВЫШЕННАЯ ЗАРПЛАТА (пример)
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Граждане",
})

TEAM_POLICE = DarkRP.createJob("Гражданская защита", {
    color = Color(25, 25, 170, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl",

        "models/player/police.mdl",
        "models/player/police_fem.mdl"
    },
    description = [[Защитник каждого гражданина города.
        Вы имеете право арестовывать преступников и защищать невинных.
        Ударьте игрока дубинкой для ареста, чтобы посадить его в тюрьму.
        Ударьте игрока электрошокером, и они, возможно, научатся соблюдать закон.
        Таран может выбить дверь преступника при наличии ордера на арест.
        Таран также может разморозить замороженные объекты (если включено).
        Напишите /wanted <имя>, чтобы оповестить общественность о присутствии преступника.]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker"},
    command = "cp",
    max = 4,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = true,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Гражданская защита",
})

TEAM_GANG = DarkRP.createJob("Гангстер", {
    color = Color(75, 75, 75, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl",

        "models/player/Group03/Female_01.mdl",
        "models/player/Group03/Female_02.mdl",
        "models/player/Group03/Female_03.mdl",
        "models/player/Group03/Female_04.mdl",
        "models/player/Group03/Female_06.mdl",
        "models/player/group03/male_01.mdl",
        "models/player/Group03/Male_02.mdl",
        "models/player/Group03/male_03.mdl",
        "models/player/Group03/Male_04.mdl",
        "models/player/Group03/Male_05.mdl",
        "models/player/Group03/Male_06.mdl",
        "models/player/Group03/Male_07.mdl",
        "models/player/Group03/Male_08.mdl",
        "models/player/Group03/Male_09.mdl"},
    description = [[Низшее звено преступного мира.
        Гангстер обычно работает на Мафиози, который управляет преступной семьёй.
        Мафиози определяет ваши задачи, и вы должны следовать им, иначе будете наказаны.]],
    weapons = {},
    command = "gangster",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Гангстеры",
})

TEAM_MOB = DarkRP.createJob("Мафиози", {
    color = Color(25, 25, 25, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl",

        "models/player/gman_high.mdl",},
    description = [[Мафиози — глава преступников в городе.
        Благодаря своей власти они координируют гангстеров и создают эффективную преступную организацию.
        У них есть возможность взламывать дома с помощью отмычки.
        Мафиози обладает способностью освобождать из тюрьмы.]],
    weapons = {"lockpick", "unarrest_stick"},
    command = "mobboss",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.34,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Гангстеры",
})

TEAM_GUN = DarkRP.createJob("Торговец оружием", {
    color = Color(255, 140, 0, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl",

        "models/player/monk.mdl",},
    description = [[Торговец оружием — единственный человек, который может продавать оружие другим.
        Убедитесь, что вас не поймают на продаже нелегального огнестрельного оружия населению! Вас могут арестовать.]],
    weapons = {},
    command = "gundealer",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Граждане",
})

TEAM_MEDIC = DarkRP.createJob("Медик", {
    color = Color(47, 79, 79, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl",

        "models/player/kleiner.mdl",},
    description = [[Благодаря своим медицинским знаниям вы восстанавливаете здоровье игроков.
        Без медика людей нельзя вылечить.
        Левый клик аптечкой лечит других игроков.
        Правый клик аптечкой лечит вас самих.]],
    weapons = {"med_kit"},
    command = "medic",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Граждане",
})

TEAM_CHIEF = DarkRP.createJob("Начальник гражданской защиты", {
    color = Color(20, 20, 255, 255),
    model = "models/player/combine_soldier_prisonguard.mdl",
    description = [[Начальник — лидер отряда гражданской защиты.
        Координируйте полицейские силы для обеспечения правопорядка в городе.
        Ударьте игрока дубинкой для ареста, чтобы посадить его в тюрьму.
        Ударьте игрока электрошокером, и они, возможно, научатся соблюдать закон.
        Таран может выбить дверь преступника при наличии ордера на арест.
        Напишите /wanted <имя>, чтобы оповестить общественность о присутствии преступника.
        Напишите /jailpos, чтобы установить точку тюрьмы.]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_deagle2", "stunstick", "door_ram", "weaponchecker"},
    command = "chief",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.67,
    admin = 0,
    vote = false,
    hasLicense = true,
    chief = true,
    NeedToChangeFrom = TEAM_POLICE,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Гражданская защита",
})

TEAM_MAYOR = DarkRP.createJob("Мэр", {
    color = Color(150, 20, 20, 255),
    model = "models/player/breen.mdl",
    description = [[Мэр города создаёт законы для управления городом.
        Если вы мэр, вы можете создавать и принимать ордера.
        Напишите /wanted <имя>, чтобы объявить игрока в розыск.
        Напишите /jailpos, чтобы установить точку тюрьмы.
        Напишите /lockdown, чтобы начать изоляцию города.
        Во время изоляции все должны находиться внутри помещений.
        Полиция патрулирует территорию.
        /unlockdown — завершить изоляцию.]],
    weapons = {},
    command = "mayor",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.89,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = true,
    category = "Гражданская защита",
})

TEAM_HOBO = DarkRP.createJob("Б.О.М.Ж.", {
    color = Color(80, 45, 0, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl",

        "models/player/corpse1.mdl",},
    description = [[Низший член общества. Все смеются над вами.
        У вас нет дома.
        Просите еду и деньги.
        Пойте для прохожих, чтобы получить деньги.
        Постройте себе деревянный дом где-нибудь в углу или за чужой дверью.]],
    weapons = {"weapon_bugbait"},
    command = "hobo",
    max = 5,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    hobo = true,
    category = "Граждане",
})

-- НОВОЕ ------------------------------------------------------------------------------------------

TEAM_BITMINER = DarkRP.createJob("Битмайнер", {
    color = Color(20, 150, 255, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl",
    },
    description = [[Битмайнер - Человек, который предоставляет вычислительные мощности своего оборудования для верификации транзакций и добавления новых блоков в блокчейн Биткоина, получая за это вознаграждение в виде новых монет.]],
    weapons = {},
    command = "bitminer",
    max = 8,
    salary = 125,  -- ← ПОВЫШЕННАЯ ЗАРПЛАТА (пример)
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Граждане",
})


if not DarkRP.disabledDefaults["modules"]["hungermod"] then
    TEAM_COOK = DarkRP.createJob("Повар", {
        color = Color(238, 99, 99, 255),
        model = {
            "models/player/Group01/Female_01.mdl",
            "models/player/Group01/Female_02.mdl",
            "models/player/Group01/Female_03.mdl",
            "models/player/Group01/Female_04.mdl",
            "models/player/Group01/Female_06.mdl",
            "models/player/group01/male_01.mdl",
            "models/player/Group01/Male_02.mdl",
            "models/player/Group01/male_03.mdl",
            "models/player/Group01/Male_04.mdl",
            "models/player/Group01/Male_05.mdl",
            "models/player/Group01/Male_06.mdl",
            "models/player/Group01/Male_07.mdl",
            "models/player/Group01/Male_08.mdl",
            "models/player/Group01/Male_09.mdl",

        "models/player/mossman.mdl",},
        description = [[Как повар, вы отвечаете за питание других членов города.
            Вы можете установить микроволновку и продавать приготовленную еду:
            /buymicrowave]],
        weapons = {},
        command = "cook",
        max = 2,
        salary = 45,
        admin = 0,
        vote = false,
        hasLicense = false,
        cook = true
    })
end



-- Группы дверей
AddDoorGroup("Только полиция и мэр", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)
AddDoorGroup("Только торговец оружием", TEAM_GUN)
AddDoorGroup("Сотрудники NOVA POST", TEAM_CITIZEN)

-- Агенды (задания для группировок)
DarkRP.createAgenda("Задания гангстеров", TEAM_MOB, {TEAM_GANG})
DarkRP.createAgenda("Задания полиции", {TEAM_MAYOR, TEAM_CHIEF}, {TEAM_POLICE})

-- Групповые чаты
DarkRP.createGroupChat(function(ply) return ply:isCP() end)
DarkRP.createGroupChat(TEAM_MOB, TEAM_GANG)
DarkRP.createGroupChat(function(listener, ply) return not ply or ply:Team() == listener:Team() end)

-- Группы для понижения в должности (demote)
DarkRP.createDemoteGroup("Полиция", {TEAM_POLICE, TEAM_CHIEF})
DarkRP.createDemoteGroup("Гангстеры", {TEAM_GANG, TEAM_MOB})

-- Категория для администрации
DarkRP.createCategory{
    name = "Администрация",
    categorises = "jobs",
    startExpanded = true,
    color = Color(200, 200, 200, 255),
    sortOrder = 1, -- Будет в самом верху списка
}

-- Категории в меню F4 (уже переведены)
DarkRP.createCategory{
    name = "Граждане",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Гражданская защита",
    categorises = "jobs",
    startExpanded = true,
    color = Color(25, 25, 170, 255),
    sortOrder = 101,
}

DarkRP.createCategory{
    name = "Гангстеры",
    categorises = "jobs",
    startExpanded = true,
    color = Color(75, 75, 75, 255),
    sortOrder = 101,
}

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)


