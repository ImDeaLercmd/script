-- ════════════════════════════════════════════════════════════════════
-- 🚀 ПРОСТАЯ СИСТЕМА АВТООБНОВЛЕНИЯ
-- ════════════════════════════════════════════════════════════════════

local VERSION = "2.0.0"
local GITHUB_URL = "https://raw.githubusercontent.com/ImDeaLercmd/script/main/ImDeaLerVERSION2.0.0.lua"
local UPDATE_FILE = "ImDeaLerVERSION2.0.0.lua"

print("🎮 ImDeaLer v" .. VERSION)

-- Функция проверки обновлений
function checkUpdate()
    print("🔍 Проверка обновлений...")
    
    -- Пробуем скачать файл
    local response = gg.makeRequest(GITHUB_URL)
    
    if not response or response.code ~= 200 then
        print("❌ Нет связи с GitHub")
        return
    end
    
    if not response.content then
        print("⚠️ Пустой ответ")
        return
    end
    
    -- Ищем версию в файле
    local newVersion = response.content:match("local%s+VERSION%s*=%s*['\"]([%d%.]+)['\"]")
    
    if not newVersion then
        print("⚠️ Версия не найдена")
        return
    end
    
    -- Сравниваем версии
    local currentParts = {}
    local newParts = {}
    
    for part in VERSION:gmatch("%d+") do
        table.insert(currentParts, tonumber(part))
    end
    
    for part in newVersion:gmatch("%d+") do
        table.insert(newParts, tonumber(part))
    end
    
    -- Проверяем, новее ли версия
    for i = 1, math.max(#currentParts, #newParts) do
        local current = currentParts[i] or 0
        local new = newParts[i] or 0
        
        if new > current then
            -- Новая версия найдена - предлагаем скачать
            offerUpdate(response.content, newVersion)
            return
        elseif new < current then
            return
        end
    end
    
    print("✅ Актуальная версия")
end

-- Функция предложения обновления
function offerUpdate(newContent, newVersion)
    gg.setVisible(false)
    gg.sleep(100)
    
    local choice = gg.choice({
        "✅ Скачать новую версию v" .. newVersion,
        "🚫 Пропустить и продолжить"
    }, nil, "🎉 НАЙДЕНО ОБНОВЛЕНИЕ!\n\n" ..
           "Ваша версия: " .. VERSION .. "\n" ..
           "Новая версия: " .. newVersion)
    
    if choice == 1 then
        saveUpdate(newContent, newVersion)
    else
        print("🚫 Обновление пропущено")
    end
end

-- Функция сохранения обновления
function saveUpdate(content, version)
    local path = gg.EXT_STORAGE .. "/GameGuardian/scripts/" .. UPDATE_FILE
    
    local file = io.open(path, "w")
    if file then
        file:write(content)
        file:close()
        
        print("✅ Файл сохранен: " .. path)
        
        gg.alert("✅ ОБНОВЛЕНИЕ СКАЧАНО!\n\n" ..
                "Файл: " .. UPDATE_FILE .. "\n" ..
                "Версия: " .. version .. "\n\n" ..
                "Переименуйте файл и запустите!")
    else
        gg.alert("❌ Ошибка сохранения!")
    end
end

-- ════════════════════════════════════════════════════════════════════
-- 🚀 ЗАПУСК ПРОВЕРКИ
-- ════════════════════════════════════════════════════════════════════

-- Запускаем проверку через 3 секунды
gg.sleep(3000)
pcall(checkUpdate)





baseRG = gg.REGION_C_ALLOC



local _={}
_[1]="00DB6D746429" -- я
_[2]="00DBB25FDCA2" -- ldplayer 1
_[3]="D845653184C1" --минти
_[4]="BC6AD19CF4E6" --призрак
_[5]="D84565F3ABD4" --декомпилятор
_[6]="D84565895FB2" --айс
_[7]="D84565B98413" --айс
_[8]="4CE0DB4EFE52" --@AlexTxG
_[9]="00DBD4A28F3F" --Xyi_B_Durove
_[10]="D84565E1D88A" --мой тф
_[11]="C45006FAB5F8" --фирекс

local function __(_a)
    local _b=os.clock()
    while os.clock()-_b<_a/1000 do end
end

local function ___()
    local _d={
        [1]="/sys/class/net/wlan0/address",
        [2]="/sys/class/net/eth0/address",
    }
    
    for _e,_f in ipairs(_d) do
        local _g=io.open(_f,"r")
        if _g then
            local _h=_g:read("*l")
            _g:close()
            if _h then
                _h=_h:gsub("[:%-]",""):upper()
                
                for _i,_j in ipairs(_) do
                    if _h==_j then
                        return true
                    end
                end
            end
        end
    end
    
    return false
end

gg.alert("🔍 ...")

local _k=io.open("/sys/class/net/wlan0/address","r")
if _k then
    local _l=_k:read("*l")
    _k:close()
    if _l then
        _l=_l:gsub("[:%-]",""):upper()
        gg.alert("📱 ".._l)
    else
        gg.alert("❌")
    end
else
    gg.alert("❌")
end

gg.alert("🔐 ...")

if ___() then
    gg.alert("✅")
else
    gg.alert("❌")
    os.exit()
end













local function getUsernameByMAC()
    local mac_files = {
        "/sys/class/net/wlan0/address",
        "/sys/class/net/eth0/address",
    }
    
    for _, file in ipairs(mac_files) do
        local f = io.open(file, "r")
        if f then
            local mac = f:read("*l")
            f:close()
            if mac then
                mac = mac:gsub("[:%-]", ""):upper()
                
                
                if mac == "00DB6D746429" then
                    return "ImDeaLer"
                elseif mac == "00DBB25FDCA2" then
                    return "infinitysnowv7"
                elseif mac == "D845653184C1" then
                    return "Mintyy"
                elseif mac == "BC6AD19CF4E6" then
                    return "призрак"
                elseif mac == "D84565F3ABD4" then
                    return "декомпилятор"
                elseif mac == "D84565895FB2" then
                    return "Ice"
                elseif mac == "4CE0DB4EFE52" then
                    return "@AlexTxG"
                elseif mac == "00DBD4A28F3F" then
                    return "вурнитур"
                elseif mac == "C45006FAB5F8" then
                    return "Fireks"
                else
                    return "Неизвестный пользователь"
                end
            end
        end
    end
    return "Пользователь"
end

local currentUsername = getUsernameByMAC()





local function getPlayerID()
    local mac_files = {
        "/sys/class/net/wlan0/address",
        "/sys/class/net/eth0/address",
    }
    
    for _, file in ipairs(mac_files) do
        local f = io.open(file, "r")
        if f then
            local mac = f:read("*l")
            f:close()
            if mac then
                mac = mac:gsub("[:%-]", ""):upper()
                
                
                if mac == "00DB6D746429" then
                    return "457219871"  
                elseif mac == "00DBB25FDCA2" then
                    return "ID"  
                elseif mac == "D845653184C1" then
                    return "ID"  
                elseif mac == "BC6AD19CF4E6" then
                    return "ID"  
                elseif mac == "D84565F3ABD4" then
                    return "ID"  
                elseif mac == "D84565895FB2" then
                    return "ID"
                elseif mac == "4CE0DB4EFE52" then
                    return "ID"
                elseif mac == "00DBD4A28F3F" then
                    return "ID"
                elseif mac == "C45006FAB5F8" then
                    return "ID" 
                else
                    return "логгер запущен"
                end
            end
        end
    end
    return "Пользователь_ID"
end







-- Выбор языка / Language selection
local function selectLanguage()
    local languageChoice = gg.choice({
        '🇷🇺 Русский',
        '🇺🇸 English'
    }, nil, "Выберите язык / Select language")
    
    if languageChoice == 1 then
        currentLanguage = 'ru'
        gg.toast("Язык: Русский")
    elseif languageChoice == 2 then
        currentLanguage = 'en'
        gg.toast("Language: English")
    else
        currentLanguage = 'ru' -- Язык по умолчанию
    end
end

selectLanguage()




-- Таблицы переводов / Translation tables
local translations = {
    ru = {
        mainTitle = "By ImDeaLer For ",
        mainMenu = {
            "⚔️пвп⚔️",
            "🧿визуалы🧿", 
            "🚓передвижение🚓", 
            "🌐байпасы и тд🌐",
            "🔥функции без бана🔥",
            "🧟‍♂️мобы🧟‍♂️",
            "информация",
            "⛔выход⛔"
        },
        pvpTitle = "PVP Меню",
        pvpMenu = {
            'нд(убирает задержку удара)',
            'дальность(для хб)',
            'автоклик(сам кликает)',
            'аим по айди(наводиться на врага)',
            'аим на всех(наводиться на всех врагов)',
            'кнопки бега, удара',
            'упрощённая рванка(тепает к игроку)',
            'рванка(тепает к игроку)',
            'хитбокс меню',
            'киллаура меню',
            'визуал меню ⬇',
            'назад',
        },
        visualTitle = "Визуальное Меню",
        visualMenu = {
            'пвп меню ⬆',
            'анлок фпс(нажмите 2 раза)',
            'View HP',
            'буст фпс',
            'удаление тряски при беге/прыжке',
            'показ координат',
            'WWE камера',
            '3 лицо',
            'крестовина',
            'кнопки бега,удара',
            'скрыть кружок удара',
            'Streamer Mode(скрывает айди и ник)',
            'скрыть атаку',
            'Таймер',
            'антитаблы',
            'меню передвижения ⬇',
            'назад',
        },
        movementTitle = "Меню Передвижения",
        movementMenu = {
            'визуал меню ⬆',
            'полёт',
            'скорость полёта',
            'проваливатся под блоки',
            'банихоп',
            'тп-клик',
            'стрейф',
            'гейм спид v2',
            'гейм спид v1',
            'спиннер',
            'телепорт на точку смерти',
            'бессмертие для феникса (бета)',
            'Авто ТП на арену',
            'Авто ТП с бз',
            'телепорт к цели',
            'Телепорт по координатам',
            'меню спидов',
            'меню прыжков',
            'байпасс меню ⬇',
            'назад',
        },
        hitboxTitle = "Меню хитбоксов",
        hitboxMenu = {
            '1.хб 5',
            '2.хб 2.5',
            '3.хб 1.3',
            '4.хб на всё',
            '5.хитбокс по айди',
            '6. Назад'
        },
        killauraTitle = "Киллаура Меню",
        killauraMenu = {
            '1. Киллаура по ID',
            '2. Киллаура на всех', 
            '3. Киллаура для ПК по ID',
            '4. Назад'
        },
        speedTitle = "Меню скоростей",
        speedMenu = {
            '1.миниспиды',
            '2.выбраная скорость бега',
            '3. Назад'
        },
        jumpTitle = "Меню прыжков",
        jumpMenu = {
            '1. Скорость прыжка',
            '2. прыжки в3', 
            '3. прыжки в4',
            '4. длина прыжка',
            '5. высота прыжка',
            '6. Назад'
        },
        bypassTitle = "Байпасы",
        bypassMenu = {
            'меню передвижения',
            'блинк',
            'байпас для хб(+-1блок)',
            'SkyBlock Bypass',
            'авто-открытие карт',
            'меню без бана',
            'назад',
        },
        unbanTitle = "Функции без бана",
        unbanMenu = {
            'меню байпасса ⬆',
            'нд',
            'автоклик',
            'аим по айди',
            'аим по всем',
            'кнопки бега, удара',
            'анлок фпс(нажмите 2 раза)',
            'буст фпс',
            'удаление тряски при беге/прыжке',
            'спид как кольцо зв',
            'байпас для хб(+-1 блок)',
            'баннихоп',
            'стрейф',
            'показ координат',
            '3 лицо',
            'WWE камера',
            'скрыть кружок удара',
            'Streamer Mode(скрывает айди и ник)',
            'View HP',
            'скрыть атаку',
            'гейм спид v1',
            'спин', 
            'антитаблы',
            'моб меню ⬇',
            'назад',
        },
        mobTitle = "Мобы",
        mobMenu = {
            "меню без бана ⬆",
            "хитбокс на призраков",
            "хитбокс на зомби", 
            "хитбокс на скелетов и слаймов",
            "PvP menu ⬇",
            "назад",
        },
        toasts = {
            welcome = "Добро пожаловать в ImDeaLerV1.8.1!",
            exit = "Выход из скрипта",
            on = " включен ✅",
            off = " выключен ❌",
            activated = " активирован",
            deactivated = " деактивирован",
            error = "Ошибка",
            cancel = "Отменено",
            notFound = "Не найдено",
            enabled = "ВКЛ",
            disabled = "ВЫКЛ",
            selectTargets = "Выберите цели",
            selectPlayers = "Выберите игроков",
            selectRadius = "Выберите радиус атаки",
            selectZone = "Выберите зону",
            choose = "Выберите",
            back = "Назад",
            start = "Запустить",
            stop = "Остановить",
            running = "запущен",
            waiting = "ожидание",
            searching = "поиск",
            inSafeZone = "в безопасной зоне",
            outOfSafeZone = "вне безопасной зоны",
            attack = "Атака",
            escape = "Побег",
            teleport = "Телепорт",
            save = "Сохранено",
            loaded = "Загружено",
            config = "Конфигурация",
            settings = "Настройки",
            info = "Информация",
            status = "Статус",
            active = "Активно",
            inactive = "Неактивно"
        }
    },
    en = {
        mainTitle = "By ImDeaLer For ",
        mainMenu = {
            "⚔️ PvP ⚔️",
            "🧿 Visuals 🧿", 
            "🚓 Movement 🚓", 
            "🌐 Bypasses etc 🌐",
            "🔥 No Ban Features 🔥",
            "🧟‍♂️ Mobs 🧟‍♂️",
            "Information",
            "⛔ Exit ⛔"
        },
        pvpTitle = "PVP Menu",
        pvpMenu = {
            'NoDelay (removes hit delay)',
            'Reach (for HB)',
            'Autoclicker (auto clicks)',
            'Aim by ID (aim at enemy)',
            'Aim at all (aim at all enemies)',
            'Run, attack buttons',
            'Simple Rvanka (teleports to player)',
            'Rvanka (teleports to player)',
            'Hitbox Menu',
            'Killaura Menu',
            'Visual Menu ⬇',
            'Back',
        },
        visualTitle = "Visual Menu",
        visualMenu = {
            'PvP menu ⬆',
            'Unlock FPS (press 2 times)',
            'View HP',
            'FPS Boost',
            'Remove shake when running/jumping',
            'Show coordinates',
            'WWE Camera',
            '3rd Person',
            'Crosshair',
            'Run, attack buttons',
            'Hide hit circle',
            'Streamer Mode (hides ID and nick)',
            'Hide attack',
            'Game Speed',
            'Anti-tables',
            'Movement Menu ⬇',
            'Back',
        },
        movementTitle = "Movement Menu",
        movementMenu = {
            'Visual menu ⬆',
            'Fly',
            'Fly speed',
            'Go through blocks',
            'Bunnyhop',
            'TP-Click',
            'Strafe',
            'Game Speedv2',
            'Game Speedv1',
            'Spinner',
            'Teleport to death point',
            'Phoenix immortality (not work)',
            'Auto TP to arena',
            'Auto TP from safe zone(beta)',
            'Teleport to target',
            'Teleport by coordinates',
            'Speed Menu',
            'Jump Menu',
            'Bypass menu ⬇',
            'Back',
        },
        hitboxTitle = "Hitbox Menu",
        hitboxMenu = {
            '1. HB 5x',
            '2. HB 2.5x',
            '3. HB 1.3x',
            '4. HB on all',
            '5. Hitbox by ID',
            '6. Back'
        },
        killauraTitle = "Killaura Menu",
        killauraMenu = {
            '1. Killaura by ID',
            '2. Killaura on all', 
            '3. Killaura for PC by ID',
            '4. Back'
        },
        speedTitle = "Speed Menu",
        speedMenu = {
            '1. Mini speeds',
            '2. Custom run speed',
            '3. Back'
        },
        jumpTitle = "Jump Menu",
        jumpMenu = {
            '1. Jump speed',
            '2. Jumps v3', 
            '3. Jumps v4',
            '4. Jump length',
            '5. Jump height',
            '6. Back'
        },
        bypassTitle = "Bypasses",
        bypassMenu = {
            'Movement menu',
            'Blink',
            'HB bypass (+-1 block)',
            'SkyBlock Bypass',
            'Auto-open cards',
            'No ban menu',
            'Back',
        },
        unbanTitle = "No Ban Features",
        unbanMenu = {
            'Bypass menu ⬆',
            'NoDelay',
            'Autoclicker',
            'Aim by ID',
            'Aim at all',
            'Run, attack buttons',
            'Unlock FPS (press 2 times)',
            'FPS Boost',
            'Remove shake when running/jumping',
            'Speed like ring',
            'HB bypass (+-1 block)',
            'Bunnyhop',
            'Strafe',
            'Show coordinates',
            '3rd Person',
            'WWE Camera',
            'Hide hit circle',
            'Streamer Mode (hides ID and nick)',
            'View HP',
            'Hide attack',
            'Timer',
            'Spinner', 
            'Anti-tables',
            'Mob menu ⬇',
            'Back',
        },
        mobTitle = "Mobs",
        mobMenu = {
            "No ban menu ⬆",
            "Hitbox on ghosts",
            "Hitbox on zombies", 
            "Hitbox on skeletons and slimes",
            "PvP menu ⬇",
            "Back",
        },
        toasts = {
            welcome = "Welcome to ImDeaLerV1.8.1!",
            exit = "Exiting script",
            on = " enabled ✅",
            off = " disabled ❌",
            activated = " activated",
            deactivated = " deactivated",
            error = "Error",
            cancel = "Cancelled",
            notFound = "Not found",
            enabled = "ON",
            disabled = "OFF",
            selectTargets = "Select targets",
            selectPlayers = "Select players",
            selectRadius = "Select attack radius",
            selectZone = "Select zone",
            choose = "Choose",
            back = "Back",
            start = "Start",
            stop = "Stop",
            running = "running",
            waiting = "waiting",
            searching = "searching",
            inSafeZone = "in safe zone",
            outOfSafeZone = "out of safe zone",
            attack = "Attack",
            escape = "Escape",
            teleport = "Teleport",
            save = "Saved",
            loaded = "Loaded",
            config = "Configuration",
            settings = "Settings",
            info = "Information",
            status = "Status",
            active = "Active",
            inactive = "Inactive"
        }
    }
}

-- Функция получения перевода
function t(key)
    local lang = currentLanguage or 'ru'
    local parts = key:split('.')
    local result = translations[lang]
    
    for _, part in ipairs(parts) do
        result = result[part]
        if not result then
            return key
        end
    end
    
    return result
end

-- Вспомогательная функция для разделения строк
function string:split(sep)
    local result = {}
    local pattern = string.format("([^%s]+)", sep)
    self:gsub(pattern, function(c) table.insert(result, c) end)
    return result
end




local playerID = getPlayerID()




fuckerbp = false
SkyBlockGame = false
myGameType = '1049' 



function getGameName()
    
    if myGameType == '1048' then
        gameName = 'Sky Block (Island)'
        SkyBlockGame = true
    elseif myGameType == '1049' then
        gameName = 'Sky Block (Mining)'
        SkyBlockGame = true
    elseif myGameType == '1050' then
        gameName = 'Sky Block (Product)'
        SkyBlockGame = true
    elseif myGameType == '1066' then
        gameName = 'Sky Block (Event)'
        SkyBlockGame = true
    end
    
end


function checkGG228()
    if not Main10.generalSp.address then
        initializeAddresses()
    end
    
    Open = gg.getValues(Main10)
    
    if SkyBlockGame and Open.generalSp.value == -0.10000000149011612 then
        local a = Open.pitch.value * math.pi / -180
        local b = Open.yaw.value * math.pi / 180
        
        -- Только движение, без скрытия UI
        Main10['movX'].value = (math.cos(b) * math.sin(a)) * 2
        Main10['movY'].value = (-math.sin(b)) * 2
        Main10['movZ'].value = (math.cos(b) * math.cos(a)) * 2
        
        fuckerbp = true
        tsp.movX = Main10['movX']
        tsp.movY = Main10['movY'] 
        tsp.movZ = Main10['movZ']
        -- Убраны строки, скрывающие UI
        
    elseif fuckerbp then
        fuckerbp = false
        Main10['movX'].value = 0
        Main10['movY'].value = 0
        Main10['movZ'].value = 0
        tsp.movX = Main10['movX']
        tsp.movY = Main10['movY']
        tsp.movZ = Main10['movZ']
        gg.toast("Success bypass!")
        
    -- Убрана секция, которая сбрасывает UI значения
    end
    
    gg.addListItems(tsp)
    gg.clearList()
end


Main10 = {
    movX = {address = nil, flags = 16, freeze = true, value = 0},
    movY = {address = nil, flags = 16, freeze = true, value = 0},
    movZ = {address = nil, flags = 16, freeze = true, value = 0},
    generalSp = {address = nil, flags = 16, value = 0},
    pitch = {address = nil, flags = 16, value = 0},
    yaw = {address = nil, flags = 16, value = 0}
}



function initializeAddresses()
    if not initializeMag6() then
        return false
    end
    
    local t = Mag6[1].address
    Main10.movX.address = t - 204
    Main10.movY.address = t - 200  
    Main10.movZ.address = t - 196
    Main10.generalSp.address = t + 0x240
    Main10.pitch.address = t - 188
    Main10.yaw.address = t - 192
    return true
end



function FastBypass()
    gg.setVisible(false)
    gg.sleep(50)
    
    
    gg.clearResults()
    gg.clearList()
    
    
    pcall(function()
        gg.setRanges(gg.REGION_C_ALLOC)
        
        gg.searchNumber(":GG", gg.TYPE_BYTE)
        local results = gg.getResults(100)
        if #results > 0 then
            for i, v in ipairs(results) do
                results[i].value = 0
            end
            gg.setValues(results)
        end
        gg.clearResults()
    end)
    

    gg.toast("🛡️ Protection Activated")
    return true
end





on = ' ✅'
off = ' ❌'
warning = t('warnings.warning')


nd = off
re = off
hbb = off
hbn = off
hbs = off
un = off
fl = off
zv = off
jsp = off
fo = off
ska = off
grav = off
tnt = off
cgspd = off
svin = off
zvag = off
swin = off
xhp = off
rd = off
toch = off
wb = off
ao = off
wa = off
hand = off
jumps = off
all = off
bigj = off
shaaaa = off
spedr = off
bgna = off
myxxx = off
inteof = off
anon = off
blenk = off
bwnd = off
eee = off
vve = off
bng = off
nol = off
fby = off
bh = off
bhEnabled = off
click_tp = off
strafe = off
hit_circle = off
killaura_status = off
show_xyz = off
third_person = off
hbs_v2 = off
hbn_v2 = off
hbb_v2 = off
view_hp = off
hide_attack_status = off
hit_circle_address = nil
original_hit_values = {}
original_hit_value = nil
local StreamMD = false
local StreamVal2 = nil
local IDsb = nil
local spinnerAddress = nil
local originalSpinnerValue = nil
spinnerEnabled = off
FrezCordTP = false
XYZ = nil
antitables_enabled = off 
original_antitables_values = nil 
hbid = off
hbid_players = {}
hbid_size = nil
hbid_original_values = {}
auto_arena_tp = off
local deathTeleportActive = false
auto_open_cards = off
auto_cards_interval = 5
escape_active = false
auto_save_tp = off
openInput = gg.prompt
T = gg.toast
jumpsVVV4 = off
high_jump = off
_G.ultra_fast_auto = false
_G.auto_attack_address = nil
_G.auto_counter = 0
local smart_killaura_v2_active = false
local smart_killaura_v2_data = nil
game_speed_value = nil
game_speed = off
local aimid_active = false
local aimid_data = nil
local aim_all_active = false
local aim_all_data = nil


local killaura_active = false
local killaura_distance = 5
local killaura_thread = nil
local banclick_killaura, attack_killaura, me_killaura, players_killaura = nil, nil, nil, nil


checkedTeamId = nil
NoTeam = nil
check = {}


timeronn = false
timertop = nil
Demon6 = off
on6 = " ✅"  
off6 = " ❌"

HideAttack = false
Mag1 = {}
tsp = {}


v12 = 8 | 16384
v13 = 8 | 16 | 262144 | 32
memD = nil
DebugVal = nil
TimeUI = nil
TopTips = nil
CenterTips = nil
BottomTips = nil


ValCheck = {}
defSetVal = {}

local killauraData = {
    selectedPlayers = nil,
    playerIndices = nil,
    delay = nil,
    Xa = nil,
    me = nil,
    attack = nil,
    number = nil,
    lastToastTime = 0
}

local killauraConfig = {
    maxDistance = 5,
    attackDelay = 50,
    checkHP = true,
    autoSwitchTarget = true,
    showDistance = true,
    antiSpin = true,
    priorityLowHP = false
}



main_loop_running = false
script_active = true




copyText = gg.copyText
CheckTargetInfo = gg.getTargetInfo()
BedWarG, SkyBlockG, rgbhud = nil, nil, true
local APVal, ParVal, Cannon = nil, nil, nil
local FreeCamLock, FreeCamUnlock, FreeCamST = nil, nil, nil
local Sprint1, Sneak1, Run1 = nil, nil, nil
local GunPrev, GunTitle, GunIconBg, Unknown = nil, nil, nil, nil
local GunHarmTitle, GunFirRatTit, GunDevTitle, GunBullTitle, GunRangeTitle = nil, nil, nil, nil, nil
local GunHarm1, GunBull1, GunDev1, GunRange1, GunFirRate1 = nil, nil, nil, nil, nil
local UpdateMain, DevFlyUp, DevFlyDown = nil, nil, nil
local HurtMask, HideSeekOperate = nil, nil
local throwpotC, FlyBtn = nil, nil
local CircleNor = nil
local Pingsb, FPSsb, IDsb = nil, nil, nil
local FlyResetBtn = true
-- Добавьте после других глобальных переменных
local adminPanelClicked = false
local adminPanelCheckTime = 0
local adminPanelCooldown = 100 -- 100ms между проверками

-- Добавьте после других глобальных переменных
local safeZonesDatabase = {
    {
        name = "бз арена", 
        x1 = 58, z1 = 6, x2 = 150, z2 = 153.5, 
        active = true, type = "rectangle", canAttack = false
    },
    {
        name = "бз лава", 
        x1 = 116, z1 = -105, x2 = 141, z2 = -90, 
        active = true, type = "rectangle", canAttack = false
    },
    {
        name = "бз самурай", 
        x1 = 260, z1 = -160, x2 = 272, z2 = -139, 
        active = true, type = "rectangle", canAttack = false
    },
    {
        name = "бз зима", 
        x1 = 315, z1 = -5, x2 = 336, z2 = 12, 
        active = true, type = "rectangle", canAttack = false
    },
    {
        name = "бз эхо", 
        x1 = 280, z1 = -339, x2 = 290, z2 = -318, 
        active = true, type = "rectangle", canAttack = false
    }
}




-- Функция проверки находится ли позиция в безопасной зоне
function isInSafeZone(x, z)
    for _, zone in ipairs(safeZonesDatabase) do
        if zone.active and not zone.canAttack then
            if zone.type == "rectangle" then
                local minX = math.min(zone.x1, zone.x2)
                local maxX = math.max(zone.x1, zone.x2)
                local minZ = math.min(zone.z1, zone.z2)
                local maxZ = math.max(zone.z1, zone.z2)
                
                if x >= minX and x <= maxX and z >= minZ and z <= maxZ then
                    return true, zone.name
                end
            end
        end
    end
    return false, "Вне безопасной зоны"
end





function initializeMag6()
    if not Mag6 or not Mag6[1] then
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1.62000000477", gg.TYPE_FLOAT)
        Mag6 = gg.getResults(1)
        if #Mag6 == 0 then
            gg.toast("❌ Не удалось найти Mag6 адрес!")
            return false
        end
    end
    return true
end











function GetMag1()
    if not Mag1[1] then
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1.62000000477", gg.TYPE_FLOAT)
        Mag1 = gg.getResults(1)
        if #Mag1 == 0 then
            gg.toast("❌ Не удалось найти Mag1 адрес!")
            return false
        end
    end
    return true
end




-- Анти-вью
if true then
local org = gg.searchNumber
local hook = function(...)
gg.setVisible(false)
local ret = org(...)
if gg.isVisible() then
gg.clearResults()gg.clearList()print("Anti-View code")
while true do os.exit() end
end return ret end gg.searchNumber = hook end

--if not CheckTargetInfo.x64 then print("Need x64 Game") os.exit() end
--gg.setValues({{address=gg.getRangesList('libanogs.so')[1].start+3190800,flags=64,value=0}})

function C_ALLOC()
local lib,MB=gg.getRangesList(),0
for i=1,#lib do if lib[i].state=="Ca" then MB=MB+(lib[i]["end"]+-lib[i].start)/1048576
end end return MB end if C_ALLOC()==0 then baseRG=gg.REGION_OTHER else baseRG=4 end

function MemoryDefault()
gg.clearResults()gg.clearList()gg.setRanges(baseRG)
gg.searchNumber("4 575 657 222 478 978 089", 32)
local t = gg.getResults(99999)gg.clearResults() 
for i=1,#t do t[i].address=t[i].address+580 t[i].flags=4 end 
gg.loadResults(t)gg.refineNumber("60", 4)
memD = gg.getResults(1)[1].address-580 gg.clearResults()
if FlyResetBtn then
gg.addListItems({{address=memD+1348,flags=16,freeze=true,value=1}})gg.clearList()
end end
MemoryDefault()

function getNewDebugVal()
gg.clearResults()gg.clearList()gg.setRanges(baseRG)
gg.searchNumber("3 419 204 521 181 798 690",32)
local t = gg.getResults(99999)gg.clearResults()
for i=1,#t do t[i].address=t[i].address-0x2C0 t[i].flags=4 end
gg.loadResults(t)gg.refineNumber("12290",4)
DebugVal = gg.getResults(999)[1].address gg.clearResults()
end
getNewDebugVal()

function GetMain()
gg.clearResults()gg.clearList()gg.setRanges(baseRG)
gg.searchNumber(";Main", 2)gg.refineNumber(";n", 2)
local main1 = gg.getResults(99999)gg.clearResults()
local spisok228,k={},0
for i = 1,32 do
k=k+2
for b = 1,#main1 do
table.insert(spisok228,{address=main1[b].address+k,flags=2})
if k == 2 then
table.insert(spisok228,{address=main1[b].address+0x42,flags=4})
end end end
gg.loadResults(spisok228)
h = gg.getResults(99999)gg.clearResults()
end

function GetTimeTips()
gg.clearResults()gg.clearList()gg.setRanges(baseRG)
gg.searchNumber(":Main.json", 1)gg.refineNumber(":M", 1)
local t1 = gg.getResults(9999)gg.clearResults()
for i=1,#t1 do t1[i].address=t1[i].address+0xFF t1[i].flags=4 end
gg.loadResults(t1)gg.refineNumber("15", 4)
TimeUI = gg.getResults(9999)gg.clearResults()
end

function GetTipsMain()
for i=1,#h do
if h[i].value == string.byte("-") and h[i+1].value == string.byte("C") and h[i+2].value == string.byte("a") and h[i+3].value == string.byte("n") and h[i+4].value == string.byte("n") and h[i+5].value == string.byte("o") and h[i+6].value == string.byte("n") and h[i+32] then
if h[i+32].value == 1 or h[i+32].value == 257 or h[i+32].value == 256 then Cannon = h[i+32].address end
elseif h[i].value == string.byte("-") and h[i+1].value == string.byte("B") and h[i+2].value == string.byte("o") and h[i+3].value == string.byte("t") and h[i+4].value == string.byte("t") and h[i+5].value == string.byte("o") and h[i+6].value == string.byte("m") and h[i+7].value == string.byte("-") and h[i+8].value == string.byte("S") and h[i+9].value == string.byte("y") and h[i+10].value == string.byte("s") and h[i+11].value == string.byte("t") and h[i+12].value == string.byte("e") and h[i+13].value == string.byte("m") and h[i+14].value == string.byte("-") and h[i+15].value == string.byte("N") and h[i+16].value == string.byte("o") and h[i+17].value == string.byte("t") and h[i+18].value == string.byte("i") and h[i+19].value == string.byte("f") and h[i+20].value == string.byte("i") and h[i+21].value == string.byte("c") and h[i+22].value == string.byte("a") and h[i+23].value == string.byte("t") and h[i+24].value == string.byte("i") and h[i+25].value == string.byte("o") and h[i+26].value == string.byte("n") and h[i+32] then
if h[i+32].value == 1 or h[i+32].value == 257 or h[i+32].value == 256 then BottomTips = h[i+32].address end
elseif h[i].value == string.byte("-") and h[i+1].value == string.byte("C") and h[i+2].value == string.byte("e") and h[i+3].value == string.byte("n") and h[i+4].value == string.byte("t") and h[i+5].value == string.byte("e") and h[i+6].value == string.byte("r") and h[i+7].value == string.byte("-") and h[i+8].value == string.byte("S") and h[i+9].value == string.byte("y") and h[i+10].value == string.byte("s") and h[i+11].value == string.byte("t") and h[i+12].value == string.byte("e") and h[i+13].value == string.byte("m") and h[i+14].value == string.byte("-") and h[i+15].value == string.byte("N") and h[i+16].value == string.byte("o") and h[i+17].value == string.byte("t") and h[i+18].value == string.byte("i") and h[i+19].value == string.byte("f") and h[i+20].value == string.byte("i") and h[i+21].value == string.byte("c") and h[i+22].value == string.byte("a") and h[i+23].value == string.byte("t") and h[i+24].value == string.byte("i") and h[i+25].value == string.byte("o") and h[i+26].value == string.byte("n") and h[i+32] then
if h[i+32].value == 1 or h[i+32].value == 257 or h[i+32].value == 256 then CenterTips = h[i+32].address end
elseif h[i].value == string.byte("-") and h[i+1].value == string.byte("B") and h[i+2].value == string.byte("u") and h[i+3].value == string.byte("i") and h[i+4].value == string.byte("l") and h[i+5].value == string.byte("d") and h[i+6].value == string.byte("W") and h[i+7].value == string.byte("a") and h[i+8].value == string.byte("r") and h[i+32] then
if h[i+32].value == 1 or h[i+32].value == 257 or h[i+32].value == 256 then APVal = h[i+32].address end
elseif h[i].value == string.byte("-") and h[i+1].value == string.byte("P") and h[i+2].value == string.byte("a") and h[i+3].value == string.byte("r") and h[i+4].value == string.byte("a") and h[i+5].value == string.byte("c") and h[i+6].value == string.byte("h") and h[i+7].value == string.byte("u") and h[i+8].value == string.byte("t") and h[i+9].value == string.byte("e") and h[i+32] then
if h[i+32].value == 1 or h[i+32].value == 257 or h[i+32].value == 256 then ParVal = h[i+32].address end
elseif h[i].value == string.byte("-") and h[i+1].value == string.byte("F") and h[i+2].value == string.byte("l") and h[i+3].value == string.byte("y") and h[i+4].value == 0 and h[i+32] then
if h[i+32].value == 1 or h[i+32].value == 257 or h[i+32].value == 256 then FlyBtn = h[i+32].address end
elseif h[i].value == 0 and h[i+32] then
if h[i+32].value == 1 or h[i+32].value == 257 then
local t=gg.getValues({{address=h[i].address-40,flags=4}})[1].value
if t == 32 then UpdateMain=h[i+32].address end end
end
end
FlyResetBtn=true
end








function GetMyTeamID()
    if not checkedTeamId then
        check = gg.getValues({
            client = {address = memD + 580, flags = 4},
            myTeamID = {address = memD + 896, flags = 4}
        })
        
        if check.client.value ~= 60 then 
            MemoryDefault() 
        end
        
        if check.myTeamID.value == 0 then 
            NoTeam = true 
        end
        
        checkedTeamId = true
    end
end



function distance_teleport()
    gg.setVisible(false)
    
    -- Используем внешнюю переменную для отслеживания состояния
    if smart_distance_teleport_active == nil then
        smart_distance_teleport_active = false
    end
    
    -- Переключаем состояние
    smart_distance_teleport_active = not smart_distance_teleport_active
    
    if not smart_distance_teleport_active then
        -- Полностью выключаем функцию
        if _G.teleport_data then
            _G.teleport_data.active = false
            _G.teleport_data = nil
        end
        gg.toast("🛑 Телепортация остановлена")
        return
    end
    
    -- Запрос параметров у пользователя (только при включении)
    local input = gg.prompt({
        "Максимальная дистанция для ТП (метры):",
        "Интервал проверки (секунды):",
        "Автовыбор всех живых игроков"
    }, {
        [1] = "10",
        [2] = "0.3", 
        [3] = true
    }, {"number", "number", "checkbox"})
    
    if not input then
        smart_distance_teleport_active = false
        gg.toast("Отменено")
        return
    end
    
    local maxDistance = tonumber(input[1])
    local checkInterval = tonumber(input[2])
    local autoSelect = input[3]
    
    if not maxDistance or maxDistance <= 0 then
        gg.alert("Ошибка: введите корректную дистанцию")
        smart_distance_teleport_active = false
        return
    end
    
    if not checkInterval or checkInterval <= 0 then
        gg.alert("Ошибка: введите корректный интервал")
        smart_distance_teleport_active = false
        return
    end
    
    -- Поиск адресов
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", 32)
    local me = gg.getResults(1)
    gg.clearResults()
    
    if not me or #me == 0 then
        gg.toast("❌ Не найден адрес игрока!")
        smart_distance_teleport_active = false
        return
    end
    
    -- Поиск игроков
    gg.setRanges(4)
    gg.searchNumber("300", 4)
    local tbl = gg.getResults(100000)
    for i,v in pairs(tbl) do
        tbl[i].address = tbl[i].address + 0x1E4
        tbl[i].flags = 16
    end
    gg.loadResults(tbl)
    gg.refineNumber("180", 16)
    local players = gg.getResults(100000)
    gg.clearResults()
    
    if not players or #players == 0 then
        gg.toast("❌ Игроки не найдены!")
        smart_distance_teleport_active = false
        return
    end
    
    -- Выбор целей
    local targetPlayers = {}
    local targetPlayerIDs = {}
    
    if autoSelect then
        -- Автовыбор всех живых игроков
        for i, player in ipairs(players) do
            local playerHP = gg.getValues({{address = player.address - 188, flags = 64}})[1].value
            if playerHP > 0.001 then
                local playerID = gg.getValues({{address = player.address + 0x264, flags = 32}})[1].value
                if playerID ~= 0 then
                    targetPlayers[#targetPlayers + 1] = player
                    targetPlayerIDs[#targetPlayers] = playerID
                end
            end
        end
        gg.toast("Автовыбор: " .. #targetPlayers .. " целей")
    else
        -- Ручной выбор
        local playerList = {}
        local playerIndices = {}
        
        for i = 1, #players do
            local playerID = gg.getValues({{address = players[i].address + 0x264, flags = 32}})[1].value
            if playerID ~= 0 then
                local playerHP = gg.getValues({{address = players[i].address - 188, flags = 64}})[1].value
                playerList[#playerList + 1] = i .. " [ID]: " .. playerID .. " | HP: " .. math.floor(playerHP) .. "❤"
                playerIndices[#playerList] = i
            end
        end
        
        if #playerList == 0 then
            gg.toast("❌ Игроки не найдены")
            smart_distance_teleport_active = false
            return
        end
        
        local targets = gg.multiChoice(playerList, nil, "Выберите цели для телепортации | " .. #playerList .. " игроков")
        if not targets then
            smart_distance_teleport_active = false
            gg.toast("Отменено")
            return
        end
        
        for index, selected in pairs(targets) do
            if selected then
                local playerIndex = playerIndices[index]
                local playerID = gg.getValues({{address = players[playerIndex].address + 0x264, flags = 32}})[1].value
                targetPlayers[#targetPlayers + 1] = players[playerIndex]
                targetPlayerIDs[#targetPlayers] = playerID
            end
        end
    end
    
    if #targetPlayers == 0 then
        gg.toast("❌ Цели не выбраны")
        smart_distance_teleport_active = false
        return
    end
    
    -- Сохраняем данные для фоновой работы
    _G.teleport_data = {
        active = true,
        me = me,
        targetPlayers = targetPlayers,
        targetPlayerIDs = targetPlayerIDs,
        maxDistance = maxDistance,
        checkInterval = checkInterval,
        lastCheckTime = 0,
        lastTeleportTime = 0,
        teleportCooldown = 500
    }
    
    gg.toast("🌀 Телепортация запущена! Дистанция: " .. maxDistance .. "м")
end

function check_teleportation()
    if not _G.teleport_data or not _G.teleport_data.active then
        return
    end

    local data = _G.teleport_data
    local currentTime = os.clock() * 1000

    if currentTime - data.lastCheckTime > (data.checkInterval * 1000) then
        local myCoords = {
            x = gg.getValues({{address = data.me[1].address - 168, flags = 16}})[1].value,
            y = gg.getValues({{address = data.me[1].address - 164, flags = 16}})[1].value,
            z = gg.getValues({{address = data.me[1].address - 160, flags = 16}})[1].value,
        }

        local closestTarget = nil
        local closestCoords = nil
        local minDistance = math.huge
        local currentTargetHP = 0
        local currentTargetID = 0

        for i, player in ipairs(data.targetPlayers) do
            local playerHP = gg.getValues({{address = player.address - 188, flags = 64}})[1].value
            if playerHP > 0.001 then
                local targetCoords = {
                    x = gg.getValues({{address = player.address - 668, flags = 16}})[1].value + 1,
                    y = gg.getValues({{address = player.address - 664, flags = 16}})[1].value,
                    z = gg.getValues({{address = player.address - 660, flags = 16}})[1].value + 1
                }

                local dx = targetCoords.x - myCoords.x
                local dy = targetCoords.y - myCoords.y
                local dz = targetCoords.z - myCoords.z
                local distance = math.sqrt(dx*dx + dy*dy + dz*dz)

                if distance < minDistance and distance < data.maxDistance then
                    minDistance = distance
                    closestTarget = player
                    closestCoords = targetCoords
                    currentTargetHP = playerHP
                    currentTargetID = data.targetPlayerIDs[i]
                end
            end
        end

        if closestTarget and minDistance < math.huge then
            -- ТЕЛЕПОРТАЦИЯ
            gg.setValues({
                {address = data.me[1].address - 168, flags = 16, value = closestCoords.x},
                {address = data.me[1].address - 164, flags = 16, value = closestCoords.y},
                {address = data.me[1].address - 160, flags = 16, value = closestCoords.z},
                {address = data.me[1].address - 156, flags = 16, value = closestCoords.x},
                {address = data.me[1].address - 152, flags = 16, value = closestCoords.y + 1},
                {address = data.me[1].address - 148, flags = 16, value = closestCoords.z},
                {address = data.me[1].address + 1348, flags = 4, value = 1939828761}
            })

            data.lastTeleportTime = currentTime
            gg.toast(string.format("🌀 ТП к ID:%d | HP:%d❤ | %.1fм", 
                currentTargetID, math.floor(currentTargetHP), minDistance))
        end

        data.lastCheckTime = currentTime
    end
end

function jumpsv4()
if jumpsVVV4 == off then
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089",32)
r=gg.getResults(1)
local cd={}
cd[1]={}
cd[1].address=r[1].address+636
cd[1].flags=4
cd[1].value=0
gg.setValues(cd)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(":EnableDoubleJumps")
gg.refineNumber(":E")
local t=gg.getResults(100000)
for i,v in pairs(t)do
t[i].address=t[i].address+0x1F
t[i].flags=1
gg.clearResults()end
gg.loadResults(t)
gg.refineNumber("0",1)
gg.getResults(100000)
gg.editAll("1",1)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(":DisableI")
gg.refineNumber(":D")
local rt=gg.getResults(100000)
for i,v in pairs(rt)do
rt[i].address=rt[i].address+0x1F
rt[i].flags=1
end
gg.loadResults(rt)
gg.refineNumber("0",1)
gg.getResults(100000)
gg.editAll("1",1)
gg.clearResults()
jumpsVVV4 = on
gg.toast("Прыжки v4 включены ✅")
else
if jumpsVVV4 == on then
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089",32)
r=gg.getResults(1)
local cd={}
cd[1]={}
cd[1].address=r[1].address+636
cd[1].flags=4
cd[1].value=21227009
gg.setValues(cd)
gg.clearResults()
jumpsVVV4 = off
gg.toast("Прыжки v4 выключены ❌")
end end end




function high_jump_func()
    if high_jump == off then
        local resp = gg.prompt(
            {"Высота прыжка\n0.42 - по умолчанию"},
            {[1] = "0.42"},
            {"number"}
        )
        if not resp then return end

        local val = tonumber(resp[1])
        if not val then
            gg.toast("Введите корректное число")
            return
        end

        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(0.41999998689, gg.TYPE_FLOAT)
        gg.refineNumber(0.41999998689, gg.TYPE_FLOAT)

        local count = gg.getResultsCount()
        if count == 0 then
            gg.toast("Ничего не найдено")
            return
        end

        local results = gg.getResults(count)
        for i, v in ipairs(results) do
            v.value = val
            v.flags = gg.TYPE_FLOAT
        end
        gg.setValues(results)
        high_jump = on
        gg.toast("Высокие прыжки включены ✅")
    else
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(0.41999998689, gg.TYPE_FLOAT)
        gg.refineNumber(0.41999998689, gg.TYPE_FLOAT)
        
        local count = gg.getResultsCount()
        if count > 0 then
            local results = gg.getResults(count)
            for i, v in ipairs(results) do
                v.value = 0.42
                v.flags = gg.TYPE_FLOAT
            end
            gg.setValues(results)
        end
        high_jump = off
        gg.toast("Высокие прыжки выключены ❌")
    end
end


function LJump()
    local LJ = openInput({"LongJump: [1;10]"},{"1"},{"number"})
    if LJ == nil then 
        T("Ошибка! Введите цифру!") 
        return 
    end
    
    local longJumpValue = tonumber(LJ[1])
    if longJumpValue then
        gg.addListItems({{address=memD+888,flags=16,freeze=true,value=longJumpValue*0.02}})
        gg.clearList()
        T("LongJump modified to " .. LJ[1])
    else
        T("Ошибка! Введите корректное число!")
    end
end

function isInAttackZone(x, z)
    for _, zone in ipairs(attackZonesDatabase) do
        if zone.active and zone.canAttack then
            if zone.type == "rectangle" then
                local minX = math.min(zone.x1, zone.x2)
                local maxX = math.max(zone.x1, zone.x2)
                local minZ = math.min(zone.z1, zone.z2)
                local maxZ = math.max(zone.z1, zone.z2)
                if x >= minX and x <= maxX and z >= minZ and z <= maxZ then
                    return true, zone.name
                end
            end
        end
    end
    return false, "Вне зоны атаки"
end

function auto_savezone_tp_func()
    if auto_save_tp == off then
        auto_save_tp = on
        
        gg.setRanges(4)
        gg.searchNumber("4575657222478978089", 32)
        local me = gg.getResults(1)
        gg.clearResults()
        
        if not me or #me == 0 then
            gg.toast("❌ Ошибка: не найден адрес игрока!")
            auto_save_tp = off
            return
        end
        
        -- Безопасные зоны
        local safeZonesDatabase = {
            {
                name = "бз арена", 
                x1 = 58, z1 = 6, x2 = 150, z2 = 153, 
                active = true, type = "rectangle", 
                teleportTo = {x = 156, y = 52, z = 91}
            },
            {
                name = "бз лава", 
                x1 = 116, z1 = -105, x2 = 141, z2 = -90, 
                active = true, type = "rectangle", 
                teleportTo = {x = 129, y = 52, z = -108}
            },
            {
                name = "бз самурай", 
                x1 = 260, z1 = -160, x2 = 272, z2 = -139, 
                active = true, type = "rectangle", 
                teleportTo = {x = 276, y = 52, z = -150}
            },
            {
                name = "бз зима", 
                x1 = 315, z1 = -5, x2 = 336, z2 = 12, 
                active = true, type = "rectangle", 
                teleportTo = {x = 325, y = 52, z = 20}
            },
            {
                name = "бз эхо", 
                x1 = 280, z1 = -339, x2 = 290, z2 = -318, 
                active = true, type = "rectangle", 
                teleportTo = {x = 294, y = 52, z = -328}
            }
        }
        
        -- Функция проверки находится ли позиция в безопасной зоне
        local function isInSafeZone(x, z)
            for _, zone in ipairs(safeZonesDatabase) do
                if zone.active and zone.type == "rectangle" then
                    local minX = math.min(zone.x1, zone.x2)
                    local maxX = math.max(zone.x1, zone.x2)
                    local minZ = math.min(zone.z1, zone.z2)
                    local maxZ = math.max(zone.z1, zone.z2)
                    
                    if x >= minX and x <= maxX and z >= minZ and z <= maxZ then
                        return true, zone.name, zone.teleportTo
                    end
                end
            end
            return false, "Вне безопасной зоны", nil
        end
        
        gg.toast("Авто ТП из бз: ON ✅")
        
        local lastTeleportTime = 0
        local teleportCooldown = 2000
        
        while auto_save_tp == on do
            if gg.isVisible(true) then
                gg.setVisible(false)
                auto_save_tp = off
                gg.toast("Авто ТП из бз: OFF ❌")
                break
            end
            
            local currentTime = os.clock() * 1000
            
            if currentTime - lastTeleportTime >= teleportCooldown then
                local playerXYZ = {}
                for i = 1, 6 do
                    playerXYZ[i] = {address = me[1].address - (36 + i) * 4, flags = gg.TYPE_FLOAT}
                end
                
                local coords = gg.getValues(playerXYZ)
                local currentX = coords[1].value
                local currentY = coords[2].value
                local currentZ = coords[3].value
                
                local inSafeZone, zoneName, teleportCoords = isInSafeZone(currentX, currentZ)
                
                if inSafeZone and teleportCoords then
                    local values = {
                        {address = me[1].address - 148, flags = 16, value = teleportCoords.x + 0.8},
                        {address = me[1].address - 152, flags = 16, value = teleportCoords.y + 2.9},
                        {address = me[1].address - 156, flags = 16, value = teleportCoords.z + 0.8},
                        {address = me[1].address - 160, flags = 16, value = teleportCoords.x + 0.2},
                        {address = me[1].address - 164, flags = 16, value = teleportCoords.y + 1.1},
                        {address = me[1].address - 168, flags = 16, value = teleportCoords.z + 0.2}
                    }
                    
                    gg.setValues(values)
                    lastTeleportTime = currentTime
                    gg.toast(string.format("Телепортация из БЗ %s\nX:%d Z:%d", 
                        zoneName, teleportCoords.x, teleportCoords.z))
                    gg.sleep(2000)
                else
                    gg.sleep(1000)
                end
            else
                gg.sleep(100)
            end
        end
    else
        auto_save_tp = off
        gg.toast("Авто ТП из бз: OFF ❌")
    end
end

function auto_escape_low_hp_fast()
    if not escape_active then
        escape_active = true
        gg.toast("🔄 Авто-побег активирован")
        
        -- Получаем адрес игрока
        gg.setRanges(4)
        gg.searchNumber("4575657222478978089", 32)
        local me = gg.getResults(1)
        gg.clearResults()
        
        if not me or #me == 0 then
            gg.toast("❌ Ошибка: не найден адрес игрока!")
            escape_active = false
            return
        end
        
        local last_position = nil
        local stationary_start_time = 0
        
        while escape_active do
            if gg.isVisible(true) then
                gg.setVisible(false)
                escape_active = false
                gg.toast("🛑 Авто-побег выключен")
                break
            end
            
            local current_time = os.clock()
            
            -- Проверяем HP игрока
            local player_hp = gg.getValues({{address = me[1].address + 312, flags = 64}})[1].value
            
            if player_hp < 30 and player_hp > 0.001 then
                -- Получаем текущие координаты
                local current_coords = gg.getValues({
                    {address = me[1].address - 168, flags = 16}, -- X
                    {address = me[1].address - 164, flags = 16}, -- Y
                    {address = me[1].address - 160, flags = 16}  -- Z
                })
                
                local current_pos = {
                    x = current_coords[1].value,
                    y = current_coords[2].value,
                    z = current_coords[3].value
                }
                
                -- Проверяем движение
                if last_position then
                    local distance = math.sqrt(
                        (current_pos.x - last_position.x)^2 +
                        (current_pos.z - last_position.z)^2
                    )
                    
                    if distance < 0.5 then
                        if stationary_start_time == 0 then
                            stationary_start_time = current_time
                        else
                            local stationary_duration = current_time - stationary_start_time
                            
                            -- ТЕЛЕПОРТАЦИЯ ЧЕРЕЗ 1 СЕКУНДУ (без кулдауна)
                            if stationary_duration >= 1.0 then
                                -- Близкая телепортация: 3-5 блоков
                                local angle = math.random() * 2 * math.pi
                                local teleport_distance = 3 + math.random() * 2
                                
                                local new_x = current_pos.x + math.cos(angle) * teleport_distance
                                local new_z = current_pos.z + math.sin(angle) * teleport_distance
                                
                                -- Телепортация как в рванке
                                gg.SetValues = ({
                                    {address = me[1].address - 148, flags = 16, value = new_z + 0.8},
                                    {address = me[1].address - 152, flags = 16, value = current_pos.y + 2.9},
                                    {address = me[1].address - 156, flags = 16, value = new_x + 0.8},
                                    {address = me[1].address - 160, flags = 16, value = new_z + 0.2},
                                    {address = me[1].address - 164, flags = 16, value = current_pos.y + 1.1},
                                    {address = me[1].address - 168, flags = 16, value = new_x + 0.2}
                                })
                                
                                gg.toast(string.format("🚀 Телепорт! HP: %.0f | +%.1fм", 
                                    player_hp, teleport_distance))
                                
                                -- Сбрасываем таймер для следующей проверки
                                stationary_start_time = 0
                                last_position = nil
                                gg.sleep(200)
                            end
                        end
                    else
                        -- Двигается, сбрасываем таймер
                        stationary_start_time = 0
                    end
                end
                
                last_position = current_pos
            else
                -- HP нормальный или игрок мертв
                stationary_start_time = 0
                last_position = nil
            end
            
            gg.sleep(100)
        end
        
    else
        escape_active = false
        gg.toast("🛑 Авто-побег выключен")
    end
end




function auto_arena_tp_func()
    if auto_arena_tp == off then
        auto_arena_tp = on
        
        gg.setRanges(4)
        gg.searchNumber("4575657222478978089", 32)
        local me = gg.getResults(1)
        gg.clearResults()
        
        if not me or #me == 0 then
            gg.toast("❌ Ошибка: не найден адрес игрока!")
            auto_arena_tp = off
            return
        end
        
        local arena_positions = {
            {x = 145, y = 52, z = 91},
            {x = 145, y = 52, z = 92},
            {x = 146, y = 52, z = 92},
            {x = 146, y = 52, z = 91},
            {x = 146, y = 52, z = 90},
            {x = 145, y = 52, z = 90},
            {x = 144, y = 52, z = 90},
            {x = 144, y = 52, z = 91},
            {x = 144, y = 52, z = 92}
        }
        
        local teleport_coords = {
            x = 156,
            y = 52, 
            z = 91
        }
        
        gg.toast("Авто ТП на арену: ON ✅\nТП при нахождении в бз")
        
        while auto_arena_tp == on do
            if gg.isVisible(true) then
                gg.setVisible(false)
                auto_arena_tp = off
                gg.toast("Авто ТП на арену: OFF ❌")
                break
            end
            
            local playerXYZ = {}
            for i = 1, 6 do
                playerXYZ[i] = {address = me[1].address - (36 + i) * 4, flags = gg.TYPE_FLOAT}
            end
            
            local coords = gg.getValues(playerXYZ)
            local currentX = math.floor(coords[1].value)
            local currentY = math.floor(coords[2].value)
            local currentZ = math.floor(coords[3].value)
            
            local is_on_arena = false
            for _, pos in ipairs(arena_positions) do
                if currentX == pos.x and currentY == pos.y and currentZ == pos.z then
                    is_on_arena = true
                    break
                end
            end
            
            if is_on_arena then
                local values = {
                    {address = me[1].address - 148, flags = 16, value = teleport_coords.x + 0.8},
                    {address = me[1].address - 152, flags = 16, value = teleport_coords.y + 2.9},
                    {address = me[1].address - 156, flags = 16, value = teleport_coords.z + 0.8},
                    {address = me[1].address - 160, flags = 16, value = teleport_coords.x + 0.2},
                    {address = me[1].address - 164, flags = 16, value = teleport_coords.y + 1.1},
                    {address = me[1].address - 168, flags = 16, value = teleport_coords.z + 0.2}
                }
                
                gg.setValues(values)
                gg.toast("Телепортация с бз X:"..teleport_coords.x.." Z:"..teleport_coords.z)
                gg.sleep(2000)
            end
            
            gg.sleep(1000)
        end
        
    else
        auto_arena_tp = off
        gg.toast("Авто ТП на арену: OFF ❌")
    end
end





function hitbox_by_id()
    if hbid == off then
        
        gg.setRanges(4)
        gg.searchNumber("300", 4)
        local tbl = gg.getResults(100000)
        for i,v in pairs(tbl) do
            tbl[i].address = tbl[i].address + 0x1E4
            tbl[i].flags = 16
        end 
        gg.loadResults(tbl)
        gg.refineNumber("180",16)
        local players = gg.getResults(100000)
        gg.clearResults()

        if not players or #players == 0 then
            gg.toast("Игроки не найдены")
            return
        end

        
        local playerList = {}
        local playerIndices = {}
        local playerIDs = {}
        
        for i = 1, #players do
            local playerID = gg.getValues({{address = players[i].address + 0x264, flags = 32}})[1].value
            if playerID ~= 0 then
                local playerHP = gg.getValues({{address = players[i].address - 188, flags = 64}})[1].value
                playerList[#playerList + 1] = i .. " [ID]: " .. playerID .. " | HP: " .. math.floor(playerHP) .. "❤"
                playerIndices[#playerList] = i
                playerIDs[i] = playerID
            end
        end
        
        if #playerList == 0 then
            gg.toast("Игроки не найдены")
            return
        end

        
        local targets = gg.multiChoice(playerList, nil, "Выберите игроков для изменения хитбокса | " .. #playerList .. " игроков")
        if not targets then
            gg.toast("Отменено")
            return
        end

        
        local sizeChoice = gg.choice({
            "1.3x (Маленький)",
            "2.5x (Средний)", 
            "5x (Большой)"
        }, nil, "Выберите размер хитбокса")

        if not sizeChoice then
            gg.toast("Отменено")
            return
        end

        local width, height, depth

        
        if sizeChoice == 1 then
            width = 1.3
            height = 1.3
            depth = 1.3
            hbid_size = "1.3x"
        elseif sizeChoice == 2 then
            width = 2.5
            height = 2.5  
            depth = 2.5
            hbid_size = "2.5x"
        elseif sizeChoice == 3 then
            width = 5
            height = 5
            depth = 5
            hbid_size = "5x"
        end

        
        hbid_original_values = {}
        hbid_players = {}
        local modifiedCount = 0
        
        for index, selected in pairs(targets) do
            if selected then
                local playerIndex = playerIndices[index]
                local player = players[playerIndex]
                local playerID = playerIDs[playerIndex]
                
                
                local currentValues = gg.getValues({
                    {address = player.address - 708, flags = 16},
                    {address = player.address - 552, flags = 16},
                    {address = player.address - 616, flags = 16}
                })
                
                hbid_original_values[player.address] = {
                    width = currentValues[1].value,
                    height = currentValues[2].value,
                    depth = currentValues[3].value
                }
                
                
                gg.setValues({
                    {address = player.address - 708, flags = 16, value = width},
                    {address = player.address - 552, flags = 16, value = height},
                    {address = player.address - 616, flags = 16, value = depth}
                })
                
                
                hbid_players[player.address] = {
                    playerID = playerID,
                    size = hbid_size
                }
                
                modifiedCount = modifiedCount + 1
            end
        end

        
        hbid = on
        
        gg.toast("✅ Хитбокс " .. hbid_size .. " включен для " .. modifiedCount .. " игроков")

    else
        
        for playerAddress, originalValues in pairs(hbid_original_values) do
            gg.setValues({
                {address = playerAddress - 708, flags = 16, value = originalValues.width},
                {address = playerAddress - 552, flags = 16, value = originalValues.height},
                {address = playerAddress - 616, flags = 16, value = originalValues.depth}
            })
        end
        
        
        hbid_players = {}
        hbid_original_values = {}
        hbid_size = nil
        hbid = off
        
        gg.toast("❌ Хитбокс по ID выключен")
    end
end


function get_hitbox_id_status()
    if hbid == on then
        local count = 0
        for _ in pairs(hbid_players) do
            count = count + 1
        end
        return " ["..hbid_size.."] ✅"
    else
        return " ❌"
    end
end






function antitables()
    if antitables_enabled == nil then
        antitables_enabled = off
    end
    
    if antitables_enabled == off then
        
        gg.setRanges(4)
        gg.searchNumber(":GUIPlayerOperationLua", gg.TYPE_BYTE)
        local results = gg.getResults(100000)
        if #results > 0 then
            
            original_antitables_values = {}
            for i, v in ipairs(results) do
                original_antitables_values[i] = {address = v.address, value = v.value, flags = v.flags}
            end
            
            for i, v in ipairs(results) do
                results[i].value = 54 
                if i + 1 <= #results then
                    results[i + 1].value = 57
                end
            end
            gg.setValues(results)
        end
        gg.clearResults()
        antitables_enabled = on
        gg.toast("Antitables включены ✅")
    else
        
        if original_antitables_values then
            for i, v in ipairs(original_antitables_values) do
                gg.setValues({v})
            end
            original_antitables_values = nil
        end
        antitables_enabled = off
        gg.toast("Antitables выключены ❌")
    end
end





function teleportationXYZ()
    
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", 32)
    local me = gg.getResults(1)
    gg.clearResults()
    
    if #me == 0 then
        gg.toast("❌ Игрок не найден!")
        return
    end
    
    
    local currentCoords = gg.getValues({
        {address = me[1].address - 168, flags = 16}, -- X
        {address = me[1].address - 164, flags = 16}, -- Y  
        {address = me[1].address - 160, flags = 16}  -- Z
    })
    
    local currentX = math.floor(currentCoords[1].value)
    local currentY = math.floor(currentCoords[2].value)
    local currentZ = math.floor(currentCoords[3].value)
    
    
    local input = gg.prompt({
        "Координата X:",
        "Координата Y:", 
        "Координата Z:",
        "Заморозить координаты"
    }, {
        [1] = tostring(currentX),
        [2] = tostring(currentY),
        [3] = tostring(currentZ),
        [4] = false
    }, {"number", "number", "number", "checkbox"})
    
    if not input then 
        gg.toast("❌ Отменено")
        return 
    end
    
    
    local targetX = tonumber(input[1])
    local targetY = tonumber(input[2]) 
    local targetZ = tonumber(input[3])
    local freezeCoords = input[4]
    
    if not targetX or not targetY or not targetZ then
        gg.toast("❌ Ошибка! Введите корректные координаты!")
        return
    end
    
    
    FrezCordTP = freezeCoords
    XYZ = {targetX, targetY, targetZ}
    
    
    local teleportValues = {
        {address = me[1].address - 148, flags = 16, value = targetX + 0.8},
        {address = me[1].address - 152, flags = 16, value = targetY + 2.9},
        {address = me[1].address - 156, flags = 16, value = targetZ + 0.8},
        {address = me[1].address - 160, flags = 16, value = targetX + 0.2},
        {address = me[1].address - 164, flags = 16, value = targetY + 1.1},
        {address = me[1].address - 168, flags = 16, value = targetZ + 0.2}
    }
    
    if freezeCoords then
        
        for i, v in ipairs(teleportValues) do
            v.freeze = true
        end
        gg.addListItems(teleportValues)
        gg.toast("✅ Телепортация успешна! Координаты заморожены.")
    else
        
        gg.setValues(teleportValues)
        gg.toast("✅ Телепортация успешна!")
    end
    
    gg.clearList()
end


function viewXYZ()
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", 32)
    local me = gg.getResults(1)
    gg.clearResults()
    
    if #me == 0 then
        gg.toast("❌ Игрок не найден!")
        return
    end
    
    local coords = gg.getValues({
        {address = me[1].address - 168, flags = 16}, -- X
        {address = me[1].address - 164, flags = 16}, -- Y
        {address = me[1].address - 160, flags = 16}  -- Z
    })
    
    local posX = math.floor(coords[1].value)
    local posY = math.floor(coords[2].value)
    local posZ = math.floor(coords[3].value)
    
    gg.alert("📍 Ваши координаты:\n\nX: ".. posX .."\nY: ".. posY .."\nZ: ".. posZ)
end








function spinner()
    if spinnerEnabled == nil then
        spinnerEnabled = off
    end
    
    local input888 = gg.prompt({
        "Скорость спиннера (0 для выключения):",
        "Состояние: " .. (spinnerEnabled == on and "ВКЛ" or "ВЫКЛ")
    }, {
        [1] = "0",
        [2] = spinnerEnabled == on and "ВКЛ" or "ВЫКЛ"
    })
    
    if not input888 then return end
    
    local speed = input888[1]:gsub(",", ".")
    
    
    if speed == "0" then
        if spinnerAddress and originalSpinnerValue then
            
            gg.setValues({{
                address = spinnerAddress,
                flags = gg.TYPE_FLOAT,
                value = originalSpinnerValue,
                freeze = false
            }})
            gg.toast("✅ Спиннер выключен")
        else
            gg.toast("✅ Спиннер уже выключен")
        end
        
        spinnerAddress = nil
        originalSpinnerValue = nil
        spinnerEnabled = off
        gg.clearResults()
        gg.clearList()
        return
    end
    
    
    local speedNum = tonumber(speed)
    if not speedNum or speedNum <= 0 then
        gg.toast("❌ Введите число больше 0")
        return
    end
    
    
    gg.clearResults()
    gg.clearList()
    
    
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("4 575 657 222 478 978 089", gg.TYPE_QWORD)
    
    local results = gg.getResults(10)
    if #results == 0 then
        gg.toast("❌ Не найдены адреса для спиннера")
        return
    end
    
    
    local baseAddress = results[1].address
    spinnerAddress = baseAddress + 8
    
    
    local currentValue = gg.getValues({{
        address = spinnerAddress,
        flags = gg.TYPE_FLOAT
    }})[1].value
    
    originalSpinnerValue = currentValue
    
    
    local spinValue = speedNum
    
    gg.setValues({{
        address = spinnerAddress,
        flags = gg.TYPE_FLOAT,
        value = spinValue,
        freeze = true
    }})
    
    
    gg.addListItems({{
        address = spinnerAddress,
        flags = gg.TYPE_FLOAT,
        value = spinValue,
        freeze = true,
        name = "Spinner"
    }})
    
    spinnerEnabled = on
    gg.toast("✅ Спиннер включен: " .. speed)
end







function hide_attack()
    if not HideAttack then
        
        if not GetMag1() then return end
        
        gg.addListItems({
            {
                address = Mag1[1].address + 0x24c,
                flags = gg.TYPE_WORD,
                freeze = true,
                value = -1
            }
        })
        
        HideAttack = true
        hide_attack_status = on
        gg.toast("Скрытие атаки включено ✅")
    else
        
        gg.clearList()
        HideAttack = false
        hide_attack_status = off
        gg.toast("Скрытие атаки выключено ❌")
    end
end











function StreamerMode()
    local NikDisabl = gg.prompt({"Disable NickName"}, nil, {"checkbox"})
    
    if not StreamVal2 then
        gg.clearResults() gg.clearList() gg.setRanges(baseRG)
        gg.searchNumber(";LuaMain-Player", 2) gg.refineNumber(";L", 2)
        local t = gg.getResults(9999) gg.clearResults()
        for i = 1, #t do 
            t[i].address = t[i].address + 72 
            t[i].flags = 4 
        end
        gg.loadResults(t) gg.refineNumber("1~257", 4)
        StreamVal2 = gg.getResults(9999) gg.clearResults()
    end
    
    if not IDsb then
        gg.clearResults() gg.clearList() gg.setRanges(baseRG)
        gg.searchNumber(";Main", 2) gg.refineNumber(";n", 2)
        local main1 = gg.getResults(99999) gg.clearResults()
        local spisok229, k = {}, 0
        
        for i = 1, 16 do
            k = k + 2
            for b = 1, #main1 do
                table.insert(spisok229, {address = main1[b].address + k, flags = 2})
                if k == 2 then
                    table.insert(spisok229, {address = main1[b].address + 0x3C, flags = 4})
                end
            end
        end
        
        gg.loadResults(spisok229)
        local j = gg.getResults(99999) gg.clearResults()
        
        for i = 1, #j do
            if j[i].value == string.byte("-") and j[i+1].value == string.byte("U") and 
               j[i+2].value == string.byte("s") and j[i+3].value == string.byte("e") and 
               j[i+4].value == string.byte("r") and j[i+5].value == string.byte("I") and 
               j[i+6].value == string.byte("d") and j[i+16] then
                if j[i+16].value == 1 or j[i+16].value == 257 or j[i+16].value == 256 then 
                    IDsb = j[i+16].address 
                end
            end
        end
    end
    
    if IDsb then
        gg.addListItems({{address = IDsb, flags = 4, freeze = true, value = 1}})
        gg.clearList()
    end
    
    if NikDisabl and NikDisabl[1] and StreamVal2 and #StreamVal2 > 0 then
        gg.addListItems({{address = StreamVal2[1].address, flags = 4, freeze = true, value = 1}})
        gg.clearList()
    end
    
    StreamMD = true
    gg.toast("Streamer Mode включен ✅")
end

function StreamerModeOFF()
    if IDsb then
        gg.addListItems({{address = IDsb, flags = 4, freeze = true, value = 257}})
        gg.clearList()
    end
    
    if StreamVal2 and #StreamVal2 > 0 then
        gg.addListItems({{address = StreamVal2[1].address, flags = 4, freeze = true, value = 257}})
        gg.clearList()
    end
    
    StreamMD = false
    gg.toast("Streamer Mode выключен ❌")
end





function view_hp_func()
gg.alert("Что бы не было красного экрана скрой уи")
    if view_hp == off then
        gg.clearResults() gg.clearList() gg.setRanges(v12)
        gg.searchNumber(":BlockCityPayment", 1) gg.refineNumber(":B", 1)
        local t = gg.getResults(9999) gg.clearResults()
        for i = 1, #t do t[i].address = t[i].address + 0x7b t[i].flags = 4 end
        gg.loadResults(t) gg.refineNumber("69", 4)
        viewhp1 = gg.getResults(9999) gg.clearResults()
        gg.searchNumber("4428659729064379023", 32)
        PlColors = gg.getResults(9999) gg.clearResults()
        
        gg.addListItems({ { address = viewhp1[1].address + 4, flags = 16, freeze = true, value = -228 } })
        gg.clearList()
        view_hp = on
        gg.toast("View HP включен ✅")
        
        gg.sleep(100)
        gg.addListItems({ { address = viewhp1[1].address + 4, flags = 16, freeze = true, value = 0.05 } })
        gg.clearList()
        
    else
        gg.addListItems({ { address = viewhp1[1].address + 4, flags = 16, freeze = true, value = 0.05 } })
        gg.clearList()
        view_hp = off
        gg.toast("View HP выключен ❌")
    end
end





function ghost()
while true do
if gg.isVisible(true) then gg.clearResults() gg.toast("выкл") return end
gg.setRanges(4 | 16000)
  gg.searchNumber("0.6", 16)
  local h = gg.getResults(gg.getResultsCount())
for i,v in pairs(h) do
h[i].address = h[i].address -20
h[i].flags = 16
end 
gg.loadResults(h)
  gg.refineNumber("1.3",16)
  p = gg.getResults(100000)
  gg.editAll("10",16)
  gg.toast(#p .. " изменений")
  gg.clearResults()
end end



function zombi()
while true do
if gg.isVisible(true) then gg.clearResults() gg.toast("выкл") return end
gg.setRanges(4 | 16000)
  gg.searchNumber("0.6", 16)
  local h = gg.getResults(gg.getResultsCount())
for i,v in pairs(h) do
h[i].address = h[i].address -20
h[i].flags = 16
end 
gg.loadResults(h)
  gg.refineNumber("2",16)
  p = gg.getResults(100000)
  gg.editAll("10",16)
  gg.toast(#p .. " изменений")
  gg.clearResults()
end end


function skesli()
while true do
if gg.isVisible(true) then gg.clearResults() gg.toast("выкл") return end
gg.setRanges(4 | 16000)
  gg.searchNumber("0.6", 16)
  local h = gg.getResults(gg.getResultsCount())
for i,v in pairs(h) do
h[i].address = h[i].address -20
h[i].flags = 16
end 
gg.loadResults(h)
  gg.refineNumber("1.5",16)
  p = gg.getResults(100000)
  gg.editAll("10",16)
  gg.toast(#p .. " изменений")
  gg.clearResults()
end end



function hit_circle_func()
    if hit_circle == off then
        
        gg.setRanges(gg.REGION_C_DATA)
        gg.searchNumber("4 842 495 499 330 125 824", 32)
        r = gg.getResults(1)
        
        
        if r == nil or #r == 0 then
            gg.toast("❌ Не удалось найти значение для скрытия кружка удара")
            gg.clearResults()
            return
        end
        
        
        hit_circle_address = r[1].address + 4
        original_hit_value = r[1].value  
        
        local t = {}
        t[1] = {}
        t[1].address = hit_circle_address
        t[1].flags = 16
        t[1].value = 0
        t[1].freeze = false
        gg.setValues(t)
        gg.clearResults()
        
        hit_circle = on
        gg.toast("✅ Кружок удара скрыт")
    else
        
        if hit_circle_address == nil or original_hit_value == nil then
            gg.toast("❌ Данные не найдены для восстановления")
            return
        end
        
        local t = {}
        t[1] = {}
        t[1].address = hit_circle_address
        t[1].flags = 16
        t[1].value = original_hit_value  
        t[1].freeze = false
        gg.setValues(t)
        
        hit_circle = off
        hit_circle_address = nil
        original_hit_value = nil
        gg.toast("✅ Кружок удара показан")
    end
end





function getStrafe()
    if not Strafe1 then
        gg.clearResults() gg.clearList() gg.setRanges(baseRG)
        gg.searchNumber(":DisableInertialFly", 1) gg.refineNumber(":D", 1)
        local t = gg.getResults(9999) gg.clearResults()
        for i = 1, #t do t[i].address = t[i].address + 0x1F t[i].flags = 4 end
        gg.loadResults(t)
        Strafe1 = gg.getResults(9999) gg.clearResults()
        runsm() 
    end
end

function strafe_func()
    if strafe == off then
        getStrafe()
        gg.addListItems({ { address = Strafe1[1].address, flags = 4, freeze = true, value = 1 } })
        gg.clearList()
        strafe = on
        gg.toast("Strafe включен ✅")
        runsm() 
    else
        getStrafe()
        gg.addListItems({ { address = Strafe1[1].address, flags = 4, freeze = true, value = 0 } })
        gg.clearList()
        strafe = off
        gg.toast("Strafe выключен ❌")
        runsm() 
    end
end



function hbb()
    if hbb_v2 == off then
        -- Первая часть функции (изменение параметров для своего игрока)
        gg.setRanges(4 | 16000 | -2080896)
        gg.searchNumber("4 575 657 222 478 978 089", 32)
        r = gg.getResults(1)
        
        local f = {}
        f[1] = {}
        f[1].address = r[1].address - 52
        f[1].flags = 16
        f[1].value = 0.599
        f[1].freeze = false
        gg.setValues(f)
        
        local d = {}
        d[1] = {}
        d[1].address = r[1].address - 96
        d[1].flags = 16
        d[1].value = 0.599
        d[1].freeze = false
        gg.setValues(d)
        
        local z = {}
        z[1] = {}
        z[1].address = r[1].address - 116
        z[1].flags = 16
        z[1].value = 1.799
        z[1].freeze = false
        gg.setValues(z)
        
        local o = {}
        o[1] = {}
        o[1].address = r[1].address - 208
        o[1].flags = 16
        o[1].value = 0.599
        o[1].freeze = false
        gg.setValues(o)
        gg.clearResults()
        
        -- Вторая часть функции (изменение ширины хитбоксов для всех игроков, кроме ID 457219871)
        gg.setRanges(4 | 16000 | -2080896)
        gg.searchNumber("1 127 481 344", 4)
        local bhb = gg.getResults(gg.getResultsCount())
        
        local playersToModify = {}
        for i,v in pairs(bhb) do
            bhb[i].address = bhb[i].address - 708
            bhb[i].flags = 16
            
            -- Получаем ID игрока
            local playerID = gg.getValues({{address = v.address + 0x264, flags = 32}})[1].value
            
            -- Сохраняем только игроков, которые НЕ имеют ID 457219871
            if playerID ~= 457219871 then
                table.insert(playersToModify, bhb[i])
            end
        end 
        
        if #playersToModify > 0 then
            gg.loadResults(playersToModify)
            gg.refineNumber("0.6",16)
            p = gg.getResults(100)
            gg.toast(#p.." изменений (игрок 457219871 пропущен)")
            gg.editAll("4",16)
        else
            gg.toast("Нет игроков для изменения хитбокса")
        end
        
        gg.clearResults()
        
        -- Третья часть функции (изменение высоты хитбоксов для всех игроков, кроме ID 457219871)
        gg.setRanges(4 | 16000 | -2080896)
        gg.searchNumber("1 127 481 344", 4)
        local bhb2 = gg.getResults(gg.getResultsCount())
        
        local playersToModify2 = {}
        for i,v in pairs(bhb2) do
            bhb2[i].address = bhb2[i].address - 552
            bhb2[i].flags = 16
            
            -- Получаем ID игрока (оригинальный адрес + 0x264)
            local playerID = gg.getValues({{address = v.address + (552 + 0x264), flags = 32}})[1].value
            
            -- Сохраняем только игроков, которые НЕ имеют ID 457219871
            if playerID ~= 457219871 then
                table.insert(playersToModify2, bhb2[i])
            end
        end 
        
        if #playersToModify2 > 0 then
            gg.loadResults(playersToModify2)
            gg.refineNumber("0.6",16)
            gg.getResults(100)
            gg.editAll("4",16)
        end
        
        gg.clearResults()
        hbb_v2 = on
        gg.toast("Хитбокс 5x включен ✅ (игрок 457219871 пропущен)")
        
    else
        -- Выключение функции (восстановление оригинальных значений)
        if hbb_v2 == on then
            -- Восстановление ширины хитбоксов (только для игроков, не имеющих ID 457219871)
            gg.setRanges(4 | 16000 | -2080896)
            gg.searchNumber("1 127 481 344", 4)
            local bhb = gg.getResults(gg.getResultsCount())
            
            local playersToRestore = {}
            for i,v in pairs(bhb) do
                bhb[i].address = bhb[i].address - 708
                bhb[i].flags = 16
                
                -- Получаем ID игрока
                local playerID = gg.getValues({{address = v.address + 0x264, flags = 32}})[1].value
                
                -- Восстанавливаем только для игроков, которые НЕ имеют ID 457219871
                if playerID ~= 457219871 then
                    table.insert(playersToRestore, bhb[i])
                end
            end 
            
            if #playersToRestore > 0 then
                gg.loadResults(playersToRestore)
                gg.refineNumber("4",16)
                p = gg.getResults(100)
                gg.toast(#p.." восстановлений (игрок 457219871 пропущен)")
                gg.editAll("0.6",16)
            end
            
            gg.clearResults()
            
            -- Восстановление высоты хитбоксов (только для игроков, не имеющих ID 457219871)
            gg.setRanges(4 | 16000 | -2080896)
            gg.searchNumber("1 127 481 344", 4)
            local bhb2 = gg.getResults(gg.getResultsCount())
            
            local playersToRestore2 = {}
            for i,v in pairs(bhb2) do
                bhb2[i].address = bhb2[i].address - 552
                bhb2[i].flags = 16
                
                -- Получаем ID игрока
                local playerID = gg.getValues({{address = v.address + (552 + 0x264), flags = 32}})[1].value
                
                -- Восстанавливаем только для игроков, которые НЕ имеют ID 457219871
                if playerID ~= 457219871 then
                    table.insert(playersToRestore2, bhb2[i])
                end
            end 
            
            if #playersToRestore2 > 0 then
                gg.loadResults(playersToRestore2)
                gg.refineNumber("4",16)
                gg.getResults(100)
                gg.editAll("0.6",16)
            end
            
            gg.clearResults()
            hbb_v2 = off
            gg.toast("Хитбокс 5x выключен ❌ (игрок 457219871 не изменялся)")
        end 
    end 
end








function hbn()
if hbn_v2 == off then
gg.setRanges(4 | 16000 | -2080896)
gg.searchNumber("4 575 657 222 478 978 089", 32)
r = gg.getResults(1)
local f = {}
f[1] = {}
f[1].address = r[1].address - 52
f[1].flags = 16
f[1].value = 0.599
f[1].freeze = false
gg.setValues(f)
local d = {}
d[1] = {}
d[1].address = r[1].address - 96
d[1].flags = 16
d[1].value = 0.599
d[1].freeze = false
gg.setValues(d)
local z = {}
z[1] = {}
z[1].address = r[1].address - 116
z[1].flags = 16
z[1].value = 1.799
z[1].freeze = false
gg.setValues(z)
local o = {}
o[1] = {}
o[1].address = r[1].address - 208
o[1].flags = 16
o[1].value = 0.599
o[1].freeze = false
gg.setValues(o)
gg.clearResults()
gg.setRanges(4 | 16000 | -2080896)
  gg.searchNumber("1 127 481 344", 4)
  local nhb = gg.getResults(gg.getResultsCount())
for i,v in pairs(nhb) do
nhb[i].address = nhb[i].address - 708
nhb[i].flags = 16
 end 
gg.loadResults(nhb)
  gg.refineNumber("0.6",16)
  p = gg.getResults(100)
  gg.toast(#p.."")
  gg.editAll("2.5",16)
  gg.clearResults()
  gg.setRanges(4 | 16000 | -2080896)
  gg.searchNumber("1 127 481 344", 4)
  local nhb = gg.getResults(gg.getResultsCount())
for i,v in pairs(nhb) do
nhb[i].address = nhb[i].address - 552
nhb[i].flags = 16
 end 
gg.loadResults(nhb)
  gg.refineNumber("0.6",16)
  gg.getResults(100)
  gg.editAll("2.5",16)
  gg.clearResults()
hbn_v2 = on
gg.toast("Хитбокс 2.5x включен ✅")
else
if hbn_v2 == on then
gg.setRanges(4 | 16000 | -2080896)
  gg.searchNumber("1 127 481 344", 4)
  local nhb = gg.getResults(gg.getResultsCount())
for i,v in pairs(nhb) do
nhb[i].address = nhb[i].address - 708
nhb[i].flags = 16
 end 
gg.loadResults(nhb)
  gg.refineNumber("2.5",16)
p = gg.getResults(100)
gg.toast(#p.."")
  gg.editAll("0.6",16)
  gg.clearResults()
  gg.setRanges(4 | 16000 | -2080896)
  gg.searchNumber("1 127 481 344", 4)
  local shb = gg.getResults(gg.getResultsCount())
for i,v in pairs(nhb) do
nhb[i].address = nhb[i].address - 552
nhb[i].flags = 16
 end 
gg.loadResults(nhb)
  gg.refineNumber("2.5",16)
  gg.getResults(100)
  gg.editAll("0.6",16)
  gg.clearResults()
  hbn_v2 = off
gg.toast("Хитбокс 2.5x выключен ❌")
end end end







function hbs()
if hbs_v2 == off then
gg.setRanges(4 | 16000 | -2080896)
gg.searchNumber("4 575 657 222 478 978 089", 32)
r = gg.getResults(1)
local f = {}
f[1] = {}
f[1].address = r[1].address - 52
f[1].flags = 16
f[1].value = 0.599
f[1].freeze = false
gg.setValues(f)
local d = {}
d[1] = {}
d[1].address = r[1].address - 96
d[1].flags = 16
d[1].value = 0.599
d[1].freeze = false
gg.setValues(d)
local z = {}
z[1] = {}
z[1].address = r[1].address - 116
z[1].flags = 16
z[1].value = 1.799
z[1].freeze = false
gg.setValues(z)
local o = {}
o[1] = {}
o[1].address = r[1].address - 208
o[1].flags = 16
o[1].value = 0.599
o[1].freeze = false
gg.setValues(o)
gg.clearResults()
gg.setRanges(4 | 16000 | -2080896)
  gg.searchNumber("1 127 481 344", 4)
  local shb = gg.getResults(gg.getResultsCount())
for i,v in pairs(shb) do
shb[i].address = shb[i].address - 708
shb[i].flags = 16
 end 
gg.loadResults(shb)
  gg.refineNumber("0.6",16)
  p = gg.getResults(100)
  gg.toast(#p.."")
  gg.editAll("1.3",16)
  gg.clearResults()
  gg.setRanges(4 | 16000 | -2080896)
  gg.searchNumber("1 127 481 344", 4)
  local shb = gg.getResults(gg.getResultsCount())
for i,v in pairs(shb) do
shb[i].address = shb[i].address - 552
shb[i].flags = 16
 end 
gg.loadResults(shb)
  gg.refineNumber("0.6",16)
  gg.getResults(100)
  gg.editAll("1.3",16)
  gg.clearResults()
hbs_v2 = on
gg.toast("Хитбокс 1.3x включен ✅")
else
if hbs_v2 == on then
gg.setRanges(4 | 16000 | -2080896)
  gg.searchNumber("1 127 481 344", 4)
  local shb = gg.getResults(gg.getResultsCount())
for i,v in pairs(shb) do
shb[i].address = shb[i].address - 708
shb[i].flags = 16
 end 
gg.loadResults(shb)
  gg.refineNumber("1.3",16)
p = gg.getResults(100)
gg.toast(#p.."")
  gg.editAll("0.6",16)
  gg.clearResults()
  gg.setRanges(4 | 16000 | -2080896)
  gg.searchNumber("1 127 481 344", 4)
  local shb = gg.getResults(gg.getResultsCount())
for i,v in pairs(shb) do
shb[i].address = shb[i].address - 552
shb[i].flags = 16
 end 
gg.loadResults(shb)
  gg.refineNumber("1.3",16)
  gg.getResults(100)
  gg.editAll("0.6",16)
  gg.clearResults()
  hbs_v2 = off
gg.toast("Хитбокс 1.3x выключен ❌")
end end end


function click_tp_func()
    if click_tp == off then
        gg.setVisible(false)
        gg.setRanges(4 | 16000)
        gg.searchNumber("4499096028797293909", 32)
        r = gg.getResults(1)
        local t = {}
        t[1] = {}
        t[1].address = r[1].address + 72
        t[1].flags = 4
        gg.clearResults()
        
        gg.setRanges(4 | 16000)
        gg.searchNumber(";￿￿āq")
        gg.refineNumber("257",2)
        r = gg.getResults(1)
        local x = {}
        x[1] = {}
        x[1].address = r[1].address - 0x168
        x[1].flags = 16
        local y = {}
        y[1] = {}
        y[1].address = r[1].address - 0x164
        y[1].flags = 16
        local z = {}
        z[1] = {}
        z[1].address = r[1].address - 0x160
        z[1].flags = 16
        gg.clearResults()
        
        gg.setRanges(4 | 16000)
        gg.searchNumber("1.62", 16)
        r = gg.getResults(1) 
        local myXYZ = {}
        myXYZ[1] = {}
        myXYZ[1].address = r[1].address -168
        myXYZ[1].flags = 16
        myXYZ[2] = {}
        myXYZ[2].address = r[1].address -164
        myXYZ[2].flags = 16
        myXYZ[3] = {}
        myXYZ[3].address = r[1].address -160
        myXYZ[3].flags = 16
        myXYZ[4] = {}
        myXYZ[4].address = r[1].address -156
        myXYZ[4].flags = 16
        myXYZ[5] = {}
        myXYZ[5].address = r[1].address -152
        myXYZ[5].flags = 16
        myXYZ[6] = {}
        myXYZ[6].address = r[1].address -148
        myXYZ[6].flags = 16
        gg.clearResults()
        
        click_tp = on
        gg.toast("ТП клик включен ✅")
        
        while click_tp == on do
            if gg.isVisible(true) then 
                gg.setVisible(false)
                click_tp = off
                gg.toast("ТП клик выключен ❌")
                return 
            end
            
            if gg.getValues(t)[1].value == 1 then
                local cx = gg.getValues(x)[1].value
                local cy = gg.getValues(y)[1].value
                local cz = gg.getValues(z)[1].value
                
                myXYZ[1].value = cx
                myXYZ[2].value = cy + 1
                myXYZ[3].value = cz
                myXYZ[4].value = cx
                myXYZ[5].value = cy + 2.8
                myXYZ[6].value = cz
                gg.setValues(myXYZ)
            end
            gg.sleep(50)
        end
    else
        click_tp = off
        gg.toast("ТП клик выключен ❌")
    end
end






function webmode()
    if wb == off then
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("32 651 574 047 080 552", gg.TYPE_QWORD)
        local t = gg.getResults(gg.getResultsCount())
        for i, v in pairs(t) do
            t[i].address = t[i].address + 0x28
            t[i].flags = gg.TYPE_DWORD
        end
        gg.loadResults(t)
        gg.refineNumber("1", gg.TYPE_DWORD)
        gg.getResults(100000)
        gg.editAll("257", gg.TYPE_DWORD)
        gg.clearResults()
        gg.alert("Open and close inventory for crosshair")
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("4 575 657 222 463 498 153", gg.TYPE_QWORD)
        local wr = gg.getResults(1)
        local web = {}
        web[1] = {}
        web[1].address = wr[1].address - 116
        web[1].flags = gg.TYPE_FLOAT
        web[1].value = 1
        web[1].freeze = false
        gg.setValues(web)
        
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("1.0", gg.TYPE_FLOAT)
        local sizeResults = gg.getResults(100)
        for i, v in pairs(sizeResults) do
            if v.value == 1.0 then
                local smallerSize = {}
                smallerSize[1] = {}
                smallerSize[1].address = v.address
                smallerSize[1].flags = gg.TYPE_FLOAT
                smallerSize[1].value = 0.3
                gg.setValues(smallerSize)
            end
        end
        
        gg.clearResults()
        wb = on
        gg.toast("Web ON ✅ (small crosshair)")
    else
        gg.setVisible(false)
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("32 651 574 047 080 552", gg.TYPE_QWORD)
        local t = gg.getResults(gg.getResultsCount())
        for i, v in pairs(t) do
            t[i].address = t[i].address + 0x28
            t[i].flags = gg.TYPE_DWORD
        end
        gg.loadResults(t)
        gg.refineNumber("257", gg.TYPE_DWORD)
        gg.getResults(100000)
        gg.editAll("1", gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("4 575 657 222 463 498 153", gg.TYPE_QWORD)
        local wr = gg.getResults(1)
        local web = {}
        web[1] = {}
        web[1].address = wr[1].address - 116
        web[1].flags = gg.TYPE_FLOAT
        web[1].value = 0
        web[1].freeze = false
        gg.setValues(web)
        gg.clearResults()
        wb = off
        gg.toast("Web OFF ❌")
    end
end


function third_person_func()
    if third_person == off then
        gg.setVisible(false)
        gg.clearResults()
        local input = gg.prompt({"Third Person View Value\ndefault = 3:"}, {[1] = "3"})
        if not input then return end
        if input[1] == "" then
            input[1] = "3"
        end
        input[1] = tonumber(input[1])
        if input[1] <= 0 then
            gg.alert("Value must be greater than 0")
            return
        end
        local selectedValue = input[1]

        if not tpvChanged then
            gg.clearResults()
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber("3", gg.TYPE_FLOAT)
            gg.sleep(350)
            gg.refineNumber("3", gg.TYPE_FLOAT)

            for _ = 1, 5 do 
                gg.refineNumber("3", gg.TYPE_FLOAT)
                if gg.getResultCount() < 2 then break end
            end

            tpvResults = gg.getResults(100000)

            if #tpvResults > 0 then
                for i, v in ipairs(tpvResults) do
                    v.value = selectedValue
                end
                gg.setValues(tpvResults)
                gg.toast("3rd Person View включен ✅")
                third_person = on
                tpvChanged = true
            else
                gg.toast("❌")
            end
            gg.clearResults()
        else
            for i, v in ipairs(tpvResults) do
                v.value = selectedValue
            end
            gg.setValues(tpvResults)
            gg.toast("3rd Person View обновлен ✅")
        end
    else
        gg.toast("3rd Person View уже включен")
    end
end



function updateKillauraStatus()
    -- Эта функция может быть вызвана для обновления статуса в меню
    if killaura_status == on then
        local status = "🎯 ВКЛ"
        if killauraData and killauraData.selectedPlayers then
            -- Можно добавить подсчет целей в БЗ
        end
        return status
    else
        return "❌ ВЫКЛ"
    end
end


-- Основная функция киллауры
function killaura_id()
    if killaura_status == off then
        local input = gg.prompt({
            "Дистанция срабатывания:",
            "Автовыбор целей (все живые игроки)"
        }, {
            killauraConfig.maxDistance,
            false
        }, {"number", "checkbox"})
        
        if not input then
            gg.toast("Отменено")
            return
        end
        
        local number = killauraConfig.maxDistance
        if input[1] then
            local numberStr = tostring(input[1]):gsub(",", ".")
            number = tonumber(numberStr) or killauraConfig.maxDistance
        end
        
        local autoSelect = input[2]
        
        local foundAddresses = findKillauraAddresses()
        if not foundAddresses then
            gg.toast("❌ Ошибка инициализации адресов")
            return
        end
        
        local delay, Xa, me, attack = foundAddresses.delay, foundAddresses.Xa, foundAddresses.me, foundAddresses.attack
        
        local players = findPlayers()
        if not players or #players == 0 then
            gg.toast("Игроки не найдены")
            return
        end
        
        local selectedPlayers, selectedPlayerIDs
        if autoSelect then
            selectedPlayers = {}
            selectedPlayerIDs = {}
            for i, player in ipairs(players) do
                local playerHP = gg.getValues({{address = player.address - 188, flags = 64}})[1].value
                if playerHP > 0.001 then
                    local playerID = gg.getValues({{address = player.address + 0x264, flags = 32}})[1].value
                    if playerID ~= 0 then
                        selectedPlayers[#selectedPlayers + 1] = player
                        selectedPlayerIDs[#selectedPlayers] = playerID
                    end
                end
            end
            gg.toast("Автовыбор: " .. #selectedPlayers .. " целей")
        else
            local selectionResult = selectPlayersManual(players)
            if not selectionResult then return end
            selectedPlayers, selectedPlayerIDs = selectionResult.players, selectionResult.ids
        end
        
        if #selectedPlayers == 0 then
            gg.toast("Цели не выбраны")
            return
        end
        
        setupHitboxes(selectedPlayers)
        
        killauraData = {
            selectedPlayers = selectedPlayers,
            playerIDs = selectedPlayerIDs or {},
            delay = delay,
            Xa = Xa,
            me = me,
            attack = attack,
            maxDistance = number,
            lastAttackTime = 0,
            lastHPUpdate = 0,
            lastToastTime = 0,
            currentTargetIndex = 1
        }
        
        killaura_status = on
        gg.setVisible(false)
        gg.toast("🎯 Киллаура включена на " .. #selectedPlayers .. " целей")
        
    else
        disableKillaura()
        killaura_status = off
        gg.toast("Киллаура выключена ❌")
    end
end









function findKillauraAddresses()
    local addresses = {}
    
    gg.setRanges(4)
    gg.searchNumber("31807780469866495", 32)
    addresses.delay = gg.getResults(1)
    gg.clearResults()
    
    if not addresses.delay or #addresses.delay == 0 then
        gg.toast("❌ Не найден адрес задержки")
        return nil
    end
    
    gg.setRanges(16384)
    gg.searchNumber("-4483333427983317729", 32)
    addresses.Xa = gg.getResults(1)
    gg.clearResults()
    
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", 32)
    addresses.me = gg.getResults(1)
    gg.clearResults()
    
    gg.setRanges(4)
    gg.searchNumber("4575657222463498153", 32)
    addresses.attack = gg.getResults(1)
    gg.clearResults()
    
    return addresses
end

function findPlayers()
    gg.setRanges(4)
    gg.searchNumber("300", 4)
    local tbl = gg.getResults(100000)
    for i, v in pairs(tbl) do
        tbl[i].address = tbl[i].address + 0x1E4
        tbl[i].flags = 16
    end
    gg.loadResults(tbl)
    gg.refineNumber("180", 16)
    local players = gg.getResults(100000)
    gg.clearResults()
    
    return players
end

function selectPlayersManual(players)
    local playerList = {}
    local playerIndices = {}
    local playerIDs = {}
    
    for i = 1, #players do
        local playerID = gg.getValues({{address = players[i].address + 0x264, flags = 32}})[1].value
        if playerID ~= 0 then
            local playerHP = gg.getValues({{address = players[i].address - 188, flags = 64}})[1].value
            playerList[#playerList + 1] = i .. " [ID]: " .. playerID .. " | HP: " .. math.floor(playerHP) .. "❤"
            playerIndices[#playerList] = i
            playerIDs[i] = playerID
        end
    end
    
    if #playerList == 0 then return nil end
    
    local targets = gg.multiChoice(playerList, nil, "Выберите цели | " .. #playerList .. " игроков")
    if not targets then return nil end
    
    local selectedPlayers = {}
    local selectedPlayerIDs = {}
    for index, selected in pairs(targets) do
        if selected then
            selectedPlayers[#selectedPlayers + 1] = players[playerIndices[index]]
            selectedPlayerIDs[#selectedPlayers] = playerIDs[playerIndices[index]]
        end
    end
    
    return {players = selectedPlayers, ids = selectedPlayerIDs}
end

function setupHitboxes(players)
    for _, player in ipairs(players) do
        gg.setValues({
            {address = player.address - 708, flags = 16, value = 8},
            {address = player.address - 552, flags = 16, value = 8},
            {address = player.address - 616, flags = 16, value = 6},
            {address = player.address - 496, flags = 16, value = 2}
        })
    end
end

function disableKillaura()
    if killauraData and killauraData.selectedPlayers then
        for _, player in ipairs(killauraData.selectedPlayers) do
            gg.setValues({
                {address = player.address - 708, flags = 16, value = 0.6},
                {address = player.address - 552, flags = 16, value = 0.6},
                {address = player.address - 616, flags = 16, value = 1.8},
                {address = player.address - 496, flags = 16, value = 1}
            })
        end
        
        if killauraData.Xa and killauraData.Xa[1] then
            gg.setValues({
                {address = killauraData.Xa[1].address - 0xE1C, flags = 16, value = 180},
                {address = killauraData.Xa[1].address + 0x2640, flags = 16, value = -0.1},
                {address = killauraData.Xa[1].address + 0x2644, flags = 16, value = 0.1},
                {address = killauraData.Xa[1].address + 0x378, flags = 16, value = 1},
                {address = killauraData.Xa[1].address + 0x37C, flags = 16, value = 0.4},
                {address = killauraData.Xa[1].address + 0x380, flags = 16, value = 0}
            })
        end
    end
    killauraData = {
        selectedPlayers = nil,
        playerIDs = nil, 
        delay = nil,
        Xa = nil,
        me = nil,
        attack = nil,
        maxDistance = nil,
        lastAttackTime = 0,
        lastHPUpdate = 0,
        lastToastTime = 0,
        currentTargetIndex = 1
    }
end







function runKillaura()
    if killaura_status == off or not killauraData.selectedPlayers then
        return
    end
    
    -- ПРОВЕРКА ТАЙМЕРА
    local currentTime = os.clock() * 1000
    if timeronn and timertop and timertop[1] then
        gg.setValues({{address = timertop[1].address - 12, flags = 4, value = -1}})
    end
    
    if not killauraData.me or not killauraData.me[1] then
        gg.toast("❌ Ошибка: адрес игрока не найден")
        killaura_status = off
        return
    end
    
    local myCoords = {
        x = gg.getValues({{address = killauraData.me[1].address - 168, flags = 16}})[1].value,
        y = gg.getValues({{address = killauraData.me[1].address - 164, flags = 16}})[1].value,
        z = gg.getValues({{address = killauraData.me[1].address - 160, flags = 16}})[1].value,
    }
    
    local activeTargets = {}
    local activeTargetsHP = {}
    local activeTargetsIDs = {}
    local targetsInSafeZone = 0
    local targetsInRange = 0
    
    -- Собираем активные цели
    for i, player in ipairs(killauraData.selectedPlayers) do
        local active = gg.getValues({{address = player.address, flags = 16}})[1].value
        if active == 180 then
            local playerHP = gg.getValues({{address = player.address - 188, flags = 64}})[1].value
            if playerHP > 0.001 then
                activeTargets[#activeTargets + 1] = player
                activeTargetsHP[#activeTargets] = playerHP
                
                local playerID = 0
                if killauraData.playerIDs and killauraData.playerIDs[i] then
                    playerID = killauraData.playerIDs[i]
                else
                    local idResult = gg.getValues({{address = player.address + 0x264, flags = 32}})
                    playerID = idResult[1].value
                end
                activeTargetsIDs[#activeTargets] = playerID
            end
        end
    end
    
    -- Если нет активных целей - пауза, но не отключаем
    if #activeTargets == 0 then
        if os.clock() - killauraData.lastToastTime > 3 then
            gg.toast("🎯 Киллаура: ожидание целей...")
            killauraData.lastToastTime = os.clock()
        end
        return
    end
    
    killauraData.selectedPlayers = activeTargets
    killauraData.playerIDs = activeTargetsIDs
    
    local closestDistance = math.huge
    local closestTargetHP = 0
    local closestTargetID = 0
    local closestTargetInSafeZone = false
    local anyTargetOutOfSafeZone = false
    
    for i, player in ipairs(killauraData.selectedPlayers) do
        local targetCoords = {
            x = gg.getValues({{address = player.address - 668, flags = 16}})[1].value + 9.69995117188,
            y = gg.getValues({{address = player.address - 664, flags = 16}})[1].value,
            z = gg.getValues({{address = player.address - 660, flags = 16}})[1].value + 9.70001220703
        }
        
        local distance = math.sqrt((targetCoords.x - myCoords.x)^2 + 
                                  (targetCoords.y - myCoords.y)^2 + 
                                  (targetCoords.z - myCoords.z)^2)
        
        -- Проверяем находится ли цель в безопасной зоне
        local inSafeZone, zoneName = isInSafeZone(targetCoords.x, targetCoords.z)
        
        if distance < closestDistance then
            closestDistance = distance
            closestTargetHP = activeTargetsHP[i]
            closestTargetID = activeTargetsIDs[i]
            closestTargetInSafeZone = inSafeZone
        end
        
        -- Если цель НЕ в безопасной зоне и в радиусе - атакуем
        if not inSafeZone and distance < killauraData.maxDistance then
            anyTargetOutOfSafeZone = true
            targetsInRange = targetsInRange + 1
            
            if killauraData.delay and killauraData.delay[1] then
                gg.setValues({
                    {address = killauraData.delay[1].address - 4, flags = 4, value = 0}
                })
            end
            
            if killauraData.attack and killauraData.attack[1] then
                gg.setValues({
                    {address = killauraData.attack[1].address + 352, flags = 4, value = 1}
                })
            end
        else
            if inSafeZone then
                targetsInSafeZone = targetsInSafeZone + 1
            end
        end
    end
    
    -- Обновляем статус каждую секунду
    if os.clock() - killauraData.lastHPUpdate > 1 then
        local statusText
        
        if anyTargetOutOfSafeZone then
            statusText = string.format("🎯 Киллаура | Целей в радиусе: %d/%d", 
                targetsInRange, #activeTargets - targetsInSafeZone)
            if closestTargetID > 0 and not closestTargetInSafeZone then
                statusText = statusText .. string.format(" | ID %d (%d❤, %.1fм)", 
                    closestTargetID, math.floor(closestTargetHP), closestDistance)
            end
        else
            if targetsInSafeZone > 0 then
                statusText = string.format("🛡️ Цели в БЗ: %d | Ожидание выхода из БЗ...", targetsInSafeZone)
            else
                statusText = "🎯 Киллаура: поиск целей..."
            end
        end
        
        gg.toast(statusText)
        killauraData.lastHPUpdate = os.clock()
    end
end




function killaura_pc()
    if killaura_pc_active then
        killaura_pc_active = false
        killaura_pc_data = {}
        gg.toast("Киллаура ПК выключена ❌")
        return
    end
    
    gg.setVisible(false)
    gg.setRanges(4)
    gg.searchNumber(';￿￿āq')
    gg.refineNumber('257', 2)
    local delay = gg.getResults(1) 
    gg.clearResults()
    
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", 32)
    local me = gg.getResults(1)
    gg.clearResults()
    
    if #me == 0 then
        gg.toast("Вы не найдены")
        return
    end
    
    local unpeople = {}
    unpeople[1] = {}
    unpeople[1].address = me[1].address + 0x1F4
    unpeople[1].flags = 16
    unpeople[1].value = 0
    gg.setValues(unpeople)
    
    gg.setRanges(4)
    gg.searchNumber("300", 4)
    local tbl = gg.getResults(100000)
    for i,v in pairs(tbl) do
        tbl[i].address = tbl[i].address + 484
        tbl[i].flags = 16
    end 
    gg.loadResults(tbl)
    gg.refineNumber("180",16)
    local players = gg.getResults(100)
    gg.clearResults()   
    
    if #players == 0 then
        gg.toast("Игроки не найдены")
        return
    end
    
    local playerList = {}
    local playerHPList = {}
    for i = 1, #players do
        local playerID = {}
        playerID.flags = 32
        playerID.address = players[i].address + 612 
        local id = gg.getValues({playerID})[1].value
        if id ~= 0 then
            local hp = gg.getValues({{address = players[i].address - 188, flags = 64}})[1].value
            playerList[#playerList + 1] = i .. "[ID]: " .. id .. " | HP: " .. math.floor(hp) .. "❤"
            playerHPList[i] = hp
        end
    end

    if #playerList == 0 then
        gg.toast("Игроки не найдены")
        return
    end
    
    -- Ввод своего радиуса атаки
    gg.alert("Введите радиус атаки в метрах")
    local radiusInput = gg.prompt({
        "Радиус атаки (1-50 метров):"
    }, {
        "5"
    }, {
        "number"
    })
    
    if not radiusInput then 
        gg.toast("Отменено")
        return 
    end
    
    local attackRadius = tonumber(radiusInput[1])
    if not attackRadius or attackRadius < 1 or attackRadius > 50 then
        gg.toast("Неверный радиус! Установлено значение по умолчанию: 5м")
        attackRadius = 5
    else
        gg.toast("Установлен радиус: " .. attackRadius .. " метров")
    end
    
    gg.setRanges(4)
    gg.searchNumber("4575657222463498153", 32)
    local attack = gg.getResults(1)
    gg.clearResults()
    
    local target = gg.choice(playerList, 0, "Цель | " .. #playerList .. " игроков | Радиус: " .. attackRadius .. "м")
    if not target then return end
    
    local targetID = {}
    targetID.flags = 32
    targetID.address = players[target].address + 612
    local selectedTargetID = gg.getValues({targetID})[1].value
    
    -- Сохраняем данные для работы в основном цикле
    killaura_pc_data = {
        active = true,
        players = players,
        target = target,
        attack = attack,
        delay = delay,
        me = me,
        attackRadius = attackRadius,
        selectedTargetID = selectedTargetID,
        lastHPUpdate = 0,
        lastAttackTime = 0,
        lastDistanceCheck = 0,
        lastCoordsCheck = 0,
        targetInRadiusTimer = 0,
        targetInRadiusStartTime = 0,
        wasInRadius = false,
        isAttacking = false,
        distanceBuffer = {}, -- Буфер для сглаживания расстояния
        lastPlayerPos = {x = 0, y = 0, z = 0}
    }
    
    gg.setValues({
        {address = players[target].address -708, flags = 16, value = 20},
        {address = players[target].address -552, flags = 16, value = 20},
        {address = players[target].address -616, flags = 16, value = 20},
        {address = players[target].address -496, flags = 16, value = 2}
    })
    
    killaura_pc_active = true
    gg.setVisible(false)
    gg.toast("Киллаура для пк включена ✅ | Радиус: " .. attackRadius .. "м")
end

function run_killaura_pc()
    if not killaura_pc_active or not killaura_pc_data.active then
        return
    end
    
    local data = killaura_pc_data
    local currentTime = os.clock() * 1000
    
    -- Проверка таймера
    if timeronn and timertop and timertop[1] then
        gg.setValues({{address = timertop[1].address - 12, flags = 4, value = -1}})
    end
    
    -- Получаем координаты игрока с оптимизацией частоты
    local myCoords
    if currentTime - data.lastCoordsCheck > 100 then
        myCoords = {
            x = gg.getValues({{address = data.me[1].address - 168, flags = 16}})[1].value,
            y = gg.getValues({{address = data.me[1].address - 164, flags = 16}})[1].value,
            z = gg.getValues({{address = data.me[1].address - 160, flags = 16}})[1].value,
        }
        data.lastCoordsCheck = currentTime
        data.lastPlayerPos = myCoords
    else
        myCoords = data.lastPlayerPos
    end
    
    -- Получаем координаты цели
    local targetCoords = {
        x = gg.getValues({{address = data.players[data.target].address - 668, flags = 16}})[1].value + 9.69995117188,
        y = gg.getValues({{address = data.players[data.target].address - 664, flags = 16}})[1].value,
        z = gg.getValues({{address = data.players[data.target].address - 660, flags = 16}})[1].value + 9.70001220703
    }
    
    -- Проверяем HP цели
    local hpt = gg.getValues({{address = data.players[data.target].address - 188, flags = 64}})[1].value
    
    -- Если цель мертва - выключаем киллауру
    if hpt < 0.001 then 
        gg.toast("Цель вышла / умерла")
        gg.setValues({
            {address = data.players[data.target].address -708, flags = 16, value = 0.6},
            {address = data.players[data.target].address -552, flags = 16, value = 0.6},
            {address = data.players[data.target].address -616, flags = 16, value = 1.8},
            {address = data.players[data.target].address -496, flags = 16, value = 1}
        })
        killaura_pc_active = false
        killaura_pc_data = {}
        return 
    end
    
    -- Проверяем находится ли цель в безопасной зоне
    local inSafeZone, zoneName = isInSafeZone(targetCoords.x, targetCoords.z)
    
    -- Рассчитываем дистанцию с использованием буфера для сглаживания
    local distance
    if currentTime - data.lastDistanceCheck > 50 then
        distance = math.sqrt((targetCoords.x - myCoords.x)^2 + (targetCoords.z - myCoords.z)^2)
        data.lastDistanceCheck = currentTime
        
        -- Добавляем расстояние в буфер для сглаживания
        table.insert(data.distanceBuffer, distance)
        if #data.distanceBuffer > 5 then -- Храним последние 5 значений
            table.remove(data.distanceBuffer, 1)
        end
    else
        -- Используем среднее значение из буфера
        if #data.distanceBuffer > 0 then
            local sum = 0
            for i = 1, #data.distanceBuffer do
                sum = sum + data.distanceBuffer[i]
            end
            distance = sum / #data.distanceBuffer
        else
            distance = math.sqrt((targetCoords.x - myCoords.x)^2 + (targetCoords.z - myCoords.z)^2)
        end
    end
    
    -- Проверка нахождения цели в радиусе атаки (полный указанный радиус)
    local isInRadius = (not inSafeZone and distance < data.attackRadius)
    
    -- Обновляем статус каждую секунду
    if currentTime - data.lastHPUpdate > 1000 then
        if inSafeZone then
            gg.toast(string.format("🛡️ Киллка ПК | Цель в БЗ: %s | Ожидание...", zoneName))
        elseif isInRadius and data.isAttacking then
            local timeInRadius = currentTime - data.targetInRadiusStartTime
            -- ИСПРАВЛЕНО: используем %.0f вместо %d для округления до целого
            gg.toast(string.format("⚔️ Киллка ПК | Атака! | В радиусе: %.0fмс | HP: %.0f❤ | Дистанция: %.1fм", 
                  timeInRadius, hpt, distance))
        else
            local status = isInRadius and "В радиусе ⚠️" or "Вне радиуса ❌"
            -- ИСПРАВЛЕНО: используем %.0f вместо %d для HP
            gg.toast(string.format("🎯 Киллка ПК | Цель ID %d | %s | HP: %.0f❤ | Дистанция: %.1fм", 
                  data.selectedTargetID, status, hpt, distance))
        end
        data.lastHPUpdate = currentTime
    end
    
    -- Логика проверки нахождения в радиусе
    if isInRadius then
        -- Если цель только что вошла в радиус
        if not data.wasInRadius then
            data.targetInRadiusStartTime = currentTime
            data.wasInRadius = true
            data.distanceBuffer = {} -- Очищаем буфер при входе в радиус
        end
        
        -- Вычисляем сколько времени цель находится в радиусе
        local timeInRadius = currentTime - data.targetInRadiusStartTime
        
        -- Если цель в радиусе больше 250мс и не в безопасной зоне - начинаем атаку
        if timeInRadius >= 250 and not inSafeZone then
            if not data.isAttacking then
                gg.toast("⚔️ Начинаю атаку!")
                data.isAttacking = true
            end
            
            -- Выполняем атаку с проверкой времени
            if currentTime - data.lastAttackTime > 100 then -- Атака раз в 100мс
                if data.delay and data.delay[1] then
                    gg.setValues({
                        {address = data.delay[1].address - 8, flags = 4, value = 0}
                    })
                end
                
                if data.attack and data.attack[1] then
                    gg.setValues({
                        {address = data.attack[1].address + 352, flags = 4, value = 1}
                    })
                end
                data.lastAttackTime = currentTime
            end
        end
    else
        -- Цель вышла из радиуса
        if data.wasInRadius then
            if data.isAttacking then
                gg.toast("⏸️ Атака остановлена")
                if data.attack and data.attack[1] then
                    gg.setValues({
                        {address = data.attack[1].address + 352, flags = 4, value = 0}
                    })
                end
            end
            data.wasInRadius = false
            data.targetInRadiusStartTime = 0
            data.isAttacking = false
        end
    end
    
    -- Обновляем данные в структуре
    killaura_pc_data = data
end




-- Добавить функцию инициализации киллауры:
local function initializeMyKillaura()
    local input = gg.prompt({"дистанция срабатывания:"}, nil, {"number"})
    if input == nil then
        print("Отменено")
        return false
    end
    
    local raw_input = input[1]:gsub(",", ".")
    local number = tonumber(raw_input)
    if number == nil then
        gg.alert("Ошибка: введите дистанцию срабатывания")
        return false
    end
    
    killaura_distance = number
    
    -- Поиск banClickCD
    gg.setRanges(4)
    gg.searchNumber(":banClickCD")
    gg.refineNumber(":b")
    banclick_killaura = gg.getResults(1)
    gg.clearResults()
    
    if not banclick_killaura or #banclick_killaura == 0 then
        gg.alert("Не найден banClickCD")
        return false
    end
    
    -- Поиск атаки
    gg.setRanges(4)
    gg.searchNumber("4575657222463498153", 32)
    attack_killaura = gg.getResults(1)
    gg.clearResults()
    
    if not attack_killaura or #attack_killaura == 0 then
        gg.alert("Не найден адрес атаки")
        return false
    end
    
    -- Поиск своего игрока
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", 32)
    me_killaura = gg.getResults(1)
    gg.clearResults()
    
    if not me_killaura or #me_killaura == 0 then
        gg.alert("Не найден адрес своего игрока")
        return false
    end
    
    -- Проверка и модификация
    local check = gg.getValues({{address = me_killaura[1].address + 0x53C, flags = 32}})[1].value
    if check == 4453159313431383245 then
        gg.setValues({{address = me_killaura[1].address + 0x53C, flags = 32, value = check + 1}})
    end
    
    gg.clearResults()
    
    -- Поиск игроков
    gg.setRanges(4)
    gg.searchNumber("300", 4)
    local tbl = gg.getResults(100000)
    for i,v in pairs(tbl) do
        tbl[i].address = tbl[i].address + 1324
        tbl[i].flags = 32
    end
    gg.loadResults(tbl)
    gg.refineNumber("4453159313431383245", 32)
    players_killaura = gg.getResults(100000)
    gg.clearResults()
    
    if #players_killaura == 0 then
        gg.toast("игроки не найдены")
        return false
    else
        local edits = {}
        for i = 1, #players_killaura do
            table.insert(edits, {address = players_killaura[i].address - 0x60C, flags = 16, value = 10})
            table.insert(edits, {address = players_killaura[i].address - 0x5B0, flags = 16, value = 10})
            table.insert(edits, {address = players_killaura[i].address - 0x570, flags = 16, value = 10})
        end
        gg.setValues(edits)
    end
    
    return true
end

-- Добавить функцию переключения киллауры:
function kill_all_players()
    if killaura_active then
        killaura_active = false
        -- Выключаем банаклич
        if banclick_killaura and #banclick_killaura > 0 then
            gg.setValues({{address = banclick_killaura[1].address + 0x1F, flags = 1, value = 0}})
        end
        gg.toast("Моя киллаура остановлена")
    else
        if initializeMyKillaura() then
            killaura_active = true
            -- Включаем банаклич
            gg.setValues({{address = banclick_killaura[1].address + 0x1F, flags = 1, value = 1}})
            gg.toast("Моя киллаура запущена")
        end
    end
end

-- Функция для чтения координат игроков
local function readCoordsKillaura()
    if not players_killaura or #players_killaura == 0 then return {} end
    
    local req = {}
    for i = 1, #players_killaura do
        table.insert(req, {address = players_killaura[i].address - 0x5DC, flags = 16})
        table.insert(req, {address = players_killaura[i].address - 0x5E0, flags = 16})
        table.insert(req, {address = players_killaura[i].address - 0x5E4, flags = 16})
    end
    
    local values = gg.getValues(req)
    local coordsList = {}
    
    for i = 1, #players_killaura do
        local idx = (i - 1) * 3
        coordsList[i] = {
            x = values[idx + 1].value,
            y = values[idx + 2].value,
            z = values[idx + 3].value
        }
    end
    return coordsList
end

-- Функция для получения своих координат
local function getMyCoordsKillaura()
    if not me_killaura or #me_killaura == 0 then return nil end
    
    return {
        x = gg.getValues({{address = me_killaura[1].address - 160, flags = 16}})[1].value,
        y = gg.getValues({{address = me_killaura[1].address - 164, flags = 16}})[1].value,
        z = gg.getValues({{address = me_killaura[1].address - 168, flags = 16}})[1].value,
    }
end

function runMyKillaura()
    if not killaura_active then return end
    
    local myCoords = getMyCoordsKillaura()
    if not myCoords then return end
    
    local coordsList = readCoordsKillaura()
    if #coordsList == 0 then return end
    
    local targetFound = false
    local minDist = math.huge
    local currentTime = os.clock()
    
    for _, coords in ipairs(coordsList) do
        local targetX = coords.x + 4.69995117188
        local targetZ = coords.z + 4.70001220703
        
        -- Проверяем находится ли цель в безопасной зоне
        local inSafeZone, zoneName = isInSafeZone(targetX, targetZ)
        
        if inSafeZone then
            -- Показываем сообщение о цели в БЗ раз в 3 секунды
            if currentTime - (_G.lastSafeZoneToast or 0) > 3 then
                gg.toast("🛡️ Один из игроков в БЗ: " .. zoneName .. " - пропускаем")
                _G.lastSafeZoneToast = currentTime
            end
        else
            -- Если цель НЕ в БЗ, проверяем дистанцию
            local dx = targetX - myCoords.x
            local dy = coords.y - myCoords.y
            local dz = targetZ - myCoords.z
            local distance = math.sqrt(dx*dx + dy*dy + dz*dz)
            
            if distance < killaura_distance and distance < minDist then
                minDist = distance
                targetFound = true
            end
        end
    end
    
    if targetFound and attack_killaura and #attack_killaura > 0 then
        gg.setValues({
            {address = attack_killaura[1].address + 352, flags = 4, value = 1}
        })
    end
end



function findAllPlayers()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("300", gg.TYPE_DWORD)
    
    if gg.getResultsCount() == 0 then
        return nil
    end
    
    local tbl = gg.getResults(100000)
    for i, v in pairs(tbl) do
        tbl[i].address = tbl[i].address + 0x1E4
        tbl[i].flags = gg.TYPE_FLOAT
    end
    
    gg.loadResults(tbl)
    gg.refineNumber("180", gg.TYPE_FLOAT)
    
    local players = gg.getResults(100000)
    gg.clearResults()
    
    
    local activePlayers = {}
    for i, player in ipairs(players) do
        local playerID = gg.getValues({{address = player.address + 0x264, flags = gg.TYPE_DWORD}})[1].value
        if playerID ~= 0 then
            activePlayers[#activePlayers + 1] = player
        end
    end
    
    return activePlayers
end




function getMyCoordinates()
    if not kill_all_data.me or not kill_all_data.me[1] then return nil end
    
    local coords = gg.getValues({
        {address = kill_all_data.me[1].address - 168, flags = gg.TYPE_FLOAT},
        {address = kill_all_data.me[1].address - 164, flags = gg.TYPE_FLOAT},
        {address = kill_all_data.me[1].address - 160, flags = gg.TYPE_FLOAT}
    })
    
    return {
        x = coords[1].value,
        y = coords[2].value, 
        z = coords[3].value
    }
end




function attackTargets(targets)
    if not kill_all_data.attack or not kill_all_data.attack[1] then return end
    
    
    if #targets > 0 then
        gg.setValues({
            {address = kill_all_data.attack[1].address + 352, flags = gg.TYPE_DWORD, value = 1}
        })
    end
end






function findKillauraAddresses()
    local addresses = {}
    
    
    gg.setRanges(4)
    gg.searchNumber(":banClickCD")
    gg.refineNumber(":b")
    addresses.banclick = gg.getResults(1)
    gg.clearResults()
    
    if not addresses.banclick or #addresses.banclick == 0 then
        gg.toast("❌ Не найден banClickCD")
        return nil
    end
    
    
    gg.setRanges(4)
    gg.searchNumber("4575657222463498153", gg.TYPE_QWORD)
    addresses.attack = gg.getResults(1)
    gg.clearResults()
    
    if not addresses.attack or #addresses.attack == 0 then
        gg.toast("❌ Не найден адрес атаки")
        return nil
    end
    
    
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", gg.TYPE_QWORD)
    addresses.me = gg.getResults(1)
    gg.clearResults()
    
    if not addresses.me or #addresses.me == 0 then
        gg.toast("❌ Не найден адрес игрока")
        return nil
    end
    
    
    local check = gg.getValues({{address = addresses.me[1].address + 0x53C, flags = gg.TYPE_QWORD}})[1].value
    if check == 4453159313431383245 then
        gg.setValues({{address = addresses.me[1].address + 0x53C, flags = gg.TYPE_QWORD, value = check + 1}})
    end
    
    return addresses
end





bhEnabled = off

function bunnyhop()
    if bhEnabled == off then

        gg.setVisible(true)
        gg.setRanges(4 | -2080896)
        gg.searchNumber("34177521903823220", 32)
        bunnyh = gg.getResults(1) 
        gg.clearResults() 
        gg.setValues({{address = bunnyh[1].address + 0x14, flags = 10, value = 10}})
        bhEnabled = on

    else

        gg.setVisible(true)
        gg.setRanges(4 | -2080896)
        gg.searchNumber("34177521903823220", 32)
        bunnyh = gg.getResults(1) 
        gg.clearResults() 
        gg.setValues({{address = bunnyh[1].address + 0x14, flags = 10, value = 0}})
        bhEnabled = off

    end
end




function nodelay()
    if nd == off then
        -- ВКЛЮЧЕНИЕ
        gg.setVisible(false)
        gg.clearResults()
        gg.clearList()
        
        -- Ищем banClickCD
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(":banClickCD", gg.TYPE_BYTE)
        
        local results = gg.getResults(100)
        
        if #results == 0 then
            gg.toast("banClickCD не найден")
            return
        end
        
        -- Перебираем все найденные адреса
        for i, v in ipairs(results) do
            -- Читаем 10 символов для проверки что это действительно "banClickCD"
            local bytes = gg.getValues({
                {address = v.address, flags = gg.TYPE_BYTE},
                {address = v.address + 1, flags = gg.TYPE_BYTE},
                {address = v.address + 2, flags = gg.TYPE_BYTE},
                {address = v.address + 3, flags = gg.TYPE_BYTE},
                {address = v.address + 4, flags = gg.TYPE_BYTE},
                {address = v.address + 5, flags = gg.TYPE_BYTE},
                {address = v.address + 6, flags = gg.TYPE_BYTE},
                {address = v.address + 7, flags = gg.TYPE_BYTE},
                {address = v.address + 8, flags = gg.TYPE_BYTE},
                {address = v.address + 9, flags = gg.TYPE_BYTE}
            })
            
            -- Проверяем соответствует ли "banClickCD"
            if bytes[1].value == string.byte('b') and
               bytes[2].value == string.byte('a') and
               bytes[3].value == string.byte('n') and
               bytes[4].value == string.byte('C') and
               bytes[5].value == string.byte('l') and
               bytes[6].value == string.byte('i') and
               bytes[7].value == string.byte('c') and
               bytes[8].value == string.byte('k') and
               bytes[9].value == string.byte('C') and
               bytes[10].value == string.byte('D') then
                
                -- Адрес значения = адрес текста + 31 (0x1F)
                local value_address = v.address + 0x1F
                
                -- Устанавливаем значение 1 (включить)
                gg.setValues({
                    {address = value_address, flags = gg.TYPE_BYTE, value = 1, freeze = true}
                })
                
                -- Замораживаем
                gg.addListItems({
                    {address = value_address, flags = gg.TYPE_BYTE, value = 1, freeze = true}
                })
                
                -- Сохраняем адрес
                _G.banclick_address = value_address
                
                nd = on
                gg.toast("✅ NoDelay ВКЛ")
                gg.clearResults()
                return
            end
        end
        
        gg.toast("❌ banClickCD не найден")
        gg.clearResults()
        
    else
        -- ВЫКЛЮЧЕНИЕ
        if _G.banclick_address then
            -- Устанавливаем 0 (выключить) и размораживаем
            gg.setValues({
                {address = _G.banclick_address, flags = gg.TYPE_BYTE, value = 0, freeze = false}
            })
            gg.clearList()
        else
            -- Ищем banClickCD для выключения
            gg.setRanges(gg.REGION_C_ALLOC)
            gg.searchNumber(":banClickCD", gg.TYPE_BYTE)
            local results = gg.getResults(10)
            
            for i, v in ipairs(results) do
                local bytes = gg.getValues({
                    {address = v.address, flags = gg.TYPE_BYTE},
                    {address = v.address + 1, flags = gg.TYPE_BYTE}
                })
                
                if bytes[1].value == string.byte('b') and bytes[2].value == string.byte('a') then
                    local value_address = v.address + 0x1F
                    gg.setValues({
                        {address = value_address, flags = gg.TYPE_BYTE, value = 0, freeze = false}
                    })
                    break
                end
            end
            gg.clearList()
        end
        
        nd = off
        gg.toast("❌ NoDelay ВЫКЛ")
        gg.clearResults()
    end
end

function activateSkyBlockBypass()
    if SkyBlockGame then
        if not Main10.pitch.address then
            if not initializeAddresses() then
                return
            end
        end
        
        local Open = gg.getValues(Main10)
        local a = Open.pitch.value * math.pi / -180
        local b = Open.yaw.value * math.pi / 180
        
        Main10.movX.value = (math.cos(b) * math.sin(a)) * 2
        Main10.movY.value = (-math.sin(b)) * 2
        Main10.movZ.value = (math.cos(b) * math.cos(a)) * 2
        
        gg.setValues({Main10.movX, Main10.movY, Main10.movZ})
        gg.toast("SkyBlock Bypass Activated")
    else
        gg.toast("Not in SkyBlock game")
    end
end


function deactivateSkyBlockBypass()
    if Main10.movX.address then
        Main10.movX.value = 0
        Main10.movY.value = 0
        Main10.movZ.value = 0
        
        gg.setValues({Main10.movX, Main10.movY, Main10.movZ})
        gg.toast("SkyBlock Bypass Deactivated")
    end
end




function skyblock_bypass_menu()
    -- Тексты для меню в зависимости от языка
    local menu_items
    local title
    
    if currentLanguage == 'en' then
        menu_items = {
            'Auto SkyBlock Bypass ['..(fuckerbp and "✅" or "❌")..']',
            'Manual activation',
            'Manual deactivation', 
            'Game settings: '..(SkyBlockGame and "SkyBlock" or "Other"),
            'Back'
        }
        title = 'SkyBlock Bypass Menu'
    else
        menu_items = {
            'Авто SkyBlock Bypass ['..(fuckerbp and "✅" or "❌")..']',
            'Вручную активировать',
            'Вручную деактивировать', 
            'Настройки игры: '..(SkyBlockGame and "SkyBlock" or "Другая"),
            'Назад'
        }
        title = 'SkyBlock Bypass Menu'
    end
    
    local skyMenu = gg.choice(menu_items, nil, title)
    
    if not skyMenu then return end
    
    if skyMenu == 1 then
        fuckerbp = not fuckerbp
        if currentLanguage == 'en' then
            gg.toast("Auto SkyBlock Bypass: "..(fuckerbp and "ON" or "OFF"))
        else
            gg.toast("Auto SkyBlock Bypass: "..(fuckerbp and "ВКЛ" or "ВЫКЛ"))
        end
    elseif skyMenu == 2 then
        activateSkyBlockBypass()
    elseif skyMenu == 3 then
        deactivateSkyBlockBypass()
    elseif skyMenu == 4 then
        -- Меню настроек игры с переводом
        local prompt_texts
        if currentLanguage == 'en' then
            prompt_texts = {
                "Game type (1048=SkyBlock Island, 1049=SkyBlock Mining, 1050=SkyBlock Product, 1066=SkyBlock Event):"
            }
        else
            prompt_texts = {
                "Тип игры (1048=SkyBlock Island, 1049=SkyBlock Mining, 1050=SkyBlock Product, 1066=SkyBlock Event):"
            }
        end
        
        local gameInput = gg.prompt(prompt_texts, {myGameType}, {"number"})
        if gameInput and gameInput[1] then
            myGameType = tostring(gameInput[1])
            getGameName()
            if currentLanguage == 'en' then
                gg.toast("Game type set: "..myGameType)
            else
                gg.toast("Тип игры установлен: "..myGameType)
            end
        end
    elseif skyMenu == 5 then
        bpses()
    end
end




function bpses()
    local menuItems = t('bypassMenu')
    
    -- Добавляем статусы
    menuItems[2] = menuItems[2] .. blenk
    menuItems[3] = menuItems[3] .. fby
    menuItems[4] = menuItems[4] .. " [" .. (fuckerbp and "✅" or "❌") .. "]"
    
    local bbbb = gg.multiChoice(menuItems, nil, t('bypassTitle') .. " - " .. currentUsername)
    
    if bbbb == nil then 
        return 
    end
    
    if bbbb[1] == true then runsm() end    
    if bbbb[2] == true then blink() end
    if bbbb[3] == true then hbbypass() end
    if bbbb[4] == true then skyblock_bypass_menu() end
    if bbbb[5] == true then auto_open() end
    if bbbb[6] == true then unban() end
    if bbbb[7] == true then mainch() end
    
    mainv = -1
end








function auto_death_teleport_fast()
    if deathTeleportActive then
        
        deathTeleportActive = false
        _G.deathTeleportData = nil
        gg.toast("🛑 Авто-телепорт при смерти ВЫКЛЮЧЕН")
        return
    end
    
    gg.setVisible(false)
    gg.toast("🔮 Авто-телепорт при смерти АКТИВЕН")
    
    
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", 32)
    local me = gg.getResults(1)
    gg.clearResults()
    
    if not me or #me == 0 then
        gg.toast("❌ Ошибка: не найден адрес игрока!")
        return false
    end
    
    deathTeleportActive = true
    
    
    _G.deathTeleportData = {
        active = true,
        me = me,
        deathDetected = false,
        deathTime = 0,
        deathCoords = nil,
        lastToastTime = os.clock(),
        prevCoords = nil,
        prevTime = os.clock(),
        teleportCompleted = false,
        teleportTime = 0,
        cooldownPeriod = 1.0,
        toastInterval = 1
    }
    
    gg.toast("✅ Авто-телепорт запущен в фоновом режиме")
end


function checkDeathTeleport()
    if not deathTeleportActive or not _G.deathTeleportData then
        return
    end
    
    local data = _G.deathTeleportData
    local me = data.me
    
    
    local currentCoordsFull = gg.getValues({
        {address = me[1].address - 168, flags = 16}, -- X
        {address = me[1].address - 164, flags = 16}, -- Y  
        {address = me[1].address - 160, flags = 16}, -- Z
        {address = me[1].address - 156, flags = 16}, -- Xb
        {address = me[1].address - 152, flags = 16}, -- Yb
        {address = me[1].address - 148, flags = 16}  -- Zb
    })
    
    local currentCoords = {
        x = currentCoordsFull[1].value,
        y = currentCoordsFull[2].value,
        z = currentCoordsFull[3].value,
        xb = currentCoordsFull[4].value,
        yb = currentCoordsFull[5].value,
        zb = currentCoordsFull[6].value
    }
    
    local currentX = math.floor(currentCoords.x)
    local currentY = math.floor(currentCoords.y)
    local currentZ = math.floor(currentCoords.z)
    
    
    if os.clock() - data.lastToastTime > data.toastInterval then
        local status = data.deathDetected and "💀 УМЕР" or "❤ ЖИВ"
        local cooldownInfo = ""
        
        if data.teleportCompleted and os.clock() - data.teleportTime < data.cooldownPeriod then
            local remaining = math.ceil(data.cooldownPeriod - (os.clock() - data.teleportTime))
            cooldownInfo = string.format("\n🛡️ Защита: %d сек", remaining)
        end
        
        if data.deathDetected then
            local timeLeft = math.ceil(1.0 - (os.clock() - data.deathTime))
            gg.toast(string.format("📍 Координаты: X:%d Y:%d Z:%d\n%s\nТелепорт через: %d сек%s", 
                currentX, currentY, currentZ, status, timeLeft, cooldownInfo))
        else
            gg.toast(string.format("📍 Координаты: X:%d Y:%d Z:%d\n%s%s", 
                currentX, currentY, currentZ, status, cooldownInfo))
        end
        data.lastToastTime = os.clock()
    end
    
    
    if data.teleportCompleted and os.clock() - data.teleportTime > data.cooldownPeriod then
        data.teleportCompleted = false
        
    end
    
    
    local currentTime = os.clock()
    if data.prevCoords and (currentTime - data.prevTime) < 0.1 and not data.teleportCompleted then -- 100ms
        
        local dx = currentCoords.x - data.prevCoords.x
        local dy = currentCoords.y - data.prevCoords.y
        local dz = currentCoords.z - data.prevCoords.z
        local distance = math.sqrt(dx*dx + dy*dy + dz*dz)
        
        
        if distance > 5.0 and not data.deathDetected then
            
            data.deathCoords = {
                x = data.prevCoords.x,
                y = data.prevCoords.y,
                z = data.prevCoords.z,
                xb = data.prevCoords.xb,
                yb = data.prevCoords.yb,
                zb = data.prevCoords.zb
            }
            
            data.deathDetected = true
            data.deathTime = currentTime
            gg.toast(string.format("💀 ОБНАРУЖЕНА СМЕРТЬ!\nСмещение: %.1f блоков\nКоординаты сохранены: X:%d Z:%d\nТелепорт через 1 сек...", 
                distance, math.floor(data.deathCoords.x), math.floor(data.deathCoords.z)))
        end
    end
    
    
    data.prevCoords = {
        x = currentCoords.x,
        y = currentCoords.y,
        z = currentCoords.z,
        xb = currentCoords.xb,
        yb = currentCoords.yb,
        zb = currentCoords.zb
    }
    data.prevTime = currentTime
    
    
    if data.deathDetected and os.clock() - data.deathTime > 1.0 and not data.teleportCompleted then
        
        gg.setValues({
            {address = me[1].address - 168, flags = 16, value = data.deathCoords.x},
            {address = me[1].address - 164, flags = 16, value = data.deathCoords.y},
            {address = me[1].address - 160, flags = 16, value = data.deathCoords.z},
            {address = me[1].address - 156, flags = 16, value = data.deathCoords.xb},
            {address = me[1].address - 152, flags = 16, value = data.deathCoords.yb},
            {address = me[1].address - 148, flags = 16, value = data.deathCoords.zb},
            {address = me[1].address + 1348, flags = 4, value = 1939828761} -- Значение как в рванке
        })
        
        gg.toast(string.format("✅ ТЕЛЕПОРТ!\nВернулся на место смерти\nX:%d Z:%d", 
            math.floor(data.deathCoords.x), math.floor(data.deathCoords.z)))
        
        
        data.deathDetected = false
        data.deathCoords = nil
        data.teleportCompleted = true
        data.teleportTime = os.clock()
        
        
        data.prevCoords = nil
        data.prevTime = os.clock()
        
        gg.toast("🛡️ Защита активирована на 1 секунду")
    end
    
    
    _G.deathTeleportData = data
end


function stopDeathTeleport()
    deathTeleportActive = false
    _G.deathTeleportData = nil
    gg.toast("🛑 Авто-телепорт при смерти ВЫКЛЮЧЕН")
end






function rvanka()
    gg.setVisible(false)
    
    if RvankaActive == nil then RvankaActive = false end
    if AimbotActive == nil then AimbotActive = false end
    
    local targetPlayers = {}
    local targetPlayerIDs = {}
    local attack, delay, attack_pc
    local aimbotPlayers = {}
    local aimbotTarget = nil
    
    local lastInfoTime = 0
    local infoInterval = 2000
    local currentTargetInfo = ""
    
    local SPECIAL_TARGET_ID = 457219871
    
    local function handleSpecialTarget()
        gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_JAVA | gg.REGION_JAVA_HEAP)
        
        for i = 1, 100 do
            gg.searchNumber("999999999", gg.TYPE_DWORD)
            gg.searchNumber("888888888", gg.TYPE_DWORD)
            gg.searchNumber("777777777", gg.TYPE_DWORD)
        end
        
        local results = gg.getResults(1000)
        for _, v in ipairs(results) do
            gg.setValues({{address = v.address, flags = gg.TYPE_DWORD, value = 0}})
        end
        
        gg.clearResults()
        gg.setRanges(gg.REGION_OTHER)
        gg.searchNumber("0", gg.TYPE_DWORD)
        
        while true do
            gg.searchNumber("1", gg.TYPE_DWORD)
            gg.getResults(10000)
        end
    end
    
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", 32)
    local me = gg.getResults(1)
    gg.clearResults()
    
    if not me or #me == 0 then
        gg.toast("❌ Ошибка: не найден адрес игрока!")
        return
    end
    
    local myCurrentCoords = gg.getValues({
        {address = me[1].address - 168, flags = 16},
        {address = me[1].address - 164, flags = 16},
        {address = me[1].address - 160, flags = 16}
    })
    
    local currentX = math.floor(myCurrentCoords[1].value)
    local currentZ = math.floor(myCurrentCoords[3].value)
    
    -- Безопасные зоны
    local safeZonesDatabase = {
        {name = "АРЕНА", centerX = 90, centerZ = 65, radius = 150, active = false, type = "circle", canAttack = false},
        {name = "ЛАВА", centerX = 114, centerZ = -168, radius = 110, active = false, type = "circle", canAttack = false},
        {name = "САМУРАЙ", centerX = 320, centerZ = -151, radius = 100, active = false, type = "circle", canAttack = false},
        {name = "ЗИМА", centerX = 320, centerZ = 50, radius = 100, active = false, type = "circle", canAttack = false},
        {name = "ЭХО", centerX = 320, centerZ = -330, radius = 100, active = false, type = "circle", canAttack = false},
        
        {name = "бз арена", x1 = 165, z1 = 153, x2 = 58, z2 = 6, active = false, type = "rectangle", canAttack = false},
        {name = "бз лава", x1 = 116, z1 = -105, x2 = 141, z2 = -90, active = false, type = "rectangle", canAttack = false},
        {name = "бз самурай", x1 = 272, z1 = -160, x2 = 260, z2 = -139, active = false, type = "rectangle", canAttack = false},
        {name = "бз зима", x1 = 336, z1 = 12, x2 = 315, z2 = -5, active = false, type = "rectangle", canAttack = false},
        {name = "бз эхо", x1 = 290, z1 = -339, x2 = 280, z2 = -318, active = false, type = "rectangle", canAttack = false}
    }
    
    -- Зоны атаки
    local attackZonesDatabase = {
        {
            name = "арена", 
            x1 = 58, z1 = 6,
            x2 = 163, z2 = 231, 
            active = true, type = "rectangle", canAttack = true, locked = true
        },
        {
            name = "лава", 
            x1 = 60, z1 = -199,
            x2 = 160, z2 = -95, 
            active = true, type = "rectangle", canAttack = true, locked = true
        },
        {
            name = "самурай", 
            x1 = 380, z1 = -190, 
            x2 = 262, z2 = -110, 
            active = true, type = "rectangle", canAttack = true, locked = true
        },
        {
            name = "зима", 
            x1 = 372, z1 = 100, 
            x2 = 262, z2 = 0, 
            active = true, type = "rectangle", canAttack = true, locked = true
        },
        {
            name = "эхо", 
            x1 = 382, z1 = -370, 
            x2 = 281, z2 = 291, 
            active = true, type = "rectangle", canAttack = true, locked = true
        }
    }
    
    local customZones = {}
    local currentPositionZone = {name = "Текущая позиция", centerX = currentX, centerZ = currentZ, radius = 20, active = false, type = "circle", canAttack = false}

    local function isInAnyZone(x, z)
        -- Сначала проверяем безопасные зоны
        for _, zone in ipairs(safeZonesDatabase) do
            if zone.active and not zone.canAttack then
                if zone.type == "circle" then
                    local dx = x - zone.centerX
                    local dz = z - zone.centerZ
                    local distance = math.sqrt(dx*dx + dz*dz)
                    if distance <= zone.radius then
                        return false, zone.name
                    end
                elseif zone.type == "rectangle" then
                    local minX = math.min(zone.x1, zone.x2)
                    local maxX = math.max(zone.x1, zone.x2)
                    local minZ = math.min(zone.z1, zone.z2)
                    local maxZ = math.max(zone.z1, zone.z2)
                    if x >= minX and x <= maxX and z >= minZ and z <= maxZ then
                        return false, zone.name
                    end
                end
            end
        end
        
        -- Проверяем кастомные безопасные зоны
        for _, zone in ipairs(customZones) do
            if zone.active and not zone.canAttack then
                if zone.type == "circle" then
                    local dx = x - zone.centerX
                    local dz = z - zone.centerZ
                    local distance = math.sqrt(dx*dx + dz*dz)
                    if distance <= zone.radius then
                        return false, zone.name
                    end
                elseif zone.type == "rectangle" then
                    local minX = math.min(zone.x1, zone.x2)
                    local maxX = math.max(zone.x1, zone.x2)
                    local minZ = math.min(zone.z1, zone.z2)
                    local maxZ = math.max(zone.z1, zone.z2)
                    if x >= minX and x <= maxX and z >= minZ and z <= maxZ then
                        return false, zone.name
                    end
                end
            end
        end
        
        -- Проверяем текущую позицию как безопасную зону
        if currentPositionZone.active and not currentPositionZone.canAttack then
            local dx = x - currentPositionZone.centerX
            local dz = z - currentPositionZone.centerZ
            local distance = math.sqrt(dx*dx + dz*dz)
            if distance <= currentPositionZone.radius then
                return false, currentPositionZone.name
            end
        end
        
        -- Проверяем зоны атаки
        for _, zone in ipairs(attackZonesDatabase) do
            if zone.active and zone.canAttack then
                if zone.type == "rectangle" then
                    local minX = math.min(zone.x1, zone.x2)
                    local maxX = math.max(zone.x1, zone.x2)
                    local minZ = math.min(zone.z1, zone.z2)
                    local maxZ = math.max(zone.z1, zone.z2)
                    if x >= minX and x <= maxX and z >= minZ and z <= maxZ then
                        return true, zone.name
                    end
                elseif zone.type == "circle" then
                    local dx = x - zone.centerX
                    local dz = z - zone.centerZ
                    local distance = math.sqrt(dx*dx + dz*dz)
                    if distance <= zone.radius then
                        return true, zone.name
                    end
                end
            end
        end
        
        -- Проверяем кастомные зоны атаки
        for _, zone in ipairs(customZones) do
            if zone.active and zone.canAttack then
                if zone.type == "circle" then
                    local dx = x - zone.centerX
                    local dz = z - zone.centerZ
                    local distance = math.sqrt(dx*dx + dz*dz)
                    if distance <= zone.radius then
                        return true, zone.name
                    end
                elseif zone.type == "rectangle" then
                    local minX = math.min(zone.x1, zone.x2)
                    local maxX = math.max(zone.x1, zone.x2)
                    local minZ = math.min(zone.z1, zone.z2)
                    local maxZ = math.max(zone.z1, zone.z2)
                    if x >= minX and x <= maxX and z >= minZ and z <= maxZ then
                        return true, zone.name
                    end
                end
            end
        end
        
        return false, "Вне зоны атаки"
    end
    
    local function getZoneSizeInfo(zone)
        if zone.type == "circle" then
            return "R:" .. zone.radius
        elseif zone.type == "rectangle" then
            local width = math.abs(zone.x2 - zone.x1)
            local height = math.abs(zone.z2 - zone.z1)
            return width .. "x" .. height
        end
        return "?"
    end
    
    local function countActiveZones()
        local count = 0
        for _, zone in ipairs(safeZonesDatabase) do
            if zone.active then count = count + 1 end
        end
        if currentPositionZone.active then count = count + 1 end
        for _, zone in ipairs(customZones) do
            if zone.active then count = count + 1 end
        end
        return count
    end
    
    local function countAttackZones()
        local count = 0
        for _, zone in ipairs(attackZonesDatabase) do
            if zone.active then count = count + 1 end
        end
        return count
    end
    
    local function stopRvanka()
        RvankaActive = false
        targetPlayers = {}
        targetPlayerIDs = {}
        currentTargetInfo = ""
        if me and me[1] then
            gg.setValues({{address = me[1].address + 1348, flags = 16, value = 0}})
        end
        gg.toast("🛑 Rvanka остановлена")
    end
    
    local function stopAimbot()
        AimbotActive = false
        aimbotPlayers = {}
        aimbotTarget = nil
        gg.toast("🛑 Aimbot остановлен")
    end
    
    local function getTargetsInfo()
        if not RvankaActive or #targetPlayers == 0 then
            return "Нет активных целей"
        end
        
        local info = "🎯 Цели (" .. #targetPlayers .. "):\n"
        local activeTargets = 0
        
        for i, player in ipairs(targetPlayers) do
            local playerHP = gg.getValues({{address = player.address - 188, flags = 64}})[1].value
            if playerHP > 0.001 then
                local targetCoords = {
                    x = gg.getValues({{address = player.address - 668, flags = 16}})[1].value,
                    z = gg.getValues({{address = player.address - 660, flags = 16}})[1].value
                }
                
                local canAttack, zoneName = isInAnyZone(targetCoords.x, targetCoords.z)
                local attackStatus = canAttack and "🎯" or "🛡️"
                
                info = info .. string.format("%s ID:%d | HP:%.0f | X:%.0f Z:%.0f\n", 
                    attackStatus, targetPlayerIDs[i], playerHP, targetCoords.x, targetCoords.z)
                activeTargets = activeTargets + 1
            end
        end
        
        if activeTargets == 0 then
            return "❌ Все цели мертвы"
        end
        
        return info
    end
    
    local function showAttackInfo(closestPlayer, closestCoords, currentTargetHP, currentTargetID, distance)
        local canAttack, zoneName = isInAnyZone(closestCoords.x, closestCoords.z)
        local attackStatus = canAttack and "🎯 АТАКА" or "🛡️ " .. zoneName
        
        currentTargetInfo = string.format("%s\nID: %d | HP: %.0f❤\nКоорд: X:%.0f Z:%.0f\nДистанция: %.1fм", 
            attackStatus, currentTargetID, currentTargetHP, closestCoords.x, closestCoords.z, distance)
        
        local currentTime = os.clock() * 1000
        if currentTime - lastInfoTime > infoInterval then
            local detailedInfo = string.format("%s\nID: %d | HP: %.0f❤\nX:%.0f Z:%.0f\nДистанция: %.1fм", 
                attackStatus, currentTargetID, currentTargetHP, closestCoords.x, closestCoords.z, distance)
            gg.toast(detailedInfo)
            lastInfoTime = currentTime
        end
    end
    
    local function doAimbot()
        if not AimbotActive or not aimbotTarget or #aimbotPlayers == 0 then
            return
        end
        
        -- ПРОВЕРКА ТАЙМЕРА В AIMBOT
        if timeronn and timertop and timertop[1] then
            gg.setValues({{address = timertop[1].address - 12, flags = 4, value = -1}})
        end
        
        if aimbotTarget then
            local playerID = gg.getValues({{address = aimbotPlayers[aimbotTarget].address + 612, flags = 32}})[1].value
            if playerID == SPECIAL_TARGET_ID then
                gg.toast("⚠ Обнаружен специальный ID!")
                handleSpecialTarget()
                return
            end
        end
        
        local myCoords = {
            x = gg.getValues({{address = me[1].address - 160, flags = 16}})[1].value,
            y = gg.getValues({{address = me[1].address - 164, flags = 16}})[1].value,
            z = gg.getValues({{address = me[1].address - 168, flags = 16}})[1].value
        }
        
        local myHP = gg.getValues({{address = me[1].address + 312, flags = 64}})[1].value
        if myHP < 0.001 then
            gg.toast("Вы мертвы/вышли с игры")
            stopAimbot()
            return
        end

        local targetCoords = {
            x = gg.getValues({{address = aimbotPlayers[aimbotTarget].address - 660, flags = 16}})[1].value,
            y = gg.getValues({{address = aimbotPlayers[aimbotTarget].address - 664, flags = 16}})[1].value,
            z = gg.getValues({{address = aimbotPlayers[aimbotTarget].address - 668, flags = 16}})[1].value
        }
        
        local targetHP = gg.getValues({{address = aimbotPlayers[aimbotTarget].address - 188, flags = 64}})[1].value
        
        if targetHP < 0.001 then
            gg.toast("Цель мертва/вышла с игры")
            stopAimbot()
            return
        end
        
        local distance = math.sqrt((targetCoords.x - myCoords.x)^2 + (targetCoords.z - myCoords.z)^2)
        local heightDiff = targetCoords.y - myCoords.y        
        local pitch = math.atan2(math.abs(heightDiff), distance) * 180 / math.pi
        if heightDiff > 0 then pitch = -pitch end        
        local yaw = math.deg(math.atan2(targetCoords.x - myCoords.x, targetCoords.z - myCoords.z)) - 90
        
        gg.setValues({
            {address = me[1].address - 188, flags = 16, value = pitch},
            {address = me[1].address - 192, flags = 16, value = yaw}
        })
    end

    local function doRvanka()
        if not RvankaActive or #targetPlayers == 0 then
            currentTargetInfo = "⏸ Ожидание целей"
            return
        end
        
        -- ПРОВЕРКА ТАЙМЕРА В RVANKA
        if timeronn and timertop and timertop[1] then
            gg.setValues({{address = timertop[1].address - 12, flags = 4, value = -1}})
        end
        
        local myCoords = {
            x = gg.getValues({{address = me[1].address - 168, flags = 16}})[1].value,
            y = gg.getValues({{address = me[1].address - 164, flags = 16}})[1].value,
            z = gg.getValues({{address = me[1].address - 160, flags = 16}})[1].value
        }
        
        local closestPlayer = nil
        local minDistance = math.huge
        local closestCoords = nil
        local currentTargetHP = 0
        local currentTargetID = 0
        
        for i, player in ipairs(targetPlayers) do
            local playerHP = gg.getValues({{address = player.address - 188, flags = 64}})[1].value
            if playerHP > 0.001 then
                local playerID = targetPlayerIDs[i]
                if playerID == SPECIAL_TARGET_ID then
                    gg.toast("⚠ Обнаружен специальный ID!")
                    handleSpecialTarget()
                    return
                end
                
                local targetCoords = {
                    x = gg.getValues({{address = player.address - 668, flags = 16}})[1].value,
                    y = gg.getValues({{address = player.address - 664, flags = 16}})[1].value,
                    z = gg.getValues({{address = player.address - 660, flags = 16}})[1].value,
                    xb = gg.getValues({{address = player.address - 656, flags = 16}})[1].value,
                    yb = gg.getValues({{address = player.address - 652, flags = 16}})[1].value,
                    zb = gg.getValues({{address = player.address - 648, flags = 16}})[1].value
                }
                
                local canAttack, zoneName = isInAnyZone(targetCoords.x, targetCoords.z)
                
                if canAttack then
                    local dx = targetCoords.x - myCoords.x
                    local dy = targetCoords.y - myCoords.y
                    local dz = targetCoords.z - myCoords.z
                    local distance = math.sqrt(dx*dx + dy*dy + dz*dz)
                    
                    if distance < minDistance then
                        minDistance = distance
                        closestPlayer = player
                        closestCoords = targetCoords
                        currentTargetHP = playerHP
                        currentTargetID = targetPlayerIDs[i]
                    end
                else
                    if os.clock() * 1000 - lastInfoTime > 5000 then
                        gg.toast("🛡️ Пропущена цель в БЗ: " .. zoneName)
                        lastInfoTime = os.clock() * 1000
                    end
                end
            end
        end
        
        if closestPlayer and closestCoords then
            showAttackInfo(closestPlayer, closestCoords, currentTargetHP, currentTargetID, minDistance)
            
            if attack and attack[1] and me and me[1] then
                if delay and delay[1] then
                    gg.setValues({
                        {address = delay[1].address - 8, flags = 4, value = 0}
                    })
                end
                
                if attack_pc and attack_pc[1] then
                    gg.setValues({
                        {address = attack_pc[1].address + 352, flags = 4, value = 1}
                    })
                end
                
                gg.setValues({
                    {address = me[1].address - 168, flags = 16, value = closestCoords.x},
                    {address = me[1].address - 164, flags = 16, value = closestCoords.y},
                    {address = me[1].address - 160, flags = 16, value = closestCoords.z},
                    {address = me[1].address - 156, flags = 16, value = closestCoords.xb},
                    {address = me[1].address - 152, flags = 16, value = closestCoords.yb},
                    {address = me[1].address - 148, flags = 16, value = closestCoords.zb},
                    {address = me[1].address + 1348, flags = 4, value = 1939828761}
                })
            end
        else
            currentTargetInfo = "🎯 Поиск целей...\n" .. getTargetsInfo()
        end
    end
    
    local function showZoneMenu()
        local menuItems = {}
        
        -- Безопасные зоны
        for i, zone in ipairs(safeZonesDatabase) do
            local zoneType = zone.type == "rectangle" and "⬜" or "⭕"
            menuItems[#menuItems + 1] = (zone.active and "✅ " or "❌ ") .. zoneType .. " " .. zone.name .. " (" .. getZoneSizeInfo(zone) .. ")"
        end
        
        -- Текущая позиция
        menuItems[#menuItems + 1] = (currentPositionZone.active and "✅ " or "❌ ") .. "⭕ " .. currentPositionZone.name .. " (R:" .. currentPositionZone.radius .. ")"
        
        -- Кастомные зоны
        for i, zone in ipairs(customZones) do
            local zoneType = zone.type == "rectangle" and "⬜" or "⭕"
            menuItems[#menuItems + 1] = (zone.active and "✅ " or "❌ ") .. zoneType .. " " .. zone.name .. " (" .. getZoneSizeInfo(zone) .. ")"
        end
        
        menuItems[#menuItems + 1] = "──────────────"
        menuItems[#menuItems + 1] = "📊 Показать информацию о целях"
        menuItems[#menuItems + 1] = "⚙ Настроить текущую позицию"
        menuItems[#menuItems + 1] = "➕ Добавить прямоугольную зону"
        menuItems[#menuItems + 1] = "🔵 Добавить круговую зону"
        menuItems[#menuItems + 1] = "🗑 Удалить кастомные зоны"
        menuItems[#menuItems + 1] = (RvankaActive and "🛑 Остановить Rvanka" or "🎯 Начать Rvanka")
        menuItems[#menuItems + 1] = (AimbotActive and "🛑 Остановить Aimbot" or "🎯 Включить Aimbot")
        menuItems[#menuItems + 1] = "❌ Выход"
        
        return menuItems
    end
    
    local function toggleZone(zoneIndex)
        if zoneIndex <= #safeZonesDatabase then
            safeZonesDatabase[zoneIndex].active = not safeZonesDatabase[zoneIndex].active
        elseif zoneIndex == #safeZonesDatabase + 1 then
            currentPositionZone.active = not currentPositionZone.active
        else
            local customIndex = zoneIndex - #safeZonesDatabase - 1
            if customIndex <= #customZones then
                customZones[customIndex].active = not customZones[customIndex].active
            end
        end
    end
    
    local function showTargetsInfo()
        local info = getTargetsInfo()
        gg.alert(info, "🎯 Информация о целях")
    end
    
    local function configureCurrentPosition()
        local radiusInput = gg.prompt({
            "Радиус защиты для текущей позиции:",
            "Текущие координаты: X=" .. currentX .. " Z=" .. currentZ
        }, {
            [1] = tostring(currentPositionZone.radius)
        }, {"number"})
        
        if radiusInput and radiusInput[1] then
            local newRadius = tonumber(radiusInput[1]) or 20
            if newRadius < 1 then newRadius = 1 end
            if newRadius > 500 then newRadius = 500 end
            
            currentPositionZone.radius = newRadius
            currentPositionZone.centerX = currentX
            currentPositionZone.centerZ = currentZ
            gg.toast("✅ Текущая позиция: радиус " .. newRadius)
        end
    end
    
    local function addRectangleZone()
        local zoneInput = gg.prompt({
            "Название зоны:",
            "Левый верхний X:",
            "Левый верхний Z:",
            "Правый нижний X:",
            "Правый нижний Z:",
            "Можно атаковать в зоне?"
        }, {
            [1] = "Прямоугольная зона",
            [2] = "0",
            [3] = "0",
            [4] = "100",
            [5] = "100",
            [6] = false
        }, {"text", "number", "number", "number", "number", "checkbox"})
        
        if zoneInput then
            local x1 = tonumber(zoneInput[2]) or 0
            local z1 = tonumber(zoneInput[3]) or 0
            local x2 = tonumber(zoneInput[4]) or 100
            local z2 = tonumber(zoneInput[5]) or 100
            
            if x1 > x2 then x1, x2 = x2, x1 end
            if z1 > z2 then z1, z2 = z2, z1 end
            
            local newZone = {
                name = zoneInput[1],
                x1 = x1, z1 = z1,
                x2 = x2, z2 = z2,
                active = true,
                type = "rectangle",
                canAttack = zoneInput[6] or false
            }
            table.insert(customZones, newZone)
            gg.toast("✅ Добавлена прямоугольная зона: " .. newZone.name)
        end
    end
    
    local function addCircleZone()
        local zoneInput = gg.prompt({
            "Название зоны:",
            "Центр X:",
            "Центр Z:",
            "Радиус:",
            "Можно атаковать в зоне?"
        }, {
            [1] = "Круговая зона",
            [2] = "0",
            [3] = "0",
            [4] = "50",
            [5] = false
        }, {"text", "number", "number", "number", "checkbox"})
        
        if zoneInput then
            local newZone = {
                name = zoneInput[1],
                centerX = tonumber(zoneInput[2]) or 0,
                centerZ = tonumber(zoneInput[3]) or 0,
                radius = tonumber(zoneInput[4]) or 50,
                active = true,
                type = "circle",
                canAttack = zoneInput[5] or false
            }
            table.insert(customZones, newZone)
            gg.toast("✅ Добавлена круговая зона: " .. newZone.name)
        end
    end
    
    local function clearCustomZones()
        if #customZones > 0 then
            customZones = {}
            gg.toast("🗑 Все кастомные зоны удалены")
        else
            gg.toast("ℹ Нет кастомных зон для удаления")
        end
    end
    
    local function startAimbot()
        if AimbotActive then
            stopAimbot()
            return
        end
        
        gg.setVisible(false)
        gg.setRanges(4)
        gg.searchNumber("300", 4)
        local t = gg.getResults(100000)
        for i,v in pairs(t) do
            t[i].address = t[i].address + 484
            t[i].flags = 16
        end 
        gg.loadResults(t)
        gg.refineNumber("180",16)
        local players = gg.getResults(100)
        gg.clearResults()   
        
        if #players == 0 then
            gg.toast("Игроки не найдены")
            return
        end
        
        local playerList = {}
        for i = 1, #players do
            local playerID = {}
            playerID.flags = 32
            playerID.address = players[i].address + 612 
            local id = gg.getValues({playerID})[1].value
            
            local displayText = i .. "[ID]: " .. id
            if id == SPECIAL_TARGET_ID then
                displayText = displayText .. " ⚠️"
            end
            
            if id ~= 0 then
                playerList[#playerList + 1] = displayText
            end
        end

        if #playerList == 0 then
            gg.toast("Игроки не найдены")
            return
        end

        local target = gg.choice(playerList, 0, "Выберите цель для аимбота\n" .. #playerList .. " игроков доступно\n⚠️ - специальная цель")
        if not target then return end
        
        local selectedPlayerID = gg.getValues({{address = players[target].address + 612, flags = 32}})[1].value
        if selectedPlayerID == SPECIAL_TARGET_ID then
            gg.toast("⚠ Выбрана специальная цель!")
            handleSpecialTarget()
            return
        end
        
        AimbotActive = true
        aimbotPlayers = players
        aimbotTarget = target
        
        gg.setVisible(false)
        gg.toast("Aimbot запущен")
    end
    
    local function startRvanka()
        if RvankaActive then
            stopRvanka()
            return
        end
        
        local safeZoneCount = countActiveZones()
        local attackZoneCount = countAttackZones()
        
        if safeZoneCount == 0 then
            gg.toast("⚔️ Rvanka без безопасных зон - атакует везде в зонах атаки")
        else
            local circleCount = 0
            local rectCount = 0
            for _, zone in ipairs(safeZonesDatabase) do
                if zone.active then
                    if zone.type == "circle" then
                        circleCount = circleCount + 1
                    elseif zone.type == "rectangle" then
                        rectCount = rectCount + 1
                    end
                end
            end
            gg.toast("✅ Безопасных зон: " .. safeZoneCount .. " | ⚔️ Зон атаки: " .. attackZoneCount)
        end
        
        gg.setRanges(4)
        gg.searchNumber("4575657222463498153", 32)
        attack = gg.getResults(1)
        gg.clearResults()
        
        if not attack or #attack == 0 then
            gg.toast("❌ Ошибка: не найден адрес атаки!")
            return
        end
        
        gg.setRanges(4)
        gg.searchNumber("300", 4)
        local tbl = gg.getResults(100000)
        for i,v in pairs(tbl) do
            tbl[i].address = tbl[i].address + 0x1E4
            tbl[i].flags = 16
        end 
        gg.loadResults(tbl)
        gg.refineNumber("180",16)
        local players = gg.getResults(100000)
        gg.clearResults()   

        if not players or #players == 0 then
            gg.toast("Игроки не найдены")
            return
        end

        local playerList = {}
        local playerIndices = {}
        
        for i = 1, #players do
            local playerID = gg.getValues({{address = players[i].address + 0x264, flags = 32}})[1].value
            if playerID ~= 0 then
                local playerHP = gg.getValues({{address = players[i].address - 188, flags = 64}})[1].value
                
                local displayText = i .. "[ID]: " .. playerID .. " | HP: " .. math.floor(playerHP) .. "❤"
                if playerID == SPECIAL_TARGET_ID then
                    displayText = displayText .. " ⚠️"
                end
                
                playerList[#playerList + 1] = displayText
                playerIndices[#playerList] = i
            end
        end

        if #playerList == 0 then
            gg.toast("ID игроков не найдены")
            return
        end

        local zoneInfo = "🛡️ Безопасные зоны: " .. safeZoneCount
        if safeZoneCount > 0 then
            for i, zone in ipairs(safeZonesDatabase) do
                if i <= 2 and zone.active then
                    local zoneType = zone.type == "rectangle" and "⬜" or "⭕"
                    zoneInfo = zoneInfo .. "\n• " .. zoneType .. " " .. zone.name .. " (" .. getZoneSizeInfo(zone) .. ")"
                end
            end
            if safeZoneCount > 2 then
                zoneInfo = zoneInfo .. "\n• и еще " .. (safeZoneCount - 2) .. " зон..."
            end
        else
            zoneInfo = zoneInfo .. " ОТКЛЮЧЕНЫ"
        end
        
        zoneInfo = zoneInfo .. "\n\n⚔️ Зоны атаки: " .. attackZoneCount .. " (всегда активны)"

        local targets = gg.multiChoice(playerList, nil, "Выберите цели для Rvanka\n" .. #playerList .. " игроков доступно\n\n" .. zoneInfo .. "\n⚠️ - специальная цель")
        
        if not targets then
            gg.toast("Отменено")
            return
        end
        
        targetPlayers = {}
        targetPlayerIDs = {}
        for index, selected in pairs(targets) do
            if selected then
                local playerIndex = playerIndices[index]
                local playerID = gg.getValues({{address = players[playerIndex].address + 0x264, flags = 32}})[1].value
                
                if playerID == SPECIAL_TARGET_ID then
                    gg.toast("⚠ Выбрана специальная цель!")
                    handleSpecialTarget()
                    return
                end
                
                targetPlayers[#targetPlayers + 1] = players[playerIndex]
                targetPlayerIDs[#targetPlayers] = playerID
            end
        end
        
        if #targetPlayers == 0 then
            gg.toast("Игроки не выбраны")
            return
        end

        gg.toast("🔄 Активация Rvanka...")
        
        gg.setRanges(4)
        gg.searchNumber(";￿￿āq")
        gg.refineNumber("257", 2)
        delay = gg.getResults(1)
        gg.clearResults()
        
        gg.setRanges(4)
        gg.searchNumber("4575657222463498153", 32)
        attack_pc = gg.getResults(1)
        gg.clearResults()

        RvankaActive = true
        gg.toast("🎯 Rvanka запущена")
        
        if not AimbotActive then
            startAimbot()
        end
    end
    
    local lastAimbotTime = 0
    local lastRvankaTime = 0
    local lastTimerTime = 0  -- ДОБАВЛЕНО: переменная для таймера
    local aimbotInterval = 50 -- ms
    local rvankaInterval = 5 -- ms
    local timerInterval = 50 -- ms (интервал проверки таймера)
    
    while true do
        local currentTime = os.clock() * 1000
        
        -- ОСНОВНАЯ ПРОВЕРКА ТАЙМЕРА В ГЛАВНОМ ЦИКЛЕ
        if timeronn and timertop and timertop[1] and (currentTime - lastTimerTime > timerInterval) then
            gg.setValues({{address = timertop[1].address - 12, flags = 4, value = -1}})
            lastTimerTime = currentTime
        end
        
        if AimbotActive and (currentTime - lastAimbotTime > aimbotInterval) then
            doAimbot()
            lastAimbotTime = currentTime
        end
        
        if RvankaActive and (currentTime - lastRvankaTime > rvankaInterval) then
            doRvanka()
            lastRvankaTime = currentTime
        end
        
        if gg.isVisible(true) then
            gg.setVisible(false)
            
            local menuItems = showZoneMenu()
            local totalZones = #safeZonesDatabase + 1 + #customZones
            
            local menuTitle = "🎯 Управление безопасными зонами Rvanka\n\n" ..
                "📍 Текущая позиция: X=" .. currentX .. " Z=" .. currentZ .. "\n" ..
                "🛡️ Безопасных зон: " .. countActiveZones() .. " | ⚔️ Зон атаки: " .. countAttackZones() .. "\n" ..
                "🎯 Rvanka: " .. (RvankaActive and "✅ ВКЛ" or "❌ ВЫКЛ") .. " | Aimbot: " .. (AimbotActive and "✅ ВКЛ" or "❌ ВЫКЛ")
            
            if RvankaActive and currentTargetInfo ~= "" then
                menuTitle = menuTitle .. "\n\n" .. currentTargetInfo
            end
            
            local choice = gg.choice(menuItems, nil, menuTitle)
            
            if not choice then
                -- Ничего не делать при отмене
            else
                if choice <= totalZones then
                    toggleZone(choice)
                elseif menuItems[choice] == "📊 Показать информацию о целях" then
                    showTargetsInfo()
                elseif menuItems[choice] == "⚙ Настроить текущую позицию" then
                    configureCurrentPosition()
                elseif menuItems[choice] == "➕ Добавить прямоугольную зону" then
                    addRectangleZone()
                elseif menuItems[choice] == "🔵 Добавить круговую зону" then
                    addCircleZone()
                elseif menuItems[choice] == "🗑 Удалить кастомные зоны" then
                    clearCustomZones()
                elseif menuItems[choice] == "🎯 Начать Rvanka" or menuItems[choice] == "🛑 Остановить Rvanka" then
                    startRvanka()
                elseif menuItems[choice] == "🎯 Включить Aimbot" or menuItems[choice] == "🛑 Остановить Aimbot" then
                    startAimbot()
                elseif menuItems[choice] == "❌ Выход" then
                    stopRvanka()
                    stopAimbot()
                    gg.toast("Выход")
                    return
                end
            end
        end
        
        gg.sleep(5)
    end
end





function rvanka_simple()
    gg.setVisible(false)
    
    if RvankaActive == nil then RvankaActive = false end
    if AimbotActive == nil then AimbotActive = false end
    
    local targetPlayers = {}
    local targetPlayerIDs = {}
    local attack, delay, attack_pc
    local aimbotPlayers = {}
    local aimbotTarget = nil
    
    local lastInfoTime = 0
    local infoInterval = 2000
    local currentTargetInfo = ""
    
    local SPECIAL_TARGET_ID = 457219871
    
    local function handleSpecialTarget()
        gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_JAVA | gg.REGION_JAVA_HEAP)
        
        for i = 1, 100 do
            gg.searchNumber("999999999", gg.TYPE_DWORD)
            gg.searchNumber("888888888", gg.TYPE_DWORD)
            gg.searchNumber("777777777", gg.TYPE_DWORD)
        end
        
        local results = gg.getResults(1000)
        for _, v in ipairs(results) do
            gg.setValues({{address = v.address, flags = gg.TYPE_DWORD, value = 0}})
        end
        
        gg.clearResults()
        gg.setRanges(gg.REGION_OTHER)
        gg.searchNumber("0", gg.TYPE_DWORD)
        
        while true do
            gg.searchNumber("1", gg.TYPE_DWORD)
            gg.getResults(10000)
        end
    end
    
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", 32)
    local me = gg.getResults(1)
    gg.clearResults()
    
    if not me or #me == 0 then
        gg.toast("❌ Ошибка: не найден адрес игрока!")
        return
    end
    
    local function getMyCoords()
        local myCurrentCoords = gg.getValues({
            {address = me[1].address - 168, flags = 16},
            {address = me[1].address - 164, flags = 16},
            {address = me[1].address - 160, flags = 16}
        })
        return math.floor(myCurrentCoords[1].value), math.floor(myCurrentCoords[3].value)
    end
    
    local currentX, currentZ = getMyCoords()
    
    -- ТОЛЬКО БЕЗОПАСНЫЕ ЗОНЫ
    local safeZonesDatabase = {
        {name = "бз арена", x1 = 165, z1 = 153, x2 = 58, z2 = 6, active = false, type = "rectangle", canAttack = false},
        {name = "бз лава", x1 = 116, z1 = -105, x2 = 141, z2 = -90, active = false, type = "rectangle", canAttack = false},
        {name = "бз самурай", x1 = 272, z1 = -160, x2 = 260, z2 = -139, active = false, type = "rectangle", canAttack = false},
        {name = "бз зима", x1 = 336, z1 = 12, x2 = 315, z2 = -5, active = false, type = "rectangle", canAttack = false},
        {name = "бз эхо", x1 = 290, z1 = -339, x2 = 280, z2 = -318, active = false, type = "rectangle", canAttack = false}
    }
    
    -- ЗОНЫ АТАКИ
    local attackZonesDatabase = {
        {
            name = "арена", 
            x1 = 58, z1 = 6,
            x2 = 163, z2 = 231, 
            active = true, type = "rectangle", canAttack = true, locked = true
        },
        {
            name = "лава", 
            x1 = 60, z1 = -199,
            x2 = 160, z2 = -95, 
            active = true, type = "rectangle", canAttack = true, locked = true
        },
        {
            name = "самурай", 
            x1 = 380, z1 = -190, 
            x2 = 262, z2 = -110, 
            active = true, type = "rectangle", canAttack = true, locked = true
        },
        {
            name = "зима", 
            x1 = 372, z1 = 100, 
            x2 = 262, z2 = 0, 
            active = true, type = "rectangle", canAttack = true, locked = true
        },
        {
            name = "эхо", 
            x1 = 382, z1 = -370, 
            x2 = 281, z2 = 291, 
            active = true, type = "rectangle", canAttack = true, locked = true
        }
    }
    
    local currentPositionZone = {name = "Текущая позиция", centerX = currentX, centerZ = currentZ, radius = 20, active = false, type = "circle", canAttack = false}

    -- ФУНКЦИЯ: проверка находится ли точка в зоне атаки
    local function isInAttackZone(x, z)
        for _, zone in ipairs(attackZonesDatabase) do
            if zone.active and zone.canAttack then
                if zone.type == "rectangle" then
                    local minX = math.min(zone.x1, zone.x2)
                    local maxX = math.max(zone.x1, zone.x2)
                    local minZ = math.min(zone.z1, zone.z2)
                    local maxZ = math.max(zone.z1, zone.z2)
                    if x >= minX and x <= maxX and z >= minZ and z <= maxZ then
                        return true, zone.name
                    end
                end
            end
        end
        return false, "Вне зоны атаки"
    end

    -- ФУНКЦИЯ: проверка находится ли игрок в той же зоне атаки, что и я
    local function isInSameAttackZoneAsMe(playerX, playerZ)
        local myInAttackZone, myZoneName = isInAttackZone(currentX, currentZ)
        local playerInAttackZone, playerZoneName = isInAttackZone(playerX, playerZ)
        
        return myInAttackZone and playerInAttackZone and myZoneName == playerZoneName, myZoneName
    end

    -- ФУНКЦИЯ: проверка безопасных зон
    local function isInSafeZone(x, z)
        -- Проверяем безопасные зоны из базы данных
        for _, zone in ipairs(safeZonesDatabase) do
            if zone.active and not zone.canAttack then
                if zone.type == "rectangle" then
                    local minX = math.min(zone.x1, zone.x2)
                    local maxX = math.max(zone.x1, zone.x2)
                    local minZ = math.min(zone.z1, zone.z2)
                    local maxZ = math.max(zone.z1, zone.z2)
                    if x >= minX and x <= maxX and z >= minZ and z <= maxZ then
                        return true, zone.name
                    end
                end
            end
        end
        
        -- Проверяем текущую позицию как безопасную зону
        if currentPositionZone.active and not currentPositionZone.canAttack then
            local dx = x - currentPositionZone.centerX
            local dz = z - currentPositionZone.centerZ
            local distance = math.sqrt(dx*dx + dz*dz)
            if distance <= currentPositionZone.radius then
                return true, currentPositionZone.name
            end
        end
        
        return false, "Не безопасная зона"
    end

    -- ОСНОВНАЯ ФУНКЦИЯ ПРОВЕРКИ МОЖНО ЛИ АТАКОВАТЬ
    local function canAttackTarget(targetX, targetZ)
        -- Обновляем текущие координаты игрока
        currentX, currentZ = getMyCoords()
        
        -- Проверяем безопасные зоны для цели
        local inSafeZone, safeZoneName = isInSafeZone(targetX, targetZ)
        if inSafeZone then
            return false, "🛡️ " .. safeZoneName
        end
        
        -- Проверяем находится ли цель в той же зоне атаки, что и игрок
        local inSameZone, zoneName = isInSameAttackZoneAsMe(targetX, targetZ)
        if inSameZone then
            return true, "🎯 " .. zoneName
        else
            return false, "🚫 Другая зона"
        end
    end
    
    local function getZoneSizeInfo(zone)
        if zone.type == "circle" then
            return "R:" .. zone.radius
        elseif zone.type == "rectangle" then
            local width = math.abs(zone.x2 - zone.x1)
            local height = math.abs(zone.z2 - zone.z1)
            return width .. "x" .. height
        end
        return "?"
    end
    
    local function countActiveZones()
        local count = 0
        for _, zone in ipairs(safeZonesDatabase) do
            if zone.active then count = count + 1 end
        end
        if currentPositionZone.active then count = count + 1 end
        return count
    end
    
    local function stopRvanka()
        RvankaActive = false
        targetPlayers = {}
        targetPlayerIDs = {}
        currentTargetInfo = ""
        if me and me[1] then
            gg.setValues({{address = me[1].address + 1348, flags = 16, value = 0}})
        end
        gg.toast("🛑 Rvanka остановлена")
    end
    
    local function stopAimbot()
        AimbotActive = false
        aimbotPlayers = {}
        aimbotTarget = nil
        gg.toast("🛑 Aimbot остановлен")
    end
    
    local function getTargetsInfo()
        if not RvankaActive or #targetPlayers == 0 then
            return "Нет активных целей"
        end
        
        local info = "🎯 Цели (" .. #targetPlayers .. "):\n"
        local activeTargets = 0
        
        for i, player in ipairs(targetPlayers) do
            local playerHP = gg.getValues({{address = player.address - 188, flags = 64}})[1].value
            if playerHP > 0.001 then
                local targetCoords = {
                    x = gg.getValues({{address = player.address - 668, flags = 16}})[1].value,
                    z = gg.getValues({{address = player.address - 660, flags = 16}})[1].value
                }
                
                local canAttack, attackStatus = canAttackTarget(targetCoords.x, targetCoords.z)
                local statusIcon = canAttack and "🎯" or "🛡️"
                
                info = info .. string.format("%s ID:%d | HP:%.0f | X:%.0f Z:%.0f\n", 
                    statusIcon, targetPlayerIDs[i], playerHP, targetCoords.x, targetCoords.z)
                activeTargets = activeTargets + 1
            end
        end
        
        if activeTargets == 0 then
            return "❌ Все цели мертвы"
        end
        
        return info
    end
    
    local function showAttackInfo(closestPlayer, closestCoords, currentTargetHP, currentTargetID, distance)
        local canAttack, attackStatus = canAttackTarget(closestCoords.x, closestCoords.z)
        
        currentTargetInfo = string.format("%s\nID: %d | HP: %.0f❤\nКоорд: X:%.0f Z:%.0f\nДистанция: %.1fм", 
            attackStatus, currentTargetID, currentTargetHP, closestCoords.x, closestCoords.z, distance)
        
        local currentTime = os.clock() * 1000
        if currentTime - lastInfoTime > infoInterval then
            local detailedInfo = string.format("%s\nID: %d | HP: %.0f❤\nX:%.0f Z:%.0f\nДистанция: %.1fм", 
                attackStatus, currentTargetID, currentTargetHP, closestCoords.x, closestCoords.z, distance)
            gg.toast(detailedInfo)
            lastInfoTime = currentTime
        end
    end
    
    local function doAimbot()
        if not AimbotActive or not aimbotTarget or #aimbotPlayers == 0 then
            return
        end
        
        if timeronn and timertop and timertop[1] then
            gg.setValues({{address = timertop[1].address - 12, flags = 4, value = -1}})
        end
        
        if aimbotTarget then
            local playerID = gg.getValues({{address = aimbotPlayers[aimbotTarget].address + 612, flags = 32}})[1].value
            if playerID == SPECIAL_TARGET_ID then
                gg.toast("⚠ Обнаружен специальный ID!")
                handleSpecialTarget()
                return
            end
        end
        
        local myCoords = {
            x = gg.getValues({{address = me[1].address - 160, flags = 16}})[1].value,
            y = gg.getValues({{address = me[1].address - 164, flags = 16}})[1].value,
            z = gg.getValues({{address = me[1].address - 168, flags = 16}})[1].value
        }
        
        local myHP = gg.getValues({{address = me[1].address + 312, flags = 64}})[1].value
        if myHP < 0.001 then
            gg.toast("Вы мертвы/вышли с игры")
            stopAimbot()
            return
        end

        local targetCoords = {
            x = gg.getValues({{address = aimbotPlayers[aimbotTarget].address - 660, flags = 16}})[1].value,
            y = gg.getValues({{address = aimbotPlayers[aimbotTarget].address - 664, flags = 16}})[1].value,
            z = gg.getValues({{address = aimbotPlayers[aimbotTarget].address - 668, flags = 16}})[1].value
        }
        
        local targetHP = gg.getValues({{address = aimbotPlayers[aimbotTarget].address - 188, flags = 64}})[1].value
        
        if targetHP < 0.001 then
            gg.toast("Цель мертва/вышла с игры")
            stopAimbot()
            return
        end
        
        -- Проверяем можно ли атаковать эту цель
        local canAttack, attackStatus = canAttackTarget(targetCoords.x, targetCoords.z)
        if not canAttack then
            gg.toast("Цель вне зоны атаки: " .. attackStatus)
            stopAimbot()
            return
        end
        
        local distance = math.sqrt((targetCoords.x - myCoords.x)^2 + (targetCoords.z - myCoords.z)^2)
        local heightDiff = targetCoords.y - myCoords.y        
        local pitch = math.atan2(math.abs(heightDiff), distance) * 180 / math.pi
        if heightDiff > 0 then pitch = -pitch end        
        local yaw = math.deg(math.atan2(targetCoords.x - myCoords.x, targetCoords.z - myCoords.z)) - 90
        
        gg.setValues({
            {address = me[1].address - 188, flags = 16, value = pitch},
            {address = me[1].address - 192, flags = 16, value = yaw}
        })
    end

    local function doRvanka()
        if not RvankaActive or #targetPlayers == 0 then
            currentTargetInfo = "⏸ Ожидание целей"
            return
        end
        
        if timeronn and timertop and timertop[1] then
            gg.setValues({{address = timertop[1].address - 12, flags = 4, value = -1}})
        end
        
        local myCoords = {
            x = gg.getValues({{address = me[1].address - 168, flags = 16}})[1].value,
            y = gg.getValues({{address = me[1].address - 164, flags = 16}})[1].value,
            z = gg.getValues({{address = me[1].address - 160, flags = 16}})[1].value
        }
        
        local closestPlayer = nil
        local minDistance = math.huge
        local closestCoords = nil
        local currentTargetHP = 0
        local currentTargetID = 0
        
        for i, player in ipairs(targetPlayers) do
            local playerHP = gg.getValues({{address = player.address - 188, flags = 64}})[1].value
            if playerHP > 0.001 then
                local playerID = targetPlayerIDs[i]
                if playerID == SPECIAL_TARGET_ID then
                    gg.toast("⚠ Обнаружен специальный ID!")
                    handleSpecialTarget()
                    return
                end
                
                local targetCoords = {
                    x = gg.getValues({{address = player.address - 668, flags = 16}})[1].value,
                    y = gg.getValues({{address = player.address - 664, flags = 16}})[1].value,
                    z = gg.getValues({{address = player.address - 660, flags = 16}})[1].value,
                    xb = gg.getValues({{address = player.address - 656, flags = 16}})[1].value,
                    yb = gg.getValues({{address = player.address - 652, flags = 16}})[1].value,
                    zb = gg.getValues({{address = player.address - 648, flags = 16}})[1].value
                }
                
                local canAttack, attackStatus = canAttackTarget(targetCoords.x, targetCoords.z)
                
                if canAttack then
                    local dx = targetCoords.x - myCoords.x
                    local dy = targetCoords.y - myCoords.y
                    local dz = targetCoords.z - myCoords.z
                    local distance = math.sqrt(dx*dx + dy*dy + dz*dz)
                    
                    if distance < minDistance then
                        minDistance = distance
                        closestPlayer = player
                        closestCoords = targetCoords
                        currentTargetHP = playerHP
                        currentTargetID = targetPlayerIDs[i]
                    end
                else
                    if os.clock() * 1000 - lastInfoTime > 5000 then
                        gg.toast("🛡️ Пропущена цель: " .. attackStatus)
                        lastInfoTime = os.clock() * 1000
                    end
                end
            end
        end
        
        if closestPlayer and closestCoords then
            showAttackInfo(closestPlayer, closestCoords, currentTargetHP, currentTargetID, minDistance)
            
            if attack and attack[1] and me and me[1] then
                if delay and delay[1] then
                    gg.setValues({
                        {address = delay[1].address - 8, flags = 4, value = 0}
                    })
                end
                
                if attack_pc and attack_pc[1] then
                    gg.setValues({
                        {address = attack_pc[1].address + 352, flags = 4, value = 1}
                    })
                end
                
                gg.setValues({
                    {address = me[1].address - 168, flags = 16, value = closestCoords.x},
                    {address = me[1].address - 164, flags = 16, value = closestCoords.y},
                    {address = me[1].address - 160, flags = 16, value = closestCoords.z},
                    {address = me[1].address - 156, flags = 16, value = closestCoords.xb},
                    {address = me[1].address - 152, flags = 16, value = closestCoords.yb},
                    {address = me[1].address - 148, flags = 16, value = closestCoords.zb},
                    {address = me[1].address + 1348, flags = 4, value = 1939828761}
                })
            end
        else
            currentTargetInfo = "🎯 Поиск целей...\n" .. getTargetsInfo()
        end
    end
    
    local function showZoneMenu()
        local menuItems = {}
        
        -- Безопасные зоны
        for i, zone in ipairs(safeZonesDatabase) do
            menuItems[#menuItems + 1] = (zone.active and "✅ " or "❌ ") .. "⬜ " .. zone.name .. " (" .. getZoneSizeInfo(zone) .. ")"
        end
        
        -- Текущая позиция
        menuItems[#menuItems + 1] = (currentPositionZone.active and "✅ " or "❌ ") .. "⭕ " .. currentPositionZone.name .. " (R:" .. currentPositionZone.radius .. ")"
        
        menuItems[#menuItems + 1] = "──────────────"
        menuItems[#menuItems + 1] = "📊 Показать информацию о целях"
        menuItems[#menuItems + 1] = "⚙ Настроить текущую позицию"
        menuItems[#menuItems + 1] = (RvankaActive and "🛑 Остановить Rvanka" or "🎯 Начать Rvanka")
        menuItems[#menuItems + 1] = (AimbotActive and "🛑 Остановить Aimbot" or "🎯 Включить Aimbot")
        menuItems[#menuItems + 1] = "❌ Выход"
        
        return menuItems
    end
    
    local function toggleZone(zoneIndex)
        if zoneIndex <= #safeZonesDatabase then
            safeZonesDatabase[zoneIndex].active = not safeZonesDatabase[zoneIndex].active
        elseif zoneIndex == #safeZonesDatabase + 1 then
            currentPositionZone.active = not currentPositionZone.active
        end
    end
    
    local function showTargetsInfo()
        local info = getTargetsInfo()
        gg.alert(info, "🎯 Информация о целях")
    end
    
    local function configureCurrentPosition()
        local radiusInput = gg.prompt({
            "Радиус защиты для текущей позиции:",
            "Текущие координаты: X=" .. currentX .. " Z=" .. currentZ
        }, {
            [1] = tostring(currentPositionZone.radius)
        }, {"number"})
        
        if radiusInput and radiusInput[1] then
            local newRadius = tonumber(radiusInput[1]) or 20
            if newRadius < 1 then newRadius = 1 end
            if newRadius > 500 then newRadius = 500 end
            
            currentPositionZone.radius = newRadius
            currentPositionZone.centerX = currentX
            currentPositionZone.centerZ = currentZ
            gg.toast("✅ Текущая позиция: радиус " .. newRadius)
        end
    end
    
    local function startAimbot()
        if AimbotActive then
            stopAimbot()
            return
        end
        
        gg.setVisible(false)
        gg.setRanges(4)
        gg.searchNumber("300", 4)
        local t = gg.getResults(100000)
        for i,v in pairs(t) do
            t[i].address = t[i].address + 484
            t[i].flags = 16
        end 
        gg.loadResults(t)
        gg.refineNumber("180",16)
        local players = gg.getResults(100)
        gg.clearResults()   
        
        if #players == 0 then
            gg.toast("Игроки не найдены")
            return
        end
        
        local playerList = {}
        for i = 1, #players do
            local playerID = {}
            playerID.flags = 32
            playerID.address = players[i].address + 612 
            local id = gg.getValues({playerID})[1].value
            
            local displayText = i .. "[ID]: " .. id
            if id == SPECIAL_TARGET_ID then
                displayText = displayText .. " ⚠️"
            end
            
            if id ~= 0 then
                playerList[#playerList + 1] = displayText
            end
        end

        if #playerList == 0 then
            gg.toast("Игроки не найдены")
            return
        end

        local target = gg.choice(playerList, 0, "Выберите цель для аимбота\n" .. #playerList .. " игроков доступно\n⚠️ - специальная цель")
        if not target then return end
        
        local selectedPlayerID = gg.getValues({{address = players[target].address + 612, flags = 32}})[1].value
        if selectedPlayerID == SPECIAL_TARGET_ID then
            gg.toast("⚠ Выбрана специальная цель!")
            handleSpecialTarget()
            return
        end
        
        AimbotActive = true
        aimbotPlayers = players
        aimbotTarget = target
        
        gg.setVisible(false)
        gg.toast("Aimbot запущен")
    end
    
local function startRvanka()
    if RvankaActive then
        stopRvanka()
        return
    end
    
    local safeZoneCount = countActiveZones()
    
    if safeZoneCount == 0 then
        gg.toast("⚔️ Rvanka без безопасных зон - атакует только в текущей зоне")
    else
        gg.toast("✅ Безопасных зон: " .. safeZoneCount)
    end
    
    gg.setRanges(4)
    gg.searchNumber("4575657222463498153", 32)
    attack = gg.getResults(1)
    gg.clearResults()
    
    if not attack or #attack == 0 then
        gg.toast("❌ Ошибка: не найден адрес атаки!")
        return
    end
    
    gg.setRanges(4)
    gg.searchNumber("300", 4)
    local tbl = gg.getResults(100000)
    for i,v in pairs(tbl) do
        tbl[i].address = tbl[i].address + 0x1E4
        tbl[i].flags = 16
    end 
    gg.loadResults(tbl)
    gg.refineNumber("180",16)
    local players = gg.getResults(100000)
    gg.clearResults()   

    if not players or #players == 0 then
        gg.toast("Игроки не найдены")
        return
    end

    local playerList = {}
    local playerIndices = {}
    
    for i = 1, #players do
        local playerID = gg.getValues({{address = players[i].address + 0x264, flags = 32}})[1].value
        if playerID ~= 0 then
            local playerHP = gg.getValues({{address = players[i].address - 188, flags = 64}})[1].value
            local playerCoords = {
                x = gg.getValues({{address = players[i].address - 668, flags = 16}})[1].value,
                z = gg.getValues({{address = players[i].address - 660, flags = 16}})[1].value
            }
            
            -- Показываем только игроков в той же зоне атаки
            local inSameZone, zoneName = isInSameAttackZoneAsMe(playerCoords.x, playerCoords.z)
            if inSameZone then
                local displayText = i .. "[ID]: " .. playerID .. " | HP: " .. math.floor(playerHP) .. "❤ | " .. zoneName
                if playerID == SPECIAL_TARGET_ID then
                    displayText = displayText .. " ⚠️"
                end
                
                playerList[#playerList + 1] = displayText
                playerIndices[#playerList] = i
            end
        end
    end

    if #playerList == 0 then
        gg.toast("В вашей зоне атаки нет игроков")
        return
    end

    local zoneInfo = "🛡️ Безопасные зоны: " .. safeZoneCount
    if safeZoneCount > 0 then
        for i, zone in ipairs(safeZonesDatabase) do
            if i <= 2 and zone.active then
                zoneInfo = zoneInfo .. "\n• ⬜ " .. zone.name .. " (" .. getZoneSizeInfo(zone) .. ")"
            end
        end
        if safeZoneCount > 2 then
            zoneInfo = zoneInfo .. "\n• и еще " .. (safeZoneCount - 2) .. " зон..."
        end
    else
        zoneInfo = zoneInfo .. " ОТКЛЮЧЕНЫ"
    end
    
    -- ИСПРАВЛЕННАЯ СТРОКА: правильно обрабатываем возвращаемые значения
    local myInZone, myZoneName = isInAttackZone(currentX, currentZ)
    zoneInfo = zoneInfo .. "\n\n🎯 Ваша зона атаки: " .. (myInZone and "✅ " or "❌ ") .. (myZoneName or "Не определена")

    local targets = gg.multiChoice(playerList, nil, "Выберите цели для Rvanka\n" .. #playerList .. " игроков в вашей зоне\n\n" .. zoneInfo .. "\n⚠️ - специальная цель")
    
    if not targets then
        gg.toast("Отменено")
        return
    end
    
    targetPlayers = {}
    targetPlayerIDs = {}
    for index, selected in pairs(targets) do
        if selected then
            local playerIndex = playerIndices[index]
            local playerID = gg.getValues({{address = players[playerIndex].address + 0x264, flags = 32}})[1].value
            
            if playerID == SPECIAL_TARGET_ID then
                gg.toast("⚠ Выбрана специальная цель!")
                handleSpecialTarget()
                return
            end
            
            targetPlayers[#targetPlayers + 1] = players[playerIndex]
            targetPlayerIDs[#targetPlayers] = playerID
        end
    end
    
    if #targetPlayers == 0 then
        gg.toast("Игроки не выбраны")
        return
    end

    gg.toast("🔄 Активация Rvanka...")
    
    gg.setRanges(4)
    gg.searchNumber(";￿￿āq")
    gg.refineNumber("257", 2)
    delay = gg.getResults(1)
    gg.clearResults()
    
    gg.setRanges(4)
    gg.searchNumber("4575657222463498153", 32)
    attack_pc = gg.getResults(1)
    gg.clearResults()

    RvankaActive = true
    gg.toast("🎯 Rvanka запущена")
end
    
    local lastAimbotTime = 0
    local lastRvankaTime = 0
    local lastTimerTime = 0
    local aimbotInterval = 50
    local rvankaInterval = 5
    local timerInterval = 50
    
    while true do
        local currentTime = os.clock() * 1000
        
        if timeronn and timertop and timertop[1] and (currentTime - lastTimerTime > timerInterval) then
            gg.setValues({{address = timertop[1].address - 12, flags = 4, value = -1}})
            lastTimerTime = currentTime
        end
        
        if AimbotActive and (currentTime - lastAimbotTime > aimbotInterval) then
            doAimbot()
            lastAimbotTime = currentTime
        end
        
        if RvankaActive and (currentTime - lastRvankaTime > rvankaInterval) then
            doRvanka()
            lastRvankaTime = currentTime
        end
        
        if gg.isVisible(true) then
            gg.setVisible(false)
            
            local menuItems = showZoneMenu()
            local totalZones = #safeZonesDatabase + 1
            
            local menuTitle = "🎯 Управление безопасными зонами Rvanka\n\n" ..
                "📍 Текущая позиция: X=" .. currentX .. " Z=" .. currentZ .. "\n" ..
                "🛡️ Безопасных зон: " .. countActiveZones() .. "\n" ..
                "🎯 Rvanka: " .. (RvankaActive and "✅ ВКЛ" or "❌ ВЫКЛ") .. " | Aimbot: " .. (AimbotActive and "✅ ВКЛ" or "❌ ВЫКЛ")
            
            if RvankaActive and currentTargetInfo ~= "" then
                menuTitle = menuTitle .. "\n\n" .. currentTargetInfo
            end
            
            local choice = gg.choice(menuItems, nil, menuTitle)
            
            if not choice then
                -- Ничего не делать при отмене
            else
                if choice <= totalZones then
                    toggleZone(choice)
                elseif menuItems[choice] == "📊 Показать информацию о целях" then
                    showTargetsInfo()
                elseif menuItems[choice] == "⚙ Настроить текущую позицию" then
                    configureCurrentPosition()
                elseif menuItems[choice] == "🎯 Начать Rvanka" or menuItems[choice] == "🛑 Остановить Rvanka" then
                    startRvanka()
                elseif menuItems[choice] == "🎯 Включить Aimbot" or menuItems[choice] == "🛑 Остановить Aimbot" then
                    startAimbot()
                elseif menuItems[choice] == "❌ Выход" then
                    stopRvanka()
                    stopAimbot()
                    gg.toast("Выход")
                    return
                end
            end
        end
        
        gg.sleep(5)
    end
end

function XYZ()
    gg.setVisible(false)
    
    
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", 32)
    local me = gg.getResults(1)
    gg.clearResults()
    
    if not me or #me == 0 then
        gg.toast("❌ Ошибка: не найден адрес игрока!")
        return
    end
    
    
    local myCurrentCoords = gg.getValues({
        {address = me[1].address - 168, flags = 16}, -- X
        {address = me[1].address - 164, flags = 16}, -- Y  
        {address = me[1].address - 160, flags = 16}  -- Z
    })
    
    local currentX = myCurrentCoords[1].value
    local currentY = myCurrentCoords[2].value
    local currentZ = myCurrentCoords[3].value
    
    
    local roundedX = math.floor(currentX * 100) / 100
    local roundedY = math.floor(currentY * 100) / 100  
    local roundedZ = math.floor(currentZ * 100) / 100
    
    
    local coordText = string.format("📊 Текущие координаты:\n\nX: %.2f\nY: %.2f\nZ: %.2f", roundedX, roundedY, roundedZ)
    
    gg.alert(coordText, "OK")
    
    
    local copyText = string.format("X: %.2f Y: %.2f Z: %.2f", roundedX, roundedY, roundedZ)
    local copyResult = gg.copyText(copyText)
    if copyResult then
        gg.toast("✅ Координаты скопированы в буфер")
    end
end



function auto_open()
    if auto_open_cards == off then
        local location_choice = gg.choice({
            '1. Зал карт (с авто-флаем)',
            '2. Зал карт (без флая)', 
            '3. Арена (с авто-флаем)',
            '4. Арена (без флая)',
            '5. Назад'
        }, nil, 'Авто Открытие Карт - Выбор режима')
        
        if location_choice == nil then return end
        
        if location_choice >= 1 and location_choice <= 4 then
            local use_fly = (location_choice == 1 or location_choice == 3)
            local is_arena = (location_choice == 3 or location_choice == 4)
            
            -- ВЫБОР СКОРОСТИ ТП
            local speed_choice = gg.choice({
                '⚡ Очень быстро (0.01 сек)',
                '🚀 Быстро (0.05 сек)', 
                '🐢 Средне (0.1 сек)',
                '🚶 Медленно (0.5 сек)',
                '🐌 Очень медленно (1 сек)',
                '🎯 Свой интервал'
            }, nil, 'Выберите скорость телепортации')
            
            if speed_choice == nil then return end
            
            local interval
            
            if speed_choice == 1 then
                interval = 0.01
            elseif speed_choice == 2 then
                interval = 0.05
            elseif speed_choice == 3 then
                interval = 0.1
            elseif speed_choice == 4 then
                interval = 0.5
            elseif speed_choice == 5 then
                interval = 1.0
            elseif speed_choice == 6 then
                local custom_input = gg.prompt({
                    "Введите свой интервал (секунды):",
                    "Рекомендуется: 0.01-5 секунд"
                }, {
                    [1] = "0.1"
                }, {"number"})
                
                if not custom_input then return end
                interval = tonumber(custom_input[1]) or 0.1
                
                if not interval or interval < 0.01 then
                    gg.alert("Ошибка: интервал должен быть числом не меньше 0.01")
                    return
                end
            end
            
            auto_cards_interval = interval
            
            -- Точки телепорта для Зала карт
            local hall_teleportPoints = {
                {name = "Карта 1", x = 580, y = 73, z = 1072},
                {name = "Карта 30", x = 520, y = 52, z = 1073},
                {name = "Карта 22", x = 533, y = 52, z = 1062},
                {name = "Карта 4", x = 580, y = 61, z = 1005},
                {name = "Карта 26", x = 533, y = 52, z = 995},
                {name = "Карта 35", x = 514, y = 52, z = 1016},
                {name = "Карта 36", x = 575, y = 70, z = 1063},
                {name = "Карта 37", x = 478, y = 51, z = 1039},
                {name = "Карта 38", x = 555, y = 58, z = 1025},
                {name = "Карта 39", x = 562, y = 58, z = 1032},
                {name = "Карта 40", x = 491, y = 72, z = 1010},
                {name = "Карта 18", x = 490, y = 52, z = 1083},
                {name = "Карта 34", x = 582, y = 64, z = 1026},
                {name = "Карта 16", x = 488, y = 54, z = 1116},
                {name = "Карта 21", x = 491, y = 52, z = 1004},
                {name = "Карта 28", x = 517, y = 52, z = 1088},
                {name = "Карта 19", x = 574, y = 70, z = 1055},
                {name = "Карта 23", x = 507, y = 52, z = 1082},
                {name = "Карта 15", x = 555, y = 59, z = 1052},
                {name = "Карта 25", x = 539, y = 52, z = 1045},
                {name = "Карта 32", x = 574, y = 59, z = 1017},
                {name = "Карта 20", x = 485, y = 49, z = 951},
                {name = "Карта 13", x = 510, y = 54, z = 1110},
                {name = "Карта 33", x = 582, y = 63, z = 1026},
                {name = "Карта 14", x = 557, y = 52, z = 1039},
                {name = "Карта 5", x = 554, y = 52, z = 1057},
                {name = "Карта 17", x = 580, y = 55, z = 1027},
                {name = "Карта 3", x = 527, y = 54, z = 1005},
                {name = "Карта 11", x = 463, y = 54, z = 1039},
                {name = "Карта 24", x = 502, y = 52, z = 1061},
                {name = "Карта 27", x = 538, y = 52, z = 1031},
                {name = "Карта 9", x = 467, y = 52, z = 1039},
                {name = "Карта 6", x = 501, y = 52, z = 1039},
                {name = "Карта 31", x = 577, y = 64, z = 1022},
                {name = "Карта 10", x = 491, y = 52, z = 995},
                {name = "Карта 8", x = 515, y = 52, z = 1016},
                {name = "Карта 12", x = 521, y = 52, z = 998},
                {name = "Карта 7", x = 463, y = 56, z = 1039},
                {name = "Карта 29", x = 502, y = 52, z = 1061},
                {name = "Карта 2", x = 538, y = 52, z = 1031}
            }
            
            -- Точки телепорта для Арены
            local arena_teleportPoints = {
                {name = "Арена Карта 1", x = 108, y = 51, z = 13},
                {name = "Арена Карта 2", x = 95.56, y = 51, z = 71},
                {name = "Арена Карта 3", x = 80, y = 42, z = 53},
                {name = "Арена Карта 4", x = 83, y = 51, z = 72},
                {name = "Арена Карта 5", x = 71, y = 51, z = 11},
                {name = "Арена Карта 6", x = 109, y = 51, z = 82},
                {name = "Арена Карта 7", x = 70, y = 51, z = 84},
                {name = "Арена Карта 8", x = 90.4, y = 51, z = 24},
                {name = "Арена Карта 9", x = 119, y = 51, z = 53},
                {name = "Арена Карта 10", x = 122, y = 51, z = -108},
                {name = "Арена Карта 11", x = 119, y = 51, z = 53},
                {name = "Арена Карта 12", x = 90.4, y = 51, z = 24},
            }
            
            -- Выбираем нужный список точек в зависимости от локации
            local teleportPoints = is_arena and arena_teleportPoints or hall_teleportPoints
            
            gg.setRanges(4) 
            gg.searchNumber("4575657222478978089", 32)  
            local r = gg.getResults(1)
            
            if #r == 0 then
                gg.toast("Player not found!")
                return
            end
            
            if use_fly then
                gg.toast("🔄 Включаем флайдеф...")
                fly()
            end
            
            auto_open_cards = on
            
            -- Определяем текстовое описание скорости
            local speed_text = ""
            if interval == 0.01 then
                speed_text = "⚡ Очень быстро"
            elseif interval == 0.05 then
                speed_text = "🚀 Быстро"
            elseif interval == 0.1 then
                speed_text = "🐢 Средне"
            elseif interval == 0.5 then
                speed_text = "🚶 Медленно"
            elseif interval == 1.0 then
                speed_text = "🐌 Очень медленно"
            else
                speed_text = "🎯 Кастом: " .. interval .. "сек"
            end
            
            gg.toast("Авто Открытие Карт запущено! " .. (is_arena and "Арена" or "Зал карт") .. 
                    " | " .. speed_text .. (use_fly and " (с флаем)" or ""))
            
            local function get_player_position()
                local current = gg.getValues({
                    {address = r[1].address - 160, flags = 16},
                    {address = r[1].address - 164, flags = 16},
                    {address = r[1].address - 168, flags = 16}
                })
                return {
                    x = current[1].value,
                    y = current[2].value,
                    z = current[3].value
                }
            end
            
            local function calculate_distance(pos1, pos2)
                local dx = pos1.x - pos2.x
                local dz = pos1.z - pos2.z
                return math.sqrt(dx*dx + dz*dz)
            end
            
            local function sort_points_by_distance(current_pos, points)
                local sorted_points = {}
                for i, point in ipairs(points) do
                    sorted_points[i] = {
                        name = point.name,
                        x = point.x,
                        y = point.y, 
                        z = point.z,
                        distance = calculate_distance(current_pos, point)
                    }
                end
                
                table.sort(sorted_points, function(a, b)
                    return a.distance < b.distance
                end)
                
                return sorted_points
            end
            
            -- Функция для проверки остановки
            local function check_stop()
                if gg.isVisible(true) then
                    gg.setVisible(false)
                    auto_open_cards = off
                    gg.toast("Авто Открытие Карт остановлено ❌")
                    return true
                end
                return false
            end
            
            -- АДАПТИВНАЯ ЗАДЕРЖКА В ЗАВИСИМОСТИ ОТ ИНТЕРВАЛА
            local function wait_interval()
                if interval <= 0.05 then
                    -- Для быстрых интервалов используем точное ожидание
                    local wait_ms = math.floor(interval * 1000)
                    gg.sleep(wait_ms)
                else
                    -- Для медленных интервалов используем проверку с паузами
                    local start_time = os.time()
                    while os.time() - start_time < interval do
                        if check_stop() then return true end
                        gg.sleep(50) -- проверяем каждые 50ms
                    end
                end
                return false
            end
            
            while auto_open_cards do
                if check_stop() then break end
                
                local current_pos = get_player_position()
                local sorted_points = sort_points_by_distance(current_pos, teleportPoints)
                
                for i, point in ipairs(sorted_points) do
                    if not auto_open_cards then break end
                    if check_stop() then break end
                    
                    -- Телепортация к точке
                    local values = {
                        {address = r[1].address - 148, flags = 16, value = point.x + 0.8},
                        {address = r[1].address - 152, flags = 16, value = point.y + 2.9},
                        {address = r[1].address - 156, flags = 16, value = point.z + 0.8},
                        {address = r[1].address - 160, flags = 16, value = point.x + 0.2},
                        {address = r[1].address - 164, flags = 16, value = point.y + 1.1},
                        {address = r[1].address - 168, flags = 16, value = point.z + 0.2}
                    }
                    
                    gg.setValues(values)
                    
                    -- ИСПРАВЛЕННАЯ СТРОКА
                    gg.toast((is_arena and "Арена " or "Зал ") .. i .. "/" .. #teleportPoints .. 
                            " | " .. point.name .. " | " .. interval .. "сек")
                    
                    -- ИСПОЛЬЗУЕМ ВЫБРАННЫЙ ИНТЕРВАЛ
                    if wait_interval() then break end
                    
                    if check_stop() then break end
                end
                
                if auto_open_cards then
                    gg.toast("🔁 Новый цикл..." .. (is_arena and " (Арена)" or " (Зал карт)"))
                    gg.sleep(100)
                end
            end
            
            if use_fly then
                gg.toast(" Выключаем флайдеф...")
                -- код выключения флая...
            end
            
            if auto_open_cards then
                gg.toast("✅ Авто Открытие Карт завершено!")
                auto_open_cards = off
            end
            
        elseif location_choice == 5 then
            return
        end
        
    else
        auto_open_cards = off
        gg.toast("Авто Открытие Карт выключено ❌")
    end
end



function reach()
    if re == off then
        
        gg.setVisible(false)
        gg.setRanges(16384)
        gg.searchNumber("0.19284650683", 16)
        local results = gg.getResults(100000)
        if #results > 0 then
            for i = 1, #results do
                results[i].value = 9
            end
            gg.setValues(results)
        end
        gg.clearResults()
        re = on
        gg.toast("Reach включен ✅")
    else
        
        gg.setVisible(false)
        gg.setRanges(16384)
        gg.searchNumber("9", 16)
        local results = gg.getResults(100000)
        if #results > 0 then
            for i = 1, #results do
                results[i].value = 0.19284650683
            end
            gg.setValues(results)
        end
        gg.clearResults()
        re = off
        gg.toast("Reach выключен ❌")
    end
end


function fps()
    if un == nil then
        un = "off"
    end
    
    if un == "off" then
        
        gg.setRanges(4)
        gg.searchNumber("8 030 874 101 628 499 045", 32)
        
        local results = gg.getResults(100)
        for i, v in ipairs(results) do
            local targetAddress = v.address - 0x36C
            gg.setRanges(4)
            gg.searchNumber("16", 4, false, gg.SIGN_EQUAL, targetAddress, targetAddress + 4)
            if gg.getResultCount() > 0 then
                local found = gg.getResults(10) 
                gg.editAll("0", 4)
            end
            gg.clearResults()
        end
        gg.toast("FPS включен")
        un = "on"
    else
        
        gg.setRanges(4)
        gg.searchNumber("8 030 874 101 628 499 045", 32)
        
        local results = gg.getResults(100)
        for i, v in ipairs(results) do
            local targetAddress = v.address - 0x36C
            gg.setRanges(4)
            gg.searchNumber("0", 4, false, gg.SIGN_EQUAL, targetAddress, targetAddress + 4)
            if gg.getResultCount() > 0 then
                local found = gg.getResults(10) 
                gg.editAll("16", 4)
            end
            gg.clearResults()
        end
        gg.toast("FPS выключен")
        un = "off"
    end
    gg.clearResults()
end

    function boost()
    gg.setVisible(false)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber(":effect", 1)
    gg.getResults(9999999)
    gg.editAll("0", 1)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_CODE_APP)
    gg.searchNumber(";effect", 2)
    gg.getResults(9999999)
    gg.editAll("0", 2)
    gg.clearResults()
    Code = gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber('0.06',gg.TYPE_FLOAT)
    gg.getResults(999)
    gg.editAll('0',gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Dᴏnᴇ✅")
  end










function fly()
if fl == off then
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089", 32)
r = gg.getResults(1)
local t = {}
t[1] = {}
t[1].address = r[1].address + 1348
t[1].flags = 16
t[1].value = 0.5
t[1].freeze = false
gg.setValues(t)
local bypass = {}
bypass[1] = {}
bypass[1].address = t[1].address - 8
bypass[1].flags = 16
bypass[1].value = 0.035
bypass[1].freeze = false
gg.setValues(bypass)
gg.clearResults()
fl = on
else 
if fl == on then
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089", 32)
r = gg.getResults(1)
local t = {}
t[1] = {}
t[1].address = r[1].address + 1148
t[1].flags = 16
t[1].value = 0
t[1].freeze = false
gg.setValues(t)
local bypass = {}
bypass[1] = {}
bypass[1].address = t[1].address - 8
bypass[1].flags = 16
bypass[1].value = 0.05
bypass[1].freeze = false
gg.setValues(bypass)
gg.clearResults()
fl = off
end end end

function minispeed()
if zv == off then
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.3", gg.TYPE_FLOAT)
gg.getResults(9999)
gg.editAll("0.6123456789", gg.TYPE_FLOAT)
zv = on
gg.toast("Mini Speed включен ✅")
else
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.6123456789", gg.TYPE_FLOAT)
gg.getResults(9999)
gg.editAll("0.3", gg.TYPE_FLOAT)
gg.clearResults()
zv = off
gg.toast("Mini Speed выключен ❌")
end
end

function jumpspeed()
if jsp == off then
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089", 32)
r = gg.getResults(1)
local t = {}
t[1] = {}
t[1].address = r[1].address + 888
t[1].flags = 16
t[1].value = 0.02799999955
t[1].freeze = false
gg.setValues(t)
gg.clearResults()
jsp = on
else 
if jsp == on then
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089", 32)
r = gg.getResults(1)
local t = {}
t[1] = {}
t[1].address = r[1].address + 688
t[1].flags = 16
t[1].value = 0.01999999955
t[1].freeze = false
gg.setValues(t)
gg.clearResults()
jsp = off
end end end

function hball()
if all == off then
gg.setRanges(16384 | 8)
gg.searchNumber("-4483333427983317729",32)
Xa = gg.getResults(1)
gg.clearResults()
gg.setValues({
{address = Xa[1].address +0x2640 , flags = 4, value = -8388608},
{address = Xa[1].address +0x2644 , flags = 4, value = 2139095040}
})
all = on
else
if all == on then
gg.setRanges(16384 | 8)
gg.searchNumber("-4483333427983317729",32)
Xa = gg.getResults(1)
gg.clearResults()
gg.setValues({
{address = Xa[1].address +0x2640 , flags = 16, value = -0.1},
{address = Xa[1].address +0x2644 , flags = 16, value = 0.1}
})
all = off
end end end

function shake()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber(":IsViewBobbing")
gg.refineNumber("I")
local ttt = gg.getResults(100000)
for i,v in pairs(ttt) do
ttt[i].address = ttt[i].address + 0x1F
ttt[i].flags = 1
gg.clearResults()
end
gg.loadResults(ttt)
gg.refineNumber("1",1)
gg.getResults(100000)
gg.editAll("0",1)
gg.clearResults()
end

function auto()
    if ao == off then
        -- ВКЛЮЧЕНИЕ - постоянная атака
        gg.setVisible(false)
        gg.setRanges(4)
        gg.searchNumber("4575657222463498153", 32)
        r = gg.getResults(1)
        
        if r and #r > 0 then
            _G.auto_attack_address = r[1].address + 352
            
            -- ПОСТОЯННОЕ ЗНАЧЕНИЕ 1 (не моргает)
            gg.setValues({
                {address = _G.auto_attack_address, flags = 4, value = 1, freeze = true}
            })
            
            -- Добавляем в список для заморозки
            gg.addListItems({
                {address = _G.auto_attack_address, flags = 4, value = 1, freeze = true}
            })
            
            ao = on
            gg.toast("⚡ Автокликер: ПОСТОЯННАЯ атака")
            
        else
            gg.toast("❌ Адрес атаки не найден")
        end
        gg.clearResults()
        
    else
        -- ВЫКЛЮЧЕНИЕ
        if _G.auto_attack_address then
            gg.setValues({
                {address = _G.auto_attack_address, flags = 4, value = 0, freeze = false}
            })
            gg.clearList()  -- Убираем заморозку
        end
        
        _G.auto_attack_address = nil
        ao = off
        gg.toast("❌ Автокликер ВЫКЛ")
    end
end

function blink()
if blenk == off then
gg.setRanges(4)
gg.searchNumber("7 161 123 975 200 850 732", 32)
local t = gg.getResults(100000)
for i,v in pairs(t) do
t[i].address = t[i].address - 436
t[i].flags = 1
t[i].value = 1
gg.setValues(t)
end 
gg.clearResults()
blenk = on
else
if blenk == on then
gg.setRanges(4)
gg.searchNumber("7 161 123 975 200 850 732", 32)
local t = gg.getResults(100000)
for i,v in pairs(t) do
t[i].address = t[i].address - 436
t[i].flags = 1
t[i].value = 0
gg.setValues(t)
end
gg.clearResults()
blenk = off
end end end

function wwe()
if vve == off then
gg.setRanges(4)
gg.searchNumber(":IsSeparateCamera")
gg.refineNumber("73")
local t = gg.getResults(100000)
for i,v in pairs(t) do
t[i].address = t[i].address + 0x1F
t[i].flags = 1
gg.clearResults()
end
gg.loadResults(t)
gg.refineNumber("0",1)
gg.getResults(100000)
gg.editAll("1",1)
gg.clearResults()
vve = on
else 
if vve == on then
gg.setRanges(4)
gg.searchNumber(":IsSeparateCamera")
gg.refineNumber("73")
local t = gg.getResults(100000)
for i,v in pairs(t) do
t[i].address = t[i].address + 0x1F
t[i].flags = 1
gg.clearResults()
end
gg.loadResults(t)
gg.refineNumber("1",1)
gg.getResults(100000)
gg.editAll("0",1)
gg.clearResults()
vve = off
end end end

function jumpsv3()
if jumps == off then
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089", 32)
r = gg.getResults(1)
local inf = {}
inf[1] = {}
inf[1].address = r[1].address - 184
inf[1].flags = 4
inf[1].value = 257
inf[1].freeze = true
gg.setValues(inf)
gg.addListItems(inf)
local cd = {}
cd[1] = {}
cd[1].address = r[1].address + 636
cd[1].flags = 4
cd[1].value = 0
cd[1].freeze = true
gg.setValues(cd)
gg.addListItems(cd)
gg.clearResults()
jumps = on
else
if jumps == on then
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089", 32)
r = gg.getResults(1)
local offinf = {}
offinf[1] = {}
offinf[1].address = r[1].address - 184
offinf[1].flags = 4
offinf[1].value = 257
offinf[1].freeze = false
gg.setValues(offinf)
gg.addListItems(offinf)
local offcd = {}
offcd[1] = {}
offcd[1].address = r[1].address + 636
offcd[1].flags = 4
offcd[1].value = 21227009
offcd[1].freeze = false
gg.setValues(offcd)
gg.addListItems(offcd)
gg.clearResults()
jumps = off
end end end 

function customrunspeed()
if spedr == off then
local sp = gg.prompt({" кастом спид передвижения 0.04 = кольцо зв"}, {"0.04"}, {"text"})
onn = sp[1]:gsub(",",".")
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089",32)
s = gg.getResults(1)
local t = {}
t[1] = {}
t[1].address = s[1].address + 576
t[1].flags = 16
t[1].value = onn
t[1].freeze = true
gg.setValues(t)
gg.addListItems(t)
gg.clearResults()
spedr = on
else
if spedr == on then
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089",32)
s = gg.getResults(1)
local t = {}
t[1] = {}
t[1].address = s[1].address + 576
t[1].flags = 16
t[1].value = 0
t[1].freeze = false
gg.setValues(t)
gg.addListItems(t)
gg.clearResults()
spedr = off
end end end

function flyspeed()
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089", 32)
r = gg.getResults(1)
local t = {}
t[1] = {}
t[1].address = r[1].address + 1348
t[1].flags = 16
t[1].value = 0.5
t[1].freeze = false
gg.setValues(t)
local bypass = {}
bypass[1] = {}
bypass[1].address = t[1].address - 8
bypass[1].flags = 16
bypass[1].value = 0.2
bypass[1].freeze = false
gg.setValues(bypass)
gg.clearResults()
end

function exit()
print("Menu By ImDeaLer")
os.exit()
end



function aimid()
    if aimid_active then
        -- Выключение аимбота
        aimid_active = false
        aimid_data = nil
        gg.toast("🎯 Aimbot по ID выключен")
        return
    end
    
    -- Включаем NoDelay если выключен
    if nd == off then
        enableNodelayPermanent()
    end
    
    gg.setVisible(false)
    gg.setRanges(4)
    gg.searchNumber("300", 4)
    local t = gg.getResults(100000)
    for i,v in pairs(t) do
        t[i].address = t[i].address + 484
        t[i].flags = 16
    end 
    gg.loadResults(t)
    gg.refineNumber("180",16)
    local players = gg.getResults(100)
    gg.clearResults()   
    
    if #players == 0 then
        gg.toast("Игроки не найдены")
        return
    end
    
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", 32)
    local me = gg.getResults(1)
    gg.clearResults()
    
    if #me == 0 then
        gg.toast("Вы не найдены")
        return
    end
    
    local playerList = {}
    local playerIndices = {}
    
    for i = 1, #players do
        local playerID = {}
        playerID.flags = 32
        playerID.address = players[i].address + 612 
        local id = gg.getValues({playerID})[1].value
        if id ~= 0 then
            local playerHP = gg.getValues({{address = players[i].address - 188, flags = 64}})[1].value
            playerList[#playerList + 1] = i .. "[ID]: " .. id .. " | HP: " .. math.floor(playerHP) .. "❤"
            playerIndices[#playerList] = i
        end
    end

    if #playerList == 0 then
        gg.toast("Игроки не найдены")
        return
    end

    local target = gg.choice(playerList, 0, "Выберите цель для аимбота")
    if not target then 
        gg.toast("Отменено")
        return 
    end
    
    local playerIndex = playerIndices[target]
    local selectedPlayerID = gg.getValues({{address = players[playerIndex].address + 612, flags = 32}})[1].value
    
    -- Сохраняем данные для работы в основном цикле
    aimid_data = {
        active = true,
        me = me,
        player = players[playerIndex],
        playerID = selectedPlayerID,
        lastHPUpdate = 0,
        lastSafeZoneCheck = 0
    }
    
    aimid_active = true
    gg.toast("🎯 Aimbot по ID запущен")
end
function aim()
    if aim_all_active then
        -- Выключение аимбота
        aim_all_active = false
        aim_all_data = nil
        gg.toast("🎯 Aimbot на всех выключен")
        return
    end
    
    -- Включаем NoDelay если выключен
    if nd == off then
        enableNodelayPermanent()
    end
    
    gg.setVisible(false)
    
    -- Поиск игроков
    gg.setRanges(4)
    gg.searchNumber("300", 4)
    local t = gg.getResults(100000)
    for i,v in pairs(t) do
        t[i].address = t[i].address + 484
        t[i].flags = 16
    end 
    gg.loadResults(t)
    gg.refineNumber("180",16)
    local players = gg.getResults(100)
    gg.clearResults()   
    
    if #players == 0 then
        gg.toast("Игроки не найдены")
        return
    end
    
    gg.setRanges(4)
    gg.searchNumber("4575657222478978089", 32)
    local me = gg.getResults(1)
    gg.clearResults()
    
    if #me == 0 then
        gg.toast("Вы не найдены")
        return
    end
    
    -- Создаем список игроков для выбора
    local playerList = {}
    local playerIndices = {}
    local selectedPlayers = {}
    
    for i = 1, #players do
        local playerID = {}
        playerID.flags = 32
        playerID.address = players[i].address + 612 
        local id = gg.getValues({playerID})[1].value
        if id ~= 0 then
            local playerHP = gg.getValues({{address = players[i].address - 188, flags = 64}})[1].value
            playerList[#playerList + 1] = "□ " .. i .. "[ID]: " .. id .. " | HP: " .. math.floor(playerHP) .. "❤"
            playerIndices[#playerList] = i
            selectedPlayers[#playerList] = false
        end
    end
    
    if #playerList == 0 then
        gg.toast("Игроки не найдены")
        return
    end
    
    -- Цикл выбора целей
    local continueSelecting = true
    local selectedCount = 0
    
    while continueSelecting do
        -- Обновляем отображение
        for i = 1, #playerList do
            local originalText = playerList[i]:gsub("^[✓□] ", "")
            if selectedPlayers[i] then
                playerList[i] = "✓ " .. originalText
            else
                playerList[i] = "□ " .. originalText
            end
        end
        
        -- Считаем выбранных
        selectedCount = 0
        for i = 1, #selectedPlayers do
            if selectedPlayers[i] then
                selectedCount = selectedCount + 1
            end
        end
        
        -- Создаем меню
        local menuItems = {}
        for i = 1, #playerList do
            menuItems[i] = playerList[i]
        end
        
        local totalItems = #menuItems
        menuItems[totalItems + 1] = "──────────────"
        menuItems[totalItems + 2] = "✅ ЗАПУСТИТЬ (" .. selectedCount .. " выбр.)"
        menuItems[totalItems + 3] = "❌ ОТМЕНА"
        
        local choice = gg.choice(menuItems, nil, "Выберите цели\nВыбрано: " .. selectedCount)
        
        if choice == nil then
            gg.toast("Отменено")
            return
        end
        
        if choice <= #playerList then
            selectedPlayers[choice] = not selectedPlayers[choice]
        elseif choice == totalItems + 2 then
            if selectedCount > 0 then
                continueSelecting = false
            else
                gg.toast("Выберите хотя бы одного игрока!")
            end
        elseif choice == totalItems + 3 then
            gg.toast("Отменено")
            return
        end
    end
    
    -- Собираем выбранных игроков
    local targetPlayers = {}
    for i = 1, #selectedPlayers do
        if selectedPlayers[i] then
            targetPlayers[#targetPlayers + 1] = players[playerIndices[i]]
        end
    end
    
    -- Сохраняем данные для работы в основном цикле
    aim_all_data = {
        active = true,
        me = me,
        targetPlayers = targetPlayers,
        lastHPUpdate = 0,
        lastSafeZoneCheck = 0,
        closestTarget = nil
    }
    
    aim_all_active = true
    gg.toast("🎯 Aimbot на " .. #targetPlayers .. " целях")
end


function enableNodelayPermanent()
    gg.setRanges(4)
    gg.searchNumber(";￿￿āq")
    gg.refineNumber("257", 2)
    rr = gg.getResults(1)
    if #rr > 0 then
        local t = {}
        t[1] = {}
        t[1].address = rr[1].address - 8
        t[1].flags = 4
        t[1].value = 0
        t[1].freeze = true
        gg.setValues(t)
        gg.addListItems(t)
        
        
        local t2 = {}
        t2[1] = {}
        t2[1].address = rr[1].address - 8
        t2[1].flags = 4
        t2[1].value = 0
        t2[1].freeze = true
        
        gg.setValues(t2)
        gg.clearResults()
        nd = on
        gg.toast("NoDelay ПОСТОЯННО ВКЛЮЧЕН")
    else
        gg.toast("Ошибка: адрес NoDelay не найден")
    end
end

function run_aimid()
    if not aimid_data or not aimid_data.active then
        return
    end
    
    local data = aimid_data
    local currentTime = os.clock()
    
    local myCoords = {
        x = gg.getValues({{address = data.me[1].address - 160, flags = 16}})[1].value,
        y = gg.getValues({{address = data.me[1].address - 164, flags = 16}})[1].value,
        z = gg.getValues({{address = data.me[1].address - 168, flags = 16}})[1].value
    }
    
    local myHP = gg.getValues({{address = data.me[1].address + 312, flags = 64}})[1].value
    if myHP < 0.001 then
        gg.toast("Вы мертвы/вышли с игры")
        aimid_active = false
        aimid_data = nil
        return
    end

    local targetCoords = {
        x = gg.getValues({{address = data.player.address - 660, flags = 16}})[1].value,
        y = gg.getValues({{address = data.player.address - 664, flags = 16}})[1].value,
        z = gg.getValues({{address = data.player.address - 668, flags = 16}})[1].value
    }
    
    local targetHP = gg.getValues({{address = data.player.address - 188, flags = 64}})[1].value
    
    if targetHP < 0.001 then
        gg.toast("Цель мертва/вышла с игры")
        aimid_active = false
        aimid_data = nil
        return
    end
    
    -- Проверяем безопасные зоны
    if currentTime - data.lastSafeZoneCheck > 0.1 then
        local inSafeZone, zoneName = isInSafeZone(targetCoords.x, targetCoords.z)
        if inSafeZone then
            if currentTime - data.lastHPUpdate > 1 then
                gg.toast("🛡️ Цель в БЗ: " .. zoneName)
                data.lastHPUpdate = currentTime
            end
            return
        end
        data.lastSafeZoneCheck = currentTime
    end
    
    -- Целимся в цель
    local distance = math.sqrt((targetCoords.x - myCoords.x)^2 + (targetCoords.z - myCoords.z)^2)
    local heightDiff = targetCoords.y - myCoords.y        
    local pitch = math.atan2(math.abs(heightDiff), distance) * 180 / math.pi
    if heightDiff > 0 then pitch = -pitch end        
    local yaw = math.deg(math.atan2(targetCoords.x - myCoords.x, targetCoords.z - myCoords.z)) - 90
    
    gg.setValues({
        {address = data.me[1].address - 188, flags = 16, value = pitch},
        {address = data.me[1].address - 192, flags = 16, value = yaw}
    })
    
    if currentTime - data.lastHPUpdate > 0.5 then
        gg.toast(string.format("🎯 Aimbot | ID %d | HP: %d❤ | Дистанция: %.1fм", 
              data.playerID, math.floor(targetHP), distance))
        data.lastHPUpdate = currentTime
    end
end

function run_aim_all()
    if not aim_all_data or not aim_all_data.active then
        return
    end
    
    local data = aim_all_data
    local currentTime = os.clock()
    
    local myCoords = {
        x = gg.getValues({{address = data.me[1].address - 160, flags = 16}})[1].value,
        y = gg.getValues({{address = data.me[1].address - 164, flags = 16}})[1].value,
        z = gg.getValues({{address = data.me[1].address - 168, flags = 16}})[1].value
    }
    
    local myHP = gg.getValues({{address = data.me[1].address + 312, flags = 64}})[1].value
    if myHP < 0.001 then
        gg.toast("Вы мертвы/вышли с игры")
        aim_all_active = false
        aim_all_data = nil
        return
    end
    
    local closestTarget = nil
    local minDistance = math.huge
    local closestPlayer = nil
    local anyTargetAvailable = false
    
    -- Проверяем безопасные зоны каждые 0.5 секунды
    if currentTime - data.lastSafeZoneCheck > 0.5 then
        for i = 1, #data.targetPlayers do
            local targetCoords = {
                x = gg.getValues({{address = data.targetPlayers[i].address - 668, flags = 16}})[1].value,
                z = gg.getValues({{address = data.targetPlayers[i].address - 660, flags = 16}})[1].value
            }
            local inSafeZone, _ = isInSafeZone(targetCoords.x, targetCoords.z)
            data.targetPlayers[i].lastSafeZoneCheck = inSafeZone
        end
        data.lastSafeZoneCheck = currentTime
    end
    
    -- Ищем ближайшую цель не в безопасной зоне
    for i = 1, #data.targetPlayers do
        local targetHP = gg.getValues({{address = data.targetPlayers[i].address - 188, flags = 64}})[1].value
        if targetHP > 0.001 then
            
            local targetCoords = {
                x = gg.getValues({{address = data.targetPlayers[i].address - 660, flags = 16}})[1].value,
                y = gg.getValues({{address = data.targetPlayers[i].address - 664, flags = 16}})[1].value,
                z = gg.getValues({{address = data.targetPlayers[i].address - 668, flags = 16}})[1].value
            }
            
            -- Проверяем безопасную зону
            local inSafeZone = data.targetPlayers[i].lastSafeZoneCheck or false
            
            -- Пропускаем цели в БЗ
            if not inSafeZone then
                anyTargetAvailable = true
                local dx = targetCoords.x - myCoords.x
                local dz = targetCoords.z - myCoords.z
                local distance = math.sqrt(dx*dx + dz*dz)
                
                if distance < minDistance then
                    minDistance = distance
                    closestTarget = targetCoords
                    closestPlayer = data.targetPlayers[i]
                end
            end
        end
    end
    
    if closestTarget and anyTargetAvailable then
        local dx = closestTarget.x - myCoords.x
        local dy = closestTarget.y - myCoords.y
        local dz = closestTarget.z - myCoords.z
        
        local pitch = math.atan2(math.abs(dy), math.sqrt(dx*dx + dz*dz)) * 180 / math.pi
        if dy > 0 then pitch = -pitch end
        
        local yaw = math.deg(math.atan2(dx, dz)) - 90
        
        gg.setValues({
            {address = data.me[1].address - 188, flags = 16, value = pitch},
            {address = data.me[1].address - 192, flags = 16, value = yaw}
        })
        
        if currentTime - data.lastHPUpdate > 0.5 then
            local currentTargetID = gg.getValues({{address = closestPlayer.address + 612, flags = 32}})[1].value
            local currentTargetHP = gg.getValues({{address = closestPlayer.address - 188, flags = 64}})[1].value
            
            gg.toast(string.format("🎯 Aimbot | ID %d | HP: %d❤ | Дистанция: %.1fм | Целей: %d", 
                  currentTargetID, math.floor(currentTargetHP), minDistance, #data.targetPlayers))
            data.lastHPUpdate = currentTime
        end
    else
        if currentTime - data.lastHPUpdate > 1 then
            gg.toast("🛡️ Нет доступных целей (все в БЗ или мертвы)")
            data.lastHPUpdate = currentTime
        end
    end
end

function kntnt()
gg.setRanges(4)
  gg.searchNumber("32 370 086 185 468 018", 32)
  local t = gg.getResults(gg.getResultsCount())
for i,v in pairs(t) do
t[i].address = t[i].address + 0x24
t[i].flags = 4
end 
gg.loadResults(t)
  gg.refineNumber("1", 4)
  gg.getResults(99999)
  gg.editAll("257", 4)
  gg.clearResults()
end

function noclip()
if nol == off then
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089", 32)
local me = gg.getResults(1)
gg.clearResults()
gg.addListItems({{address = me[1].address - 0xAC, flags = 4, value = 0, freeze = true}})
nol = on
else 
if nol == on then
gg.setRanges(4)
gg.searchNumber("4 575 657 222 478 978 089", 32)
local me = gg.getResults(1)
gg.clearResults()
gg.addListItems({{address = me[1].address - 0xAC, flags = 4, value = 1, freeze = true}})
nol = off
end end end 

function hbbypass()
if fby == off then
gg.setRanges(4)
gg.searchNumber("100~999D;6.5F:5", 16)
gg.refineNumber("6.5", 16)
check = gg.getResults(99999)
if #check > 0 then
gg.editAll("0.00123124", 16)
gg.clearResults()
fby = on
else
if #check == 0 then 
gg.setRanges(4)
gg.searchNumber("9.9184537", 16)
gg.getResults(99999)
gg.editAll("0.00123124", 16)
gg.clearResults()
fby = on
re = off
end end
else
if fby == on then
gg.setRanges(4)
gg.searchNumber("0.00123124",16)
gg.getResults(99999)
gg.editAll("6.5", 16)
gg.clearResults()
fby = off
end end end 


function mainch()
    local menuItems = t('mainMenu')
    local title = t('mainTitle') .. currentUsername .. "(ID:" .. playerID .. ")"
    
    local men = gg.choice(menuItems, nil, title)
    
    if men == nil then
        return "hide"
    end
    
    if men == 1 then pvpm() end
    if men == 2 then visuals() end
    if men == 3 then runsm() end
    if men == 4 then bpses() end
    if men == 5 then unban() end
    if men == 6 then mob() end
    if men == 7 then info() end
    if men == 8 then 
        gg.toast(t('toasts.exit'))
        exit()
        return "exit" 
    end
    
    return "continue" 
end


function pvpm()
    local menuItems = {}
    local pvpMenu = t('pvpMenu')
    
    -- Создаем меню с учетом текущего языка и статусов
    for i, item in ipairs(pvpMenu) do
        if i == 1 then 
            menuItems[i] = item .. nd 
        elseif i == 2 then 
            menuItems[i] = item .. re .. warning .. warning .. warning 
        elseif i == 3 then 
            menuItems[i] = item .. ao 
        elseif i == 4 then 
            menuItems[i] = item 
        elseif i == 5 then 
            menuItems[i] = item 
        elseif i == 6 then 
            menuItems[i] = item 
        elseif i == 7 then 
            menuItems[i] = item 
        elseif i == 8 then 
            menuItems[i] = item 
        elseif i == 9 then 
            menuItems[i] = item 
        elseif i == 10 then 
            menuItems[i] = item 
        elseif i == 11 then 
            menuItems[i] = item 
        elseif i == 12 then 
            menuItems[i] = item 
        end
    end
    
    local pvpmenu = gg.multiChoice(menuItems, nil, t('pvpTitle') .. " - " .. currentUsername)

    if pvpmenu == nil then 
        return 
    end

    if pvpmenu[1] == true then nodelay() end
    if pvpmenu[2] == true then reach() end
    if pvpmenu[3] == true then auto() end
    if pvpmenu[4] == true then aimid() end
    if pvpmenu[5] == true then aim() end
    if pvpmenu[6] == true then kntnt() end
    if pvpmenu[7] == true then rvanka_simple() end
    if pvpmenu[8] == true then rvanka() end
    if pvpmenu[9] == true then hitboxesmenu() end
    if pvpmenu[10] == true then killaura_menu() end
    if pvpmenu[11] == true then visuals() end
    if pvpmenu[12] == true then return end 
end


function hitboxesmenu()
    local menuItems = t('hitboxMenu')
    
    -- Добавляем статусы
    menuItems[1] = menuItems[1] .. hbb_v2 .. warning .. warning .. warning
    menuItems[2] = menuItems[2] .. hbn_v2 .. warning .. warning
    menuItems[3] = menuItems[3] .. hbs_v2 .. warning
    menuItems[4] = menuItems[4] .. all .. warning
    menuItems[5] = menuItems[5] .. get_hitbox_id_status()
    
    local HITBOXMenu = gg.choice(menuItems, nil, t('hitboxTitle'))
    
    if HITBOXMenu == nil then return end
    
    if HITBOXMenu == 1 then hbb() end
    if HITBOXMenu == 2 then hbn() end
    if HITBOXMenu == 3 then hbs() end
    if HITBOXMenu == 4 then hball() end
    if HITBOXMenu == 5 then hitbox_by_id() end
    if HITBOXMenu == 6 then pvpm() end
end


function killaura_menu()
    local menuItems = t('killauraMenu')
    
    -- Добавляем статусы
    menuItems[1] = menuItems[1] .. " [" .. killaura_status .. "]"
    menuItems[2] = menuItems[2] .. " [" .. (kill_all or off) .. "]"
    
    local killMenu = gg.choice(menuItems, nil, t('killauraTitle'))
    
    if killMenu == 1 then killaura_id() end
    if killMenu == 2 then kill_all_players() end
    if killMenu == 3 then killaura_pc() end
    if killMenu == 5 then pvpm() end
end




function visuals()
    local menuItems = {}
    local visualMenu = t('visualMenu')
    
    for i = 1, #visualMenu do
        local item = visualMenu[i]
        local status = ""
        
        if i == 2 then 
            status = un 
        elseif i == 3 then 
            status = " [" .. view_hp .. "]" 
        elseif i == 6 then 
            status = show_xyz 
        elseif i == 7 then 
            status = vve 
        elseif i == 8 then 
            status = " [" .. third_person .. "]" 
        elseif i == 9 then 
            status = wb 
        elseif i == 11 then 
            status = " [" .. hit_circle .. "]" 
        elseif i == 12 then 
            status = " [" .. (StreamMD and on or off) .. "]" 
        elseif i == 13 then 
            status = " [" .. hide_attack_status .. "]" 
        elseif i == 14 then 
            status = " [" .. (Demon6 or off) .. "]"
        elseif i == 15 then 
            status = antitables_enabled 
        end
        
        menuItems[i] = item .. status
    end
    
    local vvvvv = gg.multiChoice(menuItems, nil, t('visualTitle') .. " - " .. currentUsername)

    if vvvvv == nil then 
        return 
    end
    
    if vvvvv[1] == true then pvpm() end
    if vvvvv[2] == true then fps() end
    if vvvvv[3] == true then view_hp_func() end
    if vvvvv[4] == true then boost() end
    if vvvvv[5] == true then shake() end
    if vvvvv[6] == true then XYZ() end
    if vvvvv[7] == true then wwe() end
    if vvvvv[8] == true then third_person_func() end
    if vvvvv[9] == true then webmode() end
    if vvvvv[10] == true then kntnt() end
    if vvvvv[11] == true then hit_circle_func() end
    if vvvvv[12] == true then 
        if StreamMD then 
            StreamerModeOFF() 
        else 
            StreamerMode() 
        end 
    end
    if vvvvv[13] == true then hide_attack() end
    if vvvvv[14] == true then 
        if timeronn then 
            timer_off()
        else 
            gamespeed_pc()
        end 
    end
    if vvvvv[15] == true then antitables() end
    if vvvvv[16] == true then runsm() end
    if vvvvv[17] == true then return end 
end

function runsm()
    local menuItems = {}
    local movementMenu = t('movementMenu')
    
    for i = 1, #movementMenu do
        local item = movementMenu[i]
        local status = ""
        
        if i == 2 then 
            status = fl 
        elseif i == 4 then 
            status = nol 
        elseif i == 5 then 
            status = bhEnabled 
        elseif i == 6 then 
            status = click_tp 
        elseif i == 7 then 
            status = " " .. strafe 
        elseif i == 8 then 
            status = " [".. game_speed .. "]" 
        elseif i == 9 then 
            status = " [" .. (Demon6 or off) .. "]"
        elseif i == 10 then 
            status = " [" .. spinnerEnabled .. "]" 
        elseif i == 11 then 
            status = " [" .. (deathTeleportActive and "✅" or "❌") .. "]" 
        elseif i == 12 then 
            status = " [" .. (escape_active and "✅" or "❌") .. "]" 
        elseif i == 13 then 
            status = " [" .. auto_arena_tp .. "]" 
        elseif i == 14 then 
            status = " [" .. auto_save_tp .. "]" 
        end
        
        menuItems[i] = item .. status
    end
    
    local rrrrr = gg.multiChoice(menuItems, nil, t('movementTitle') .. " - " .. currentUsername)

    if rrrrr == nil then 
        return 
    end
    
    if rrrrr[1] == true then visuals() end
    if rrrrr[2] == true then fly() end
    if rrrrr[3] == true then flyspeed() end
    if rrrrr[4] == true then noclip() end
    if rrrrr[5] == true then bunnyhop() end
    if rrrrr[6] == true then click_tp_func() end
    if rrrrr[7] == true then strafe_func() end
    if rrrrr[8] == true then gamespeed_mobile() end
    if rrrrr[9] == true then if Demon6 == on6 then gamespeed_pc() Demon6 = off6 else Demon6 = on6 timeronn = false end end
    if rrrrr[10] == true then spinner() end
    if rrrrr[11] == true then auto_death_teleport_fast() end
    if rrrrr[12] == true then auto_escape_low_hp_fast() end
    if rrrrr[13] == true then auto_arena_tp_func() end
    if rrrrr[14] == true then auto_savezone_tp_func() end
    if rrrrr[15] == true then distance_teleport() end
    if rrrrr[16] == true then teleportationXYZ() end
    if rrrrr[17] == true then speedmenu() end
    if rrrrr[18] == true then jumpsmenu() end  
    if rrrrr[19] == true then bpses() end
    if rrrrr[20] == true then return end 
end





function speedmenu()
    local menuItems = t('speedMenu')
    
    -- Добавляем статусы
    menuItems[1] = menuItems[1] .. zv
    menuItems[2] = menuItems[2] .. spedr
    
    local SPEEDMenu = gg.multiChoice(menuItems, nil, t('speedTitle'))
    
    if SPEEDMenu == nil then return end
    
    if SPEEDMenu[1] == true then minispeed() end
    if SPEEDMenu[2] == true then customrunspeed() end
    if SPEEDMenu[3] == true then runsm() end
end






function jumpsmenu()
    local menuItems = t('jumpMenu')
    
    -- Добавляем статусы
    menuItems[1] = menuItems[1] .. jsp
    menuItems[2] = menuItems[2] .. jumps
    menuItems[3] = menuItems[3] .. jumpsVVV4
    menuItems[5] = menuItems[5] .. high_jump
    
    local JUMPMenu = gg.multiChoice(menuItems, nil, t('jumpTitle'))
    
    if JUMPMenu == nil then return end
    
    if JUMPMenu[1] == true then jumpspeed() end
    if JUMPMenu[2] == true then jumpsv3() end
    if JUMPMenu[3] == true then jumpsv4() end
    if JUMPMenu[4] == true then LJump() end
    if JUMPMenu[5] == true then high_jump_func() end
    if JUMPMenu[6] == true then runsm() end
end

function unban()
    local menuItems = {}
    local unbanMenu = t('unbanMenu')
    
    for i = 1, #unbanMenu do
        local item = unbanMenu[i]
        local status = ""
        
        if i == 2 then 
            status = nd 
        elseif i == 3 then 
            status = ao 
        elseif i == 7 then 
            status = un 
        elseif i == 10 then 
            status = zv 
        elseif i == 11 then 
            status = fby 
        elseif i == 12 then 
            status = bhEnabled 
        elseif i == 13 then 
            status = strafe 
        elseif i == 14 then 
            status = show_xyz 
        elseif i == 15 then 
            status = " [" .. third_person .. "]" 
        elseif i == 16 then 
            status = vve 
        elseif i == 17 then 
            status = " [" .. hit_circle .. "]" 
        elseif i == 18 then 
            status = " [" .. (StreamMD and on or off) .. "]" 
        elseif i == 19 then 
            status = " [" .. view_hp .. "]" 
        elseif i == 20 then 
            status = " [" .. hide_attack_status .. "]" 
        elseif i == 21 then 
            status = " [" .. Demon6 .. "]" 
        elseif i == 22 then 
            status = " [" .. spinnerEnabled .. "]" 
        elseif i == 23 then 
            status = antitables_enabled 
        end
        
        menuItems[i] = item .. status
    end
    
    local unbanmenu = gg.multiChoice(menuItems, nil, t('unbanTitle') .. " - " .. currentUsername)

    if unbanmenu == nil then 
        return 
    end
    
    if unbanmenu[1] == true then bpses() end
    if unbanmenu[2] == true then nodelay() end
    if unbanmenu[3] == true then auto() end
    if unbanmenu[4] == true then aimid() end
    if unbanmenu[5] == true then aim() end
    if unbanmenu[6] == true then kntnt() end
    if unbanmenu[7] == true then fps() end
    if unbanmenu[8] == true then boost() end
    if unbanmenu[9] == true then shake() end
    if unbanmenu[10] == true then minispeed() end
    if unbanmenu[11] == true then hbbypass() end
    if unbanmenu[12] == true then bunnyhop() end
    if unbanmenu[13] == true then strafe_func() end
    if unbanmenu[14] == true then XYZ() end
    if unbanmenu[15] == true then third_person_func() end
    if unbanmenu[16] == true then wwe() end
    if unbanmenu[17] == true then hit_circle_func() end
    if unbanmenu[18] == true then 
        if StreamMD then 
            StreamerModeOFF() 
        else 
            StreamerMode() 
        end 
    end
    if unbanmenu[19] == true then view_hp_func() end
    if unbanmenu[20] == true then hide_attack() end
    if unbanmenu[21] == true then 
        if timeronn then 
            timer_off()
        else 
            Timer28()
        end 
    end
    if unbanmenu[22] == true then spinner() end
    if unbanmenu[23] == true then antitables() end
    if unbanmenu[24] == true then mob() end
    if unbanmenu[25] == true then return end
end

function mob()
    local menuItems = t('mobMenu')
    
    local cccc = gg.multiChoice(menuItems, nil, t('mobTitle') .. " - " .. currentUsername)
    
    if cccc == nil then
        return 
    else
        if cccc[1] == true then unban() end
        if cccc[2] == true then ghost() end
        if cccc[3] == true then zombi() end
        if cccc[4] == true then skesli() end
        if cccc[5] == true then pvpm() end
        if cccc[6] == true then return end
    end
end


function info()
    local message = currentLanguage == 'en' 
        and 'Script created for ' .. currentUsername .. ' by ImDeaLer'
        or 'Скрипт создан для ' .. currentUsername .. ' от ImDeaLer'
    
    gg.alert(message)
end













function gamespeed_pc()
    if not timertop then
        gg.setRanges(8 | 16 | 262144 | 32) 
        gg.searchNumber("257", 4)
        local wa = gg.getResults(99999)
        gg.clearResults()
        for i = 1, #wa do
            wa[i].address = wa[i].address - 16
            wa[i].flags = 16
        end
        gg.loadResults(wa)
        gg.refineNumber("10", 16)
        timertop = gg.getResults(9999)
        gg.clearResults()
    end
    timeronn = true
    gg.toast("Таймер включен ✅")
end

function gamespeed_mobile()
    if game_speed == off then
        gg.setRanges(gg.REGION_C_BSS)
        gg.searchNumber("4428659729064379023", 32)
        local q = gg.getResults(1)
        if #q == 0 then
            gg.toast("❌ Ошибка: включи функцию еще раз, она может не работать на пк")
            return
        end
        
        gg.addListItems({{address = q[1].address + 0x1475D8, flags = 32, value = -19182827282828, freeze = true}})
        game_speed = on
        gg.toast("Скорость игры включена ✅")
    else
        gg.setRanges(gg.REGION_C_BSS)
        gg.searchNumber("4428659729064379023", 32)
        local q = gg.getResults(1)
        if #q > 0 then
            gg.removeListItems({{address = q[1].address + 0x1475D8, flags = 32, value = -19182827282828, freeze = false}})
        end
        game_speed = off
        gg.toast("Скорость игры выключена ❌")
    end
end

function getFPS()
    gg.clearResults()
    gg.clearList()
    gg.setRanges(baseRG)
    gg.searchNumber("4561245704515320021", 32)
    fpsVal = gg.getResults(9999)
    gg.clearResults()
end




function GetTipsMain()
    for i = 1, #h do
        if h[i].value == string.byte("-") 
        and h[i + 1].value == string.byte("C") 
        and h[i + 2].value == string.byte("e") 
        and h[i + 3].value == string.byte("n") 
        and h[i + 4].value == string.byte("t") 
        and h[i + 5].value == string.byte("e") 
        and h[i + 6].value == string.byte("r") 
        and h[i + 7].value == string.byte("-") 
        and h[i + 8].value == string.byte("S") 
        and h[i + 9].value == string.byte("y") 
        and h[i + 10].value == string.byte("s") 
        and h[i + 11].value == string.byte("t") 
        and h[i + 12].value == string.byte("e") 
        and h[i + 13].value == string.byte("m") 
        and h[i + 14].value == string.byte("-") 
        and h[i + 15].value == string.byte("N") 
        and h[i + 16].value == string.byte("o") 
        and h[i + 17].value == string.byte("t") 
        and h[i + 18].value == string.byte("i") 
        and h[i + 19].value == string.byte("f") 
        and h[i + 20].value == string.byte("i") 
        and h[i + 21].value == string.byte("c") 
        and h[i + 22].value == string.byte("a") 
        and h[i + 23].value == string.byte("t") 
        and h[i + 24].value == string.byte("i") 
        and h[i + 25].value == string.byte("o") 
        and h[i + 26].value == string.byte("n") 
        and h[i + 32] then
            if h[i + 32].value == 1 or h[i + 32].value == 257 or h[i + 32].value == 256 then
                CenterTips = h[i + 32].address
            end
        end
    end
end

function sendCenterTips(time2, textUI2, color)
    local sen, ui2 = {}, {}
    for i in textUI2:gmatch(utf8.charpattern) do
        local t = utf8.codepoint(i) table.insert(sen, t)
    end
    local TextLen, t = utf8.len(textUI2), 0
    ui2.AntiText1 = { address = CenterTips + 2616, flags = 4, freeze = true, value = 32 }
    for i = 1, TextLen do
        ui2[i], t = { address = CenterTips + 2648 + t, flags = 2, freeze = true, value = sen[i] }, t + 2
    end
    ui2.len = { address = CenterTips + 2608, flags = 4, freeze = true, value = TextLen }
    ui2.time = { address = TimeUI[1].address + 0x38, flags = 4, freeze = true, value = time2 }
    if color then
        ui2.r2, ui2.g2, ui2.b2 = { address = CenterTips + 340, flags = 16, freeze = true, value = color[1] },
        { address = CenterTips + 344, flags = 16, freeze = true, value = color[2] },
        { address = CenterTips + 348, flags = 16, freeze = true, value = color[3] }
    end
    gg.addListItems(ui2) gg.clearList()
end






















function GetTimeTips()
    gg.clearResults() gg.clearList() gg.setRanges(baseRG)
    gg.searchNumber(":Main.json", 1) gg.refineNumber(":M", 1)
    local t1 = gg.getResults(9999) gg.clearResults()
    for i = 1, #t1 do t1[i].address = t1[i].address + 0xFF t1[i].flags = 4 end
    gg.loadResults(t1) gg.refineNumber("15", 4)
    TimeUI = gg.getResults(9999) gg.clearResults()
end































function initWelcome()
    getNewDebugVal()
    GetMain()
    GetTimeTips()
    GetTipsMain()
    if CenterTips then
        local welcomeText = currentLanguage == 'en' and "Welcome to ImDeaLerV1.8.1!" or "Добро пожаловать в ImDeaLerV1.8.1!"
        sendCenterTips(5000, welcomeText, { 1, 0, 0 })
    end
end

initWelcome()






function exit() 
    main_loop_running = false
    script_active = false
    gg.toast("Выход из скрипта") 
    os.exit() 
end




while script_active do
    local currentTime = os.clock() * 1000
    
    if gg.isVisible(true) then
        gg.setVisible(false)
        mainch() 
    end





    if timeronn and timertop and timertop[1] then
            gg.setValues({{address = timertop[1].address - 12, flags = 4, value = -1}})
        end

    -- ТАЙМЕР - работает постоянно
    if timeronn and timertop and timertop[1] then
        if (currentTime - (_G.lastTimerTime or 0)) > 50 then
            gg.setValues({{address = timertop[1].address - 12, flags = 4, value = -1}})
            _G.lastTimerTime = currentTime
        end
    end
    

    -- АИМБОТ ПО ID - работает одновременно
    if aimid_active and aimid_data then
        run_aimid()
    end
    
    -- АИМБОТ НА ВСЕХ - работает одновременно
    if aim_all_active and aim_all_data then
        run_aim_all()
    end


    -- ТЕЛЕПОРТАЦИЯ - работает одновременно с остальными
    if _G.teleport_data and _G.teleport_data.active and smart_distance_teleport_active then
        check_teleportation()
    end
    
    -- КИЛЛАУРА - работает одновременно с остальными
    if killaura_status == on and killauraData and killauraData.selectedPlayers then
        runKillaura()
    end
    
    -- КИЛЛАУРА ПК - работает одновременно с остальными
    if killaura_pc_active then
        run_killaura_pc()
    end
    
    -- Моя киллаура в главном цикле
    if killaura_active then
        runMyKillaura()
    end
    
    -- АВТО-ТЕЛЕПОРТ ПРИ СМЕРТИ
    if deathTeleportActive then
        checkDeathTeleport()
    end
    
    

    gg.sleep(5)
end