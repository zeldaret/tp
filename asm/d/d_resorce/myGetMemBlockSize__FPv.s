lbl_8003BC98:
/* 8003BC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003BC9C  7C 08 02 A6 */	mflr r0
/* 8003BCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003BCA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003BCA8  93 C1 00 08 */	stw r30, 8(r1)
/* 8003BCAC  7C 7E 1B 78 */	mr r30, r3
/* 8003BCB0  48 29 2B 8D */	bl findFromRoot__7JKRHeapFPv
/* 8003BCB4  7C 7F 1B 78 */	mr r31, r3
/* 8003BCB8  81 83 00 00 */	lwz r12, 0(r3)
/* 8003BCBC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8003BCC0  7D 89 03 A6 */	mtctr r12
/* 8003BCC4  4E 80 04 21 */	bctrl 
/* 8003BCC8  3C 03 BA A8 */	addis r0, r3, 0xbaa8
/* 8003BCCC  28 00 50 48 */	cmplwi r0, 0x5048
/* 8003BCD0  40 82 00 14 */	bne lbl_8003BCE4
/* 8003BCD4  7F C3 F3 78 */	mr r3, r30
/* 8003BCD8  7F E4 FB 78 */	mr r4, r31
/* 8003BCDC  48 29 29 D5 */	bl getSize__7JKRHeapFPvP7JKRHeap
/* 8003BCE0  48 00 00 08 */	b lbl_8003BCE8
lbl_8003BCE4:
/* 8003BCE4  38 60 FF FF */	li r3, -1
lbl_8003BCE8:
/* 8003BCE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003BCEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003BCF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003BCF4  7C 08 03 A6 */	mtlr r0
/* 8003BCF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003BCFC  4E 80 00 20 */	blr 
