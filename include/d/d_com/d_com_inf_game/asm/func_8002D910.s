/* 8002D910 0002A850  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002D914 0002A854  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002D918 0002A858  3C 63 00 02 */ addis r3, r3, 2
/* 8002D91C 0002A85C  88 63 DD FA */ lbz r3, -0x2206(r3)
/* 8002D920 0002A860  4E 80 00 20 */ blr