lbl_800E7EE4:
/* 800E7EE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E7EE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E7EEC  88 63 5E 1C */	lbz r3, 0x5e1c(r3)
/* 800E7EF0  4E 80 00 20 */	blr 
