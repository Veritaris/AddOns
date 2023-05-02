-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

private.ACHIEVEMENT_ZONE_IDS = {
	[104] = { 1312 }; --Shadowmoon valley (BC)
	[109] = { 1312 }; --Netherstorm (BC)
	[100] = { 1312 }; --Hellfire peninsula (BC)
	[105] = { 1312 }; --Blades edge mountains (BC)
	[102] = { 1312 }; --Zangarmarsh (BC)
	[108] = { 1312 }; --Terokkar forest (BC)
	[107] = { 1312 }; --Nagrand (BC)
	[119] = { 2257 }; --Sholazar basin (WOLK)
	[120] = { 2257 }; --The storm peaks (WOLK)
	[114] = { 2257 }; --Borean tundra (WOLK)
	[117] = { 2257 }; --Howling fjord (WOLK)
	[121] = { 2257 }; --Zul drak (WOLK)
	[115] = { 2257 }; --Dragonblight (WOLK)
	[118] = { 2257 }; --Icecrown (WOLK)
	[116] = { 2257 }; --Grizzly hills (WOLK)
	[554] = { 8714 }; --Timeless isle (Pandaria)
	[555] = { 8714 }; --Cavern of lost spirits (Pandaria)
	[504] = { 8103 }; --Isle of thunder (Pandaria)
	[505] = { 8103 }; --Lightning vein mine (Pandaria)
	[371] = { 7439 }; --The jade forest (Pandaria)
	[379] = { 7439 }; --Kun lai summit (Pandaria)
	[422] = { 7439 }; --Dread wastes (Pandaria)
	[390] = { 7439 }; --Vale of eternal blossoms (Pandaria)
	[418] = { 7439 }; --Krasarang wilds (Pandaria)
	[376] = { 7439 }; --Valley of the four winds (Pandaria)
	[388] = { 7439 }; --Townlong steppes (Pandaria)
	[534] = { 10070 }; --Tanaan jungle (WOD)
	[630] = { 11261 }; --Azsuna (Legion)
	[650] = { 11264 }; --Highmountain (Legion)
	[658] = { 11264 }; --Highmountain30 (Legion)
	[641] = { 11262 }; --Val sharah (Legion)
	[680] = { 11265 }; --Suramar (Legion)
	[634] = { 11263 }; --Stormheim (Legion)
	[646] = { 11841 }; --Broken shore (Legion)
	[885] = { 12078 }; --Antoran wastes (Legion)
	[882] = { 12078 }; --Mac aree (Legion)
	[830] = { 12078 }; --Krokuun (Legion)
	[833] = { 12078 }; --Krokuun7 (Legion)
	[1165] = { 12851, 12944 }; --Zuldazar - Dazar'alor (BFA)
	[862] = { 12851, 12944 }; --Zuldazar (BFA)
	[863] = { 12771, 12942 }; --Nazmir (BFA)
	[864] = { 12849, 12943 }; --Vol'dun (BFA)
	[1161] = { 12852, 12939 }; --Tiragarde Sound - Boralus (BFA)
	[895] = { 12852, 12939 }; --Tiragarde Sound (BFA)
	[896] = { 12995, 12941 }; --Drustvar (BFA)
	[942] = { 12853, 12940 }; --Stormsong Valley (BFA)
	[1355] = { 13549, 13691 }; --Nazjatar (BFA)
	[1462] = { 13470 }; --Mechagon (BFA)
	[1533] = { 14307, 14311, 14733 }; --Bastion (Shadowlands)
	[1536] = { 14308, 14312 }; --Maldraxxus (Shadowlands)
	[1649] = { 14312 }; --Maldraxxus (Shadowlands)
	[1565] = { 14309, 14313, 14353 }; --Ardenweald (Shadowlands)
	[1525] = { 14310, 14314 }; --Revendreth (Shadowlands)
	[1543] = { 14743, 14660, 14738, 15107, 15099, 15054 }; --The Maw (Shadowlands)
	[1961] = { 15107, 15099 }; --Korthia (Shadowlands)
	[1970] = { 15391, 15331, 15392, 15509 }; --Zereth mortis
	[2030] = { 15331 }; --Zereth mortis (Nexus of Actualization)
	[2022] = { 16461, 16297, 16496, 16676 }; --The Waking Shores (Dragonflight)
	[2024] = { 16461, 16300, 16678, 16444 }; --The Azure Span (Dragonflight)
	[2023] = { 16461, 16299, 16677 }; --Ohn'ahran Plains (Dragonflight)
	[2025] = { 16461, 16301, 16679 }; --Thaldraszus (Dragonflight)
	[2132] = { 16678 }; --The Azure Span minimap (Dragonflight)
	[2151] = { 17524, 17525, 17526 }; --The Forbidden Reach (10.0.7) (Dragonflight)
}

private.ACHIEVEMENT_TARGET_IDS = {
	[2257] = { 32517, 32495, 32358, 32377, 32398, 32409, 32422, 32438, 32471, 32481, 32630, 32487, 32501, 32357, 32361, 32386, 32400, 32417, 32429, 32447, 32475, 32485, 32500 }; --Frostbitten (Wrath of the Lich king)
	[1312] = { 18695, 18697, 18694, 18686, 18678, 18692, 18680, 18690, 18685, 18683, 18682, 18681, 18689, 18698, 17144, 18696, 18677, 20932, 18693, 18679 }; --Bloody Rare (Burning Crusade)
	[8714] = { 73158, 73161, 72245, 72193, 71864, 72048, 73277, 73282, 73166, 73704, 73170, 73171, 73173, 73167, 73279, 73174, 73666, 73160, 72909, 71919, 72045, 73854, 72769, 72775, 72808, 73163, 73157, 73169, 73175, 73172, 72970, 73281 }; --Timeless Champion (Pandaria)
	[8103] = { 50358, 69996, 69998, 70000, 70002, 69664, 69997, 69999, 70001, 70003 }; --Champions of Lei Shen (Pandaria)
	[7439] = { 50823, 50830, 50832, 50840, 50766, 50769, 50776, 50363, 50388, 50734, 50749, 50339, 50341, 50347, 50350, 50352, 50355, 50359, 50811, 50817, 50821, 50782, 50787, 50791, 50806, 51059, 50332, 50334, 50828, 50831, 50836, 50750, 50768, 50772, 50780, 50364, 50733, 50739, 50338, 50340, 50344, 50349, 50351, 50354, 50356, 50808, 50816, 50820, 50822, 50783, 50789, 50805, 51078, 50331, 50333, 50336 }; --Glorious! (Pandaria)
	[10070] = { 91374, 91087, 90429, 90437, 90442, 90024, 90782, 91695, 93002, 91243, 93001, 90884, 90887, 90936, 92429, 92508, 92465, 92552, 92627, 92694, 93028, 93125, 92766, 92819, 93279, 91871, 90094, 92647, 92408, 93264, 91093, 91098, 90438, 90434, 90519, 92451, 92274, 92887, 91232, 93057, 92977, 90885, 90888, 92197, 92495, 92517, 92574, 92606, 92636, 92941, 93076, 93168, 92817, 92657, 91727, 90122, 93236, 91009, 92411, 89675 }; --Jungle Stalker (WOD)
	[11261] = { 89650, 89846, 89865, 90057, 90217, 90505, 90901, 91187, 91579, 106990, 109504, 107657, 107269, 89816, 89850, 89884, 90164, 90244, 90803, 91115, 91100, 105938, 107127, 112637, 112636, 107113, 89016 }; --Adventurer of Azsuna (Legion)
	[11264] = { 101077, 97933, 96590, 95872, 97203, 96410, 97593, 97102, 96621, 98024, 98311, 97653, 97345, 97326, 100302, 109498, 100303, 109501, 109500, 97220, 97449, 98299, 100232, 100230, 100231, 100495, 97093, 98890 }; --Adventurer of Highmountain (Legion)
	[11262] = { 92117, 92423, 93030, 92334, 94414, 95123, 95318, 97517, 109708, 92180, 92965, 93205, 94485, 95221, 97504, 98241, 110562, 93679 }; --Adventurer of Val'sharah (Legion)
	[11265] = { 99610, 100864, 103214, 103575, 105547, 107846, 109954, 110340, 110577, 110726, 110832, 110944, 111197, 111649, 111653, 112802, 99792, 103183, 103223, 103841, 106351, 109054, 110024, 110438, 110656, 110824, 110870, 111007, 111329, 111651, 112497, 102303 }; --Adventurer of Suramar (Legion)
	[11263] = { 91529, 91803, 91892, 92152, 92604, 92613, 92609, 92611, 92631, 92634, 92626, 92633, 92751, 93166, 93401, 97630, 98268, 98503, 110363, 91795, 91874, 92040, 92599, 92685, 92763, 93371, 94413, 98188, 98421, 107926, 90139 }; --Adventurer of Stormheim (Legion)
	[11841] = { 120583, 120665, 120681, 120641, 120675, 120686 }; --Naxt Victim (Legion)
	[12078] = { 127705, 127376, 123689, 122958, 120393, 127700, 127706, 125388, 125820, 126115, 125824, 122912, 124775, 126815, 126860, 126864, 126866, 126868, 126885, 126889, 126898, 124440, 125498, 126908, 126912, 126338, 127300, 126254, 127084, 126946, 127118, 122838, 122999, 122947, 127581, 127703, 124804, 125479, 126199, 126040, 126419, 122911, 123464, 126852, 126862, 126865, 126867, 126869, 126887, 126896, 126899, 125497, 126900, 126910, 126913, 127288, 127291, 127090, 127096, 126208 }; --Commander of Argus (Legion)
	[13027] = { 143316, 143313, 143314, 143311 }; --Mushroom Harvest (BFA)
	[12851] = { 276735, 279609, 277561, 284454, 288596, 281092, 281655, 281898, 284455, 290725 }; --Treasures of Zuldazar (BFA)
	[12944] = { 129961, 136428, 131476, 129343, 127939, 120899, 122004, 134738, 133842, 133190, 132244, 131687, 129954, 136413, 131233, 128699, 126637, 124185, 134760, 134048, 134049, 134782, 133155, 131718 }; --Adventurer of Zuldazar (BFA)
	[12771] = { 280504, 279253, 277715, 279689, 278436, 280522, 279260, 278437, 279299, 277885 }; --Treasures of Nazmir (BFA)
	[12942] = { 125250, 134293, 128965, 134296, 125232, 121242, 128974, 133373, 124397, 134295, 134294, 127820, 126460, 126907, 129657, 133539, 134298, 126635, 129005, 126187, 127001, 128426, 124399, 133527, 125214, 126142, 127873, 126056, 126926, 133531, 133812, 128935, 128930 }; --Adventurer of Nazmir (BFA)
	[12849] = { 280951, 287304, 287320, 287326, 294317, 287318, 287324, 294316, 294319, 287239 }; --Treasures of Vol'dun (BFA)
	[12943] = { 135852, 128553, 129476, 136346, 136335, 130443, 136341, 137681, 136340, 136336, 134571, 136304, 129180, 134625, 130439, 128497, 136393, 136390, 124722, 128674, 129283, 128686, 128951, 127776, 136338, 134745, 130401, 134638, 129411 }; --Adventurer of Vol'dun (BFA)
	[12852] = { 293962, 293965, 281397, 293964, 293881, 130350, 131453, 293852, 293884, 293880, 292686, 292673, 292674, 292675, 292676, 292677 }; --Treasures of Tiragarde Sound (BFA)
	[12939] = { 132182, 132068, 139145, 132088, 132211, 139233, 134106, 139205, 132179, 127289, 139285, 139135, 133356, 131389, 132076, 129181, 132086, 130508, 139152, 132127, 131520, 139290, 131252, 131262, 139278, 139287, 132280, 139280, 139289, 139235, 131984, 137180 }; --Adventurer of Tiragarde Sound (BFA)
	[12995] = { 297825, 297891, 297893, 297828, 297892, 297879, 297878, 297881, 298920, 297880 }; --Treasures of Drustvar (BFA)
	[12941] = { 124548, 127333, 127765, 127844, 128973, 127129, 129805, 129995, 130143, 134213, 135796, 137824, 138618, 138863, 139321, 125453, 127651, 126621, 127877, 127901, 129904, 128707, 129835, 129950, 130138, 132319, 134754, 137529, 137825, 138675, 138871, 138870, 138866, 139322, 134706 }; --Adventurer of Drustvar (BFA)
	[12853] = { 289647, 281494, 284448, 293349, 294173, 280619, 282153, 279042, 293350, 294174 }; --Treasures of Stormsong Valley (BFA)
	[12940] = { 141175, 138938, 136189, 139319, 132007, 141029, 141286, 141059, 140938, 136183, 135939, 141226, 141039, 129803, 130079, 141239, 139980, 140997, 139328, 134884, 137025, 142088, 131404, 139298, 139385, 134897, 135947, 141088, 130897, 141143, 138963, 139988, 140925, 139515 }; --Adventurer of Stormsong Valley (BFA)
	[13549] = { 306409, 326394, 326401, 326402, 326403, 326404, 326405, 326406, 326407, 326408, 326419, 326417, 326416, 326415, 326414, 326413, 326412, 326411, 326410, 326409, 326418, 326400, 326399, 326398, 326397, 326396, 326395, 329783, 332220 }; -- Trove Tracker (BFA)
	[13691] = { 152415, 152794, 150191, 152712, 152464, 152756, 152414, 152553, 152567, 144644, 152397, 152682, 151870, 152548, 152542, 153658, 152290, 153928, 152360, 151719, 152416, 152566, 152361, 149653, 152556, 152291, 152555, 152448, 152323, 152465, 152681, 150583, 152795, 152545, 152552, 152359, 153898, 154148, 152568, 150468 }; -- I Thought You Said They'd Be Rare? (BFA)
	[13470] = { 151124, 151672, 151702, 151934, 151884, 151569, 152001, 151940, 153000, 151933, 150342, 153205, 153200, 153226, 151627, 152764, 154225, 154739, 151625, 151684, 150575, 152007, 151202, 151296, 151308, 150937, 152182, 152569, 153206, 152764, 152113, 153228, 150394, 154153, 154701, 135497, 149847, 152570 }; --Rest In Pistons (BFA)
	[14307] = { 158659, 161527, 160051, 167078, 163460, 170659, 170932, 171008, 171040, 171014, 171189, 171255, 171327, 156340, 160721, 161530, 160629, 160882, 170548, 170623, 171009, 171013, 171041, 171011, 171211, 161528, 170832, 170833, 170834, 170835, 170836, 171300, 156339 }; --Adventurer of Bastion
	[14311] = { 352428, 339641, 354213, 354208, 354214, 354202, 354275, 355286, 353941, 354289, 353944, 353943, 353942, 353940, 339601 }; --Treasures of Bastion
	[14308] = { 157058, 157125, 159753, 160059, 161857, 162528, 168147, 162669, 162711, 162741, 162797, 174108, 158406, 159105, 159886, 161105, 162180, 162586, 162588, 162690, 162727, 162767, 162819 }; --Adventurer of Maldraxxus
	[14312] = { 347444, 351980, 355886, 355865, 355872, 355947, 169664, 353380, 355880, 345456, 355980, 356535, 341424, 180273 }; --Treasures of Maldraxxus
	[14309] = { 164477, 164093, 164112, 164238, 164415, 165053, 166138, 166140, 166145, 167724, 167726, 168135, 163370, 171451, 164547, 164107, 164147, 164391, 160448, 166135, 166139, 166142, 166146, 167851, 167721, 163229, 168647, 171688 }; --Adventurer of Ardenweald
	[14313] = { 355358, 354911, 354646, 354647, 354652, 354645, 171156, 354648, 355418, 180731, 354650, 354651, 180645, 171484, 354662 }; --Treasures of Ardenweald
	[14353] = { 166146, 166139, 166142, 166145, 166140, 166138, 166135 }; --Ardenweald's a Stage
	[14310] = { 160392, 160640, 159503, 160821, 161310, 165152, 164388, 165290, 166521, 166679, 166710, 167464, 170434, 160675, 155779, 159496, 160857, 161891, 165206, 165253, 166393, 166576, 166292, 166993, 170048, 162481, 160393, 160385 }; --Adventurer of Revendreth
	[14314] = { 357584, 358292, 357697, 358292, 173449, 357487, 358298, 173488, 173704, 349798, 349794, 166680, 349565, 349793, 349797, 173607, 349795 }; --Treasures of Revendreth
	[14743] = { 157964, 157833, 160770, 170711, 169827, 170303, 158278, 172577, 166398, 170731, 170301, 171317, 158025, 170774, 154330, 162849, 164064, 170634, 170302, 172862 }; --Deadly Serious
	[14660] = { 158314, 162829, 162965, 168693, 170692, 171316, 172523, 173086, 156203, 175821, 162452, 162845, 165047, 169102, 170787, 172521, 172524, 172207, 162844 }; --It's About Sending a Message
	[14733] = { 170548 }; --In the Hot Seat
	[14738] = { 172629, 172631, 172632, 175885 }; --Hungry party
	[15107] = { 177903, 179735, 179779, 179805, 179931, 179851, 179911, 179914, 179859, 180013, 180014, 180032, 180160, 179108, 179760, 179684, 180132, 177444, 180138, 179460, 179608, 179913, 179802, 179853, 180042, 179985, 177336, 180162, 179472, 179768 }; --Conquering Korthia
	[15099] = { 369148, 369172, 369194, 369216, 369225, 369149, 369183, 369204, 369232, 369224 }; --Treasures of Korthia
	[15054] = { 177981, 177330, 177980, 178002, 178897, 178882, 177972, 178898, 177979, 177331, 178886, 177427, 178883, 178004, 178899 }; --Minions of the Cold Dark
	[15391] = { 178778, 178229, 183927, 179006, 183925, 179043, 183747, 182318, 181249, 180746, 180924, 180978, 183814, 183748, 183516, 183746, 180917, 183737, 183596, 183722, 184409, 178563, 178963, 184413, 178508, 183646, 183764, 183953, 181360 }; --Adventurer of Zereth Mortis
	[15331] = { 373543, 370140, 373561, 368205, 375376, 375354, 375405, 375382, 375411, 375423, 375481, 375484, 375495, 373548, 374976, 375281, 375369, 375408, 375422, 375413, 375478, 375483, 375485, 375413, 369757, 375272, 375496, 375493, 375492 }; --Treasures of Zereth Mortis
	[15392] = { 182114, 182155, 182158 }; --Dune Dominance
	[15509] = { 375973, 375982, 375983, 375984, 375985, 375986, 375987 }; --Tales of the Exile
	[16297] = { 381045, 380654, 375668, 380653, 380840, 195939, 382325, 381153 }; --Treasures of The Waking Shores
	[16300] = { 381160, 380843, 381110, 381158, 381157, 195373 }; --Treasures of The Azure Span
	[16299] = { 380991, 380859, 380860, 377900, 380842, 380847 }; --Treasures of the Ohn'ahran Plains
	[16301] = { 381216, 381094, 381223, 381107, 196172, 380867 }; --Treasures of Thaldraszus
	[16461] = { 193648, 193644, 193686, 193680, 193652, 193675, 193678, 193653, 193650, 193645, 193647, 193682, 193684, 193674, 193677, 193679, 193654, 193655 }; --Stormed Off
	[16496] = { 187306, 190985, 189822 }; --Obsidian Champion
	[16679] = { 193143, 193128, 193125, 193246, 193258, 193234, 193220, 193666, 183984, 191305, 193241, 193126, 193130, 193688, 193210, 193146, 193240, 193176, 193161, 193663, 193658, 193664 }; --Adventurer of Thaldraszus
	[16678] = { 193632, 194270, 191356, 194392, 194210, 193225, 190244, 193251, 193693, 193691, 193708, 193735, 193167, 193178, 193238, 197353, 197356, 197411, 193157, 198004, 193201, 193698, 193116, 193259, 193149, 193269, 193196, 193706, 193710, 193634, 197557, 193255, 197344, 197354, 197371 }; --Adventurer of The Azure Span
	[16677] = { 193165, 193142, 193209, 189652, 193173, 193123, 193235, 192045, 193140, 187559, 187781, 188124, 191842, 195204, 192453, 195186, 195409, 196350, 193136, 193188, 197009, 196010, 193227, 193212, 193170, 192020, 193215, 187219, 188095, 188451, 191950, 192364, 192557, 195223, 196334 }; --Adventurer of the Ohn'ahran Plains
	[16676] = { 196056, 187945, 193263, 193217, 193135, 193118, 193132, 193152, 193134, 192362, 190985, 193266, 187598, 190986, 193232, 193256, 193181, 192738, 193148, 193228, 193120, 186827, 193154, 193198, 186859, 189822, 186783, 187886, 190991 }; --Adventurer of The Waking Shores
	[16444] = { 197557 }; --Leftovers' Revenge
	[17526] = { 384763, 386165, 386166, 386167, 386212, 386214, 386174, 386179, 386168, 386208, 386213, 386172 }; --Treasures of the Forbidden Reach (10.0.7)
	[17524] = { 200584, 200579, 200610, 200717, 200885, 201181, 200960, 200978, 200619, 200621, 200722, 200730, 200738, 200740, 200743, 200537, 200600, 200681, 200721, 200904, 201013, 200956, 200911, 200620, 200622, 200725, 200737, 200739, 200742, 203353 }; --Adventurer of the Forbidden Reach (10.0.7)
	[17525] = { 200584, 200579, 200610, 200717, 200885, 201181, 200960, 200978, 200619, 200621, 200722, 200730, 200738, 200740, 200743, 200537, 200600, 200681, 200721, 200904, 201013, 200956, 200911, 200620, 200622, 200725, 200737, 200739, 200742, 203353 }; --Champion of the Forbidden Reach (10.0.7)
}
