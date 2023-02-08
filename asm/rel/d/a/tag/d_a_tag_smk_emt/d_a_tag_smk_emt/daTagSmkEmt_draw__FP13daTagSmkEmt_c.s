lbl_80D615D8:
/* 80D615D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D615DC  7C 08 02 A6 */	mflr r0
/* 80D615E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D615E4  4B FF FE 1D */	bl draw__13daTagSmkEmt_cFv
/* 80D615E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D615EC  7C 08 03 A6 */	mtlr r0
/* 80D615F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D615F4  4E 80 00 20 */	blr 
