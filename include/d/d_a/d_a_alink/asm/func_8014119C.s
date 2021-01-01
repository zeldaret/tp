/* 8014119C 0013E0DC  3C A0 80 40 */ lis r5, g_dComIfG_gameInfo@ha
/* 801411A0 0013E0E0  38 A5 61 C0 */ addi r5, r5, g_dComIfG_gameInfo@l
/* 801411A4 0013E0E4  98 65 5E 20 */ stb r3, 0x5e20(r5)
/* 801411A8 0013E0E8  98 85 5E 46 */ stb r4, 0x5e46(r5)
/* 801411AC 0013E0EC  4E 80 00 20 */ blr
