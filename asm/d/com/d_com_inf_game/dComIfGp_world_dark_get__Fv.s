lbl_8002F518:
/* 8002F518  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002F51C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002F520  3C 63 00 02 */	addis r3, r3, 2
/* 8002F524  88 63 DD F9 */	lbz r3, -0x2207(r3)
/* 8002F528  4E 80 00 20 */	blr 
