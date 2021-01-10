/* 8002F2DC 0002C21C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002F2E0 0002C220  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F2E4 0002C224  88 03 00 97 */ lbz r0, 0x97(r3)
/* 8002F2E8 0002C228  7C 03 07 74 */ extsb r3, r0
/* 8002F2EC 0002C22C  4E 80 00 20 */ blr
