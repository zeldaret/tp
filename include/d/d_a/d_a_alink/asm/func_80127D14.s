/* 80127D14 00124C54  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80127D18 00124C58  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80127D1C 00124C5C  98 83 5E 5C */ stb r4, 0x5e5c(r3)
/* 80127D20 00124C60  38 00 00 00 */ li r0, 0
/* 80127D24 00124C64  98 03 5E 5E */ stb r0, 0x5e5e(r3)
/* 80127D28 00124C68  4E 80 00 20 */ blr
