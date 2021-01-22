/* 8002FA84 0002C9C4  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8002FA88 0002C9C8  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 8002FA8C 0002C9CC  3C 84 00 02 */ addis r4, r4, 2
/* 8002FA90 0002C9D0  98 64 DD FC */ stb r3, -0x2204(r4)
/* 8002FA94 0002C9D4  4E 80 00 20 */ blr
