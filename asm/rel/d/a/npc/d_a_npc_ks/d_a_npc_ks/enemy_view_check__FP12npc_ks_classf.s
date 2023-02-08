lbl_80A49E78:
/* 80A49E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A49E7C  7C 08 02 A6 */	mflr r0
/* 80A49E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A49E84  38 80 00 01 */	li r4, 1
/* 80A49E88  4B FF FD 79 */	bl search_enemy__FP12npc_ks_classif
/* 80A49E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A49E90  7C 08 03 A6 */	mtlr r0
/* 80A49E94  38 21 00 10 */	addi r1, r1, 0x10
/* 80A49E98  4E 80 00 20 */	blr 
