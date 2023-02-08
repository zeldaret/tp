lbl_805EA72C:
/* 805EA72C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EA730  7C 08 02 A6 */	mflr r0
/* 805EA734  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EA738  48 00 09 59 */	bl Guard__8daB_GG_cFv
/* 805EA73C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EA740  7C 08 03 A6 */	mtlr r0
/* 805EA744  38 21 00 10 */	addi r1, r1, 0x10
/* 805EA748  4E 80 00 20 */	blr 
