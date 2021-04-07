lbl_800E7ED0:
/* 800E7ED0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E7ED4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E7ED8  98 83 5E 1C */	stb r4, 0x5e1c(r3)
/* 800E7EDC  98 A3 5E 42 */	stb r5, 0x5e42(r3)
/* 800E7EE0  4E 80 00 20 */	blr 
