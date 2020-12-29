/* 8010DE64 0010ADA4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8010DE68 0010ADA8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8010DE6C 0010ADAC  98 83 5E 24 */ stb r4, 0x5e24(r3)
/* 8010DE70 0010ADB0  98 A3 5E 4A */ stb r5, 0x5e4a(r3)
/* 8010DE74 0010ADB4  4E 80 00 20 */ blr
