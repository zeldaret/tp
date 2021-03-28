lbl_80C1D280:
/* 80C1D280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1D284  7C 08 02 A6 */	mflr r0
/* 80C1D288  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1D28C  88 03 05 D8 */	lbz r0, 0x5d8(r3)
/* 80C1D290  28 00 00 00 */	cmplwi r0, 0
/* 80C1D294  41 82 00 08 */	beq lbl_80C1D29C
/* 80C1D298  48 00 00 15 */	bl init_modeRide__11daHeavySw_cFv
lbl_80C1D29C:
/* 80C1D29C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1D2A0  7C 08 03 A6 */	mtlr r0
/* 80C1D2A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1D2A8  4E 80 00 20 */	blr 
