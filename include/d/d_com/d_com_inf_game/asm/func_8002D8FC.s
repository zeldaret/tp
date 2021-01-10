/* 8002D8FC 0002A83C  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8002D900 0002A840  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 8002D904 0002A844  3C 84 00 02 */ addis r4, r4, 2
/* 8002D908 0002A848  98 64 DD FA */ stb r3, -0x2206(r4)
/* 8002D90C 0002A84C  4E 80 00 20 */ blr