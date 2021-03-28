lbl_80B288DC:
/* 80B288DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B288E0  7C 08 02 A6 */	mflr r0
/* 80B288E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B288E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B288EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B288F0  38 63 01 00 */	addi r3, r3, 0x100
/* 80B288F4  38 80 00 02 */	li r4, 2
/* 80B288F8  38 A0 00 00 */	li r5, 0
/* 80B288FC  4B 50 B9 0C */	b isCollect__20dSv_player_collect_cCFiUc
/* 80B28900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B28904  7C 08 03 A6 */	mtlr r0
/* 80B28908  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2890C  4E 80 00 20 */	blr 
