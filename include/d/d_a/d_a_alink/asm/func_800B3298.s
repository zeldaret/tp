/* 800B3298 000B01D8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B329C 000B01DC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B32A0 000B01E0  98 83 5E 1D */ stb r4, 0x5e1d(r3)
/* 800B32A4 000B01E4  38 00 00 00 */ li r0, 0
/* 800B32A8 000B01E8  98 03 5E 43 */ stb r0, 0x5e43(r3)
/* 800B32AC 000B01EC  4E 80 00 20 */ blr
