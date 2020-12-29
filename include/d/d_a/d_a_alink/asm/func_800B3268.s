/* 800B3268 000B01A8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B326C 000B01AC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B3270 000B01B0  98 83 5E 24 */ stb r4, 0x5e24(r3)
/* 800B3274 000B01B4  38 00 00 02 */ li r0, 2
/* 800B3278 000B01B8  98 03 5E 4A */ stb r0, 0x5e4a(r3)
/* 800B327C 000B01BC  4E 80 00 20 */ blr
