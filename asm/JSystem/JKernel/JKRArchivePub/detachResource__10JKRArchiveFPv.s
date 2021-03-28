lbl_802D609C:
/* 802D609C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D60A0  7C 08 02 A6 */	mflr r0
/* 802D60A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D60A8  48 00 06 8D */	bl findPtrResource__10JKRArchiveCFPCv
/* 802D60AC  28 03 00 00 */	cmplwi r3, 0
/* 802D60B0  40 82 00 0C */	bne lbl_802D60BC
/* 802D60B4  38 60 00 00 */	li r3, 0
/* 802D60B8  48 00 00 10 */	b lbl_802D60C8
lbl_802D60BC:
/* 802D60BC  38 00 00 00 */	li r0, 0
/* 802D60C0  90 03 00 10 */	stw r0, 0x10(r3)
/* 802D60C4  38 60 00 01 */	li r3, 1
lbl_802D60C8:
/* 802D60C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D60CC  7C 08 03 A6 */	mtlr r0
/* 802D60D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D60D4  4E 80 00 20 */	blr 
