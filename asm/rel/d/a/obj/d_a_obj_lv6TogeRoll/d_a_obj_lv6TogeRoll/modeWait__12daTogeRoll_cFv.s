lbl_80C79324:
/* 80C79324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C79328  7C 08 02 A6 */	mflr r0
/* 80C7932C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C79330  4B FF F9 79 */	bl init_modeAcc__12daTogeRoll_cFv
/* 80C79334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C79338  7C 08 03 A6 */	mtlr r0
/* 80C7933C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C79340  4E 80 00 20 */	blr 
