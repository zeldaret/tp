lbl_80A49E9C:
/* 80A49E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A49EA0  7C 08 02 A6 */	mflr r0
/* 80A49EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A49EA8  38 80 00 00 */	li r4, 0
/* 80A49EAC  4B FF FD 55 */	bl search_enemy__FP12npc_ks_classif
/* 80A49EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A49EB4  7C 08 03 A6 */	mtlr r0
/* 80A49EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A49EBC  4E 80 00 20 */	blr 
