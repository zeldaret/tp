lbl_80A49B48:
/* 80A49B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A49B4C  7C 08 02 A6 */	mflr r0
/* 80A49B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A49B54  38 80 00 01 */	li r4, 1
/* 80A49B58  4B FF FD D9 */	bl search_bomb__FP12npc_ks_classi
/* 80A49B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A49B60  7C 08 03 A6 */	mtlr r0
/* 80A49B64  38 21 00 10 */	addi r1, r1, 0x10
/* 80A49B68  4E 80 00 20 */	blr 
