lbl_80D42128:
/* 80D42128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4212C  7C 08 02 A6 */	mflr r0
/* 80D42130  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D42138  7C 7F 1B 78 */	mr r31, r3
/* 80D4213C  4B 2D 7B 41 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80D42140  38 00 00 01 */	li r0, 1
/* 80D42144  98 1F 06 E8 */	stb r0, 0x6e8(r31)
/* 80D42148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4214C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D42150  7C 08 03 A6 */	mtlr r0
/* 80D42154  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42158  4E 80 00 20 */	blr 
