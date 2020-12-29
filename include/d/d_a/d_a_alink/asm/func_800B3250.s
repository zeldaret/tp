/* 800B3250 000B0190  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B3254 000B0194  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B3258 000B0198  98 83 5E 24 */ stb r4, 0x5e24(r3)
/* 800B325C 000B019C  38 00 00 00 */ li r0, 0
/* 800B3260 000B01A0  98 03 5E 4A */ stb r0, 0x5e4a(r3)
/* 800B3264 000B01A4  4E 80 00 20 */ blr
