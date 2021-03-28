lbl_80290BD0:
/* 80290BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80290BD4  7C 08 02 A6 */	mflr r0
/* 80290BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80290BDC  48 04 5B 95 */	bl findIdResource__10JKRArchiveCFUs
/* 80290BE0  28 03 00 00 */	cmplwi r3, 0
/* 80290BE4  40 82 00 0C */	bne lbl_80290BF0
/* 80290BE8  38 60 00 00 */	li r3, 0
/* 80290BEC  48 00 00 08 */	b lbl_80290BF4
lbl_80290BF0:
/* 80290BF0  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_80290BF4:
/* 80290BF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80290BF8  7C 08 03 A6 */	mtlr r0
/* 80290BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80290C00  4E 80 00 20 */	blr 
