lbl_802D526C:
/* 802D526C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5270  7C 08 02 A6 */	mflr r0
/* 802D5274  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5278  48 00 01 41 */	bl findCacheBlock__12JKRFileCacheCFPCv
/* 802D527C  28 03 00 00 */	cmplwi r3, 0
/* 802D5280  40 82 00 0C */	bne lbl_802D528C
/* 802D5284  38 60 FF FF */	li r3, -1
/* 802D5288  48 00 00 08 */	b lbl_802D5290
lbl_802D528C:
/* 802D528C  80 63 00 18 */	lwz r3, 0x18(r3)
lbl_802D5290:
/* 802D5290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5294  7C 08 03 A6 */	mtlr r0
/* 802D5298  38 21 00 10 */	addi r1, r1, 0x10
/* 802D529C  4E 80 00 20 */	blr 
