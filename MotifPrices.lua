MotifPrices = {
    name = "MotifPrices",
    version = "1.0",
    author = "TheMrPancake",
    defaults = {},
}

local styles = { -- type, achievement id, first motif id, visual id
    [11] = {1423,74556}, -- Thieves Guild
    [12] = {1661,82055}, -- Dark Brotherhood
    [13] = {1412,71567}, -- Malacath
    [14] = {1144,57573}, -- Dwemer
    [16] = {1660,82088}, -- Order of the Hour 
    [21] = {1411,71551}, -- Trinimac
    [22] = {1341,69528}, -- Ancient Orc
    [23] = {1416,71705}, -- Daggerfall Covenant
    [24] = {1414,71721}, -- Ebonheart Pact
    [25] = {1415,71689}, -- Aldmeri Dominion
    [26] = {1348,64716}, -- Mercenary
    [27] = {1714,82007}, -- Celestial
    [28] = {1319,64670}, -- Glass
    [29] = {1181,57835}, -- Xivkyn
    [31] = {1715,76895}, -- Draugr
    [33] = {1318,57591}, -- Akaviri
    [35] = {1713,57606}, -- Yokudan
    [39] = {1662,82072}, -- Minotaur
    [40] = {1798,75229}, --Ebony
    [41] = {1422,74540}, -- Abah's Watch
    [42] = {1676,73855}, -- Skinchanger
    [43] = {1933,73839}, -- Morag Tong
    [44] = {1797,71673}, -- Ra Gada
    [45] = {1659,74653}, -- Dro-m'Athra
    [46] = {1424,76879}, -- Assassin's League
    [47] = {1417,71523}, -- Outlaw
    [48] = {2022,130011}, -- Redoran
    [49] = {2021,129995}, -- Hlaalu
    [50] = {1935,121349}, -- Militant Ordinator
    [51] = {2023,121333}, -- Telvanni
    [52] = {1934,121317}, -- Buoyant Armiger
    [54] = {1932,124680}, -- Ashlander
    [55] = {2120,134740}, -- Worm Cult
    [56] = {1796,114968}, --Silken Ring
    [57] = {1795,114952}, --Mazzatun
    [59] = {1545,82023}, -- Hollowjack
    [60] = {2024,130027}, -- Refabricated
    [61] = {2098,132534}, -- Bloodforge
    [62] = {2097,132566}, -- Dreadhorn
    [65] = {2044,132550}, -- Apostle
    [66] = {2045,132582}, -- Ebonshadow
    [69] = {2190,134756}, -- Fang Lair
    [70] = {2189,134772}, -- Scalecaller
    [71] = {2186,137852}, -- Psijic Order
    [72] = {2187,137921}, -- Sapiarch
    [73] = {2319,140497}, -- Welkynar
    [74] = {2188,140445}, -- Dremora
    [75] = {2285,140429}, -- Pyandonean
    [77] = {2317,140463}, -- Huntsman
    [78] = {2318,140479}, -- Silver Dawn
    [79] = {2360,142203}, -- Dead-Water
    [80] = {2359,142187}, -- Honor Guard
    [81] = {2361,142219}, -- Elder Argonian
    [82] = {2503,147667}, -- Coldsnap
    [83] = {2504,147683}, -- Meridian
    [84] = {2505,147699}, -- Anequina
    [85] = {2506,147715}, -- Pellitine
    [86] = {2507,147731}, -- Sunspire
    [89] = {2629,156574}, -- Stags of Z'en
    [92] = {2630,156556}, -- Dragonguard
    [93] = {2628,156591}, -- Moongrave Fane
    [94] = {2748,156609}, -- New Moon	
    [95] = {2750,156628}, -- Shield of Senchal	
    [97] = {2747,157518}, -- Icereach Coven
    [98] = {2749,158292}, -- Pyre Watch
    [100] = {2757,160494}, -- Blackreach Vanguard
    [101] = {2761,160543}, -- Greymoor
    [102] = {2762,160560}, -- Sea Giant
    [103] = {2763,160577}, -- Ancestral Nord
    [104] = {2773,160594}, -- Ancestral High Elf
    [105] = {2776,160611}, -- Ancestral Orc
    [106] = {2849,166973}, -- Thorn Legion
    [107] = {2850,166990}, -- Hazardous Alchemy
    [108] = {2903,167174}, -- Ancestral Akaviri
    [109] = {2904,167191}, -- Ancestral Breton
    [110] = {2905,167271}, -- Ancestral Reach
    [111] = {2926,167944}, -- Nighthollow
    [112] = {2938,167961}, -- Arkthzand Armory
    [113] = {2998,167978}, -- Wayward Guardian
    [114] = {2959,170132}, -- House Hexos
    [116] = {2984,171552}, -- True-Sworn
    [117] = {2991,171581}, -- Waking Flame
    [119] = {2999,171859}, -- Ancient Daedric
    [120] = {3000,171879}, -- Black Fin Legion
    [121] = {3001,171896}, -- Ivory Brigade
    [122] = {3002,171913}, -- Sul-Xan
    [123] = {3094,176058}, -- Crimson Oath
    [124] = {3097,178505}, -- Silver Rose
    [125] = {3098,178529}, -- Annihilarch's Chosen
    [126] = {3220,178707}, -- Fargrave Guardian
    [128] = {3228,181662}, -- Dreadsails
    [129] = {3229,181679}, -- Ascendant Order
    [130] = {3258,182521}, -- Syrabanic Marine
    [131] = {3259,182538}, -- Steadfast Society
    [132] = {3260,182555}, -- Systres Guardian
    [135] = {3422,187729}, -- Y'ffre's Will
    [136] = {3423,187763}, -- Drowned Mariner
    [138] = {3464,188308}, -- Firesong
    [139] = {3465,188325}, -- House Monard
    [140] = {3546,190890}, -- Scribes Of Mora
    [141] = {3547,190907}, -- Blessed Inheritor
    [142] = {3667,194493}, -- Clan Dreamcarver
    [143] = {3668,194514}, -- Dead Keeper
    [144] = {3669,194541}, -- Kindred's Concord
}

local function getLoreBookIndicesForStyle(id)
	local achievementId = styles[id][1]
	local collectionId = GetAchievementLinkedBookCollectionId(achievementId)
	return GetLoreBookCollectionIndicesFromCollectionId(collectionId)
end

local function isKnownStyle(id,chapter)
		local categoryIndex, collectionIndex = getLoreBookIndicesForStyle(id)
		local _, _, known = GetLoreBookInfo(categoryIndex, collectionIndex, chapter)
		return known
end

local function unknownMotifPrices()
    total_price = 0
    broken_links = {}
    for id = 1,144 do
        if styles[id] ~= nil then
            for chapter = 1,14 do
                if not isKnownStyle(id,chapter) then 
                    link = ('|H0:item:%u:5:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h'):format(styles[id][2] + (chapter - 1)) 
                    price = TamrielTradeCentrePrice:GetPriceInfo(link)
                    if price ~= nil then
                        if price.SuggestedPrice ~= nil then
                            total_price = total_price + price.SuggestedPrice 
                        else 
                            total_price = total_price + price.SaleAvg
                        end
                    else
                        table.insert(broken_links, link)
                    end
                end
            end
        end
    end
    d("Estimated minimum purchase price for all unknown motifs: " .. total_price)
    if #broken_links > 0 then
        d("Unfetchable prices: " .. table.concat(broken_links, ", "))
    end
end

local function allMotifPrices()
    total_price_minimum = 0
    total_price_avg = 0
    broken_links = {}
    for id = 1,144 do
        if styles[id] ~= nil then
            for chapter = 1,14 do
                link = ('|H0:item:%u:5:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h'):format(styles[id][2] + (chapter - 1)) 
                price = TamrielTradeCentrePrice:GetPriceInfo(link)
                if price ~= nil then
                    if price.SuggestedPrice ~= nil then
                        total_price_minimum = total_price_minimum + price.SuggestedPrice
                    elseif price.SaleAvg ~= nil then
                        total_price_minimum = total_price_minimum + price.SaleAvg
                    end
                    if price.SuggestedPrice ~= nil and price.SaleAvg ~= nil then 
                        total_price_avg = total_price_avg + price.SaleAvg
                    end
                else 
                    table.insert(broken_links, link)
                end
            end
        end
    end
    d("Estimated minimum purchase price for all motifs: " .. total_price_minimum)
    d("Estimated average sale price for all motifs: " .. total_price_avg)
    if #broken_links > 0 then
        d("Unfetchable prices: " .. table.concat(broken_links, ", "))
    end
end

local function Init(event, name)
    if name ~= MotifPrices.name then return end
    EVENT_MANAGER:UnregisterForEvent(MotifPrices.name, EVENT_ADD_ON_LOADED)

    SLASH_COMMANDS["/mpunknown"] = unknownMotifPrices
    SLASH_COMMANDS["/mptotal"] = allMotifPrices
end


EVENT_MANAGER:RegisterForEvent(MotifPrices.name, EVENT_ADD_ON_LOADED, Init)
    