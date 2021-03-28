lbl_802DF08C:
/* 802DF08C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF090  7C 08 02 A6 */	mflr r0
/* 802DF094  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF098  80 63 00 50 */	lwz r3, 0x50(r3)
/* 802DF09C  4B FE FC C5 */	bl __dla__FPv
/* 802DF0A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF0A4  7C 08 03 A6 */	mtlr r0
/* 802DF0A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF0AC  4E 80 00 20 */	blr 
