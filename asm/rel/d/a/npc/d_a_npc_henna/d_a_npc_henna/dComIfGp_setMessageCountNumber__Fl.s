lbl_8054A568:
/* 8054A568  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8054A56C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8054A570  90 64 5E 0C */	stw r3, 0x5e0c(r4)
/* 8054A574  4E 80 00 20 */	blr 
