/* 800E7ED0 000E4E10  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800E7ED4 000E4E14  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800E7ED8 000E4E18  98 83 5E 1C */ stb r4, 0x5e1c(r3)
/* 800E7EDC 000E4E1C  98 A3 5E 42 */ stb r5, 0x5e42(r3)
/* 800E7EE0 000E4E20  4E 80 00 20 */ blr
