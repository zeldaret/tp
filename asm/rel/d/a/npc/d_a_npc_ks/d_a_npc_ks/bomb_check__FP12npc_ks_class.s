lbl_80A49B6C:
/* 80A49B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A49B70  7C 08 02 A6 */	mflr r0
/* 80A49B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A49B78  38 80 00 00 */	li r4, 0
/* 80A49B7C  4B FF FD B5 */	bl search_bomb__FP12npc_ks_classi
/* 80A49B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A49B84  7C 08 03 A6 */	mtlr r0
/* 80A49B88  38 21 00 10 */	addi r1, r1, 0x10
/* 80A49B8C  4E 80 00 20 */	blr 
