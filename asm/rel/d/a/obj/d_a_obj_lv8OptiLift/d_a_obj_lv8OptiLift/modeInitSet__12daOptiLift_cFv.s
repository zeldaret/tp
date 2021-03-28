lbl_80C8B464:
/* 80C8B464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B468  7C 08 02 A6 */	mflr r0
/* 80C8B46C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B470  4B FF FE 19 */	bl init_modeWait__12daOptiLift_cFv
/* 80C8B474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B478  7C 08 03 A6 */	mtlr r0
/* 80C8B47C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B480  4E 80 00 20 */	blr 
