lbl_802FC02C:
/* 802FC02C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FC030  7C 08 02 A6 */	mflr r0
/* 802FC034  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FC038  4B FF B4 81 */	bl isUsed__7J2DPaneFPC7ResFONT
/* 802FC03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FC040  7C 08 03 A6 */	mtlr r0
/* 802FC044  38 21 00 10 */	addi r1, r1, 0x10
/* 802FC048  4E 80 00 20 */	blr 
