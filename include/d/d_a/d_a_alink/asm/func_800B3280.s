/* 800B3280 000B01C0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B3284 000B01C4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B3288 000B01C8  98 83 5E 24 */ stb r4, 0x5e24(r3)
/* 800B328C 000B01CC  38 00 00 04 */ li r0, 4
/* 800B3290 000B01D0  98 03 5E 4A */ stb r0, 0x5e4a(r3)
/* 800B3294 000B01D4  4E 80 00 20 */ blr
