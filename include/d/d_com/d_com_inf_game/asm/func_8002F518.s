/* 8002F518 0002C458  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002F51C 0002C45C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F520 0002C460  3C 63 00 02 */ addis r3, r3, 2
/* 8002F524 0002C464  88 63 DD F9 */ lbz r3, -0x2207(r3)
/* 8002F528 0002C468  4E 80 00 20 */ blr