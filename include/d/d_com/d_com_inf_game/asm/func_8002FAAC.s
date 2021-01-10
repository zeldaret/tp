/* 8002FAAC 0002C9EC  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8002FAB0 0002C9F0  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 8002FAB4 0002C9F4  3C 84 00 02 */ addis r4, r4, 2
/* 8002FAB8 0002C9F8  98 64 DE 0A */ stb r3, -0x21f6(r4)
/* 8002FABC 0002C9FC  4E 80 00 20 */ blr
