lbl_802F4658:
/* 802F4658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F465C  7C 08 02 A6 */	mflr r0
/* 802F4660  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F4664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F4668  93 C1 00 08 */	stw r30, 8(r1)
/* 802F466C  7C 7E 1B 78 */	mr r30, r3
/* 802F4670  80 6D 90 00 */	lwz r3, mStrBuff__8J2DPrint(r13)
/* 802F4674  7C 7F 1B 78 */	mr r31, r3
/* 802F4678  88 0D 90 04 */	lbz r0, data_80451584(r13)
/* 802F467C  28 00 00 00 */	cmplwi r0, 0
/* 802F4680  41 82 00 08 */	beq lbl_802F4688
/* 802F4684  4B FD A6 B9 */	bl __dl__FPv
lbl_802F4688:
/* 802F4688  7F C3 F3 78 */	mr r3, r30
/* 802F468C  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802F4690  38 A0 00 00 */	li r5, 0
/* 802F4694  4B FD A6 7D */	bl __nwa__FUlP7JKRHeapi
/* 802F4698  90 6D 90 00 */	stw r3, mStrBuff__8J2DPrint(r13)
/* 802F469C  93 CD 90 08 */	stw r30, mStrBuffSize__8J2DPrint(r13)
/* 802F46A0  38 00 00 01 */	li r0, 1
/* 802F46A4  98 0D 90 04 */	stb r0, data_80451584(r13)
/* 802F46A8  7F E3 FB 78 */	mr r3, r31
/* 802F46AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F46B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F46B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F46B8  7C 08 03 A6 */	mtlr r0
/* 802F46BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802F46C0  4E 80 00 20 */	blr 
