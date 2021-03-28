lbl_80B9D998:
/* 80B9D998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9D99C  7C 08 02 A6 */	mflr r0
/* 80B9D9A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9D9A4  48 00 00 19 */	bl init_modeDropInit__10daTurara_cFv
/* 80B9D9A8  38 60 00 01 */	li r3, 1
/* 80B9D9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9D9B0  7C 08 03 A6 */	mtlr r0
/* 80B9D9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9D9B8  4E 80 00 20 */	blr 
