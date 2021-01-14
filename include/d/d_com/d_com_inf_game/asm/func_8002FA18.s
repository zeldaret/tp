/* 8002FA18 0002C958  38 00 00 01 */ li r0, 1
/* 8002FA1C 0002C95C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002FA20 0002C960  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002FA24 0002C964  3C 63 00 02 */ addis r3, r3, 2
/* 8002FA28 0002C968  98 03 DD FA */ stb r0, -0x2206(r3)
/* 8002FA2C 0002C96C  4E 80 00 20 */ blr