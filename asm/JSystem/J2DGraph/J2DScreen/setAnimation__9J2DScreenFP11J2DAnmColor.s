lbl_802F9704:
/* 802F9704  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F9708  7C 08 02 A6 */	mflr r0
/* 802F970C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F9710  39 61 00 20 */	addi r11, r1, 0x20
/* 802F9714  48 06 8A C5 */	bl _savegpr_28
/* 802F9718  7C 7C 1B 78 */	mr r28, r3
/* 802F971C  7C 9D 23 78 */	mr r29, r4
/* 802F9720  7F A3 EB 78 */	mr r3, r29
/* 802F9724  7F 84 E3 78 */	mr r4, r28
/* 802F9728  81 9D 00 00 */	lwz r12, 0(r29)
/* 802F972C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802F9730  7D 89 03 A6 */	mtctr r12
/* 802F9734  4E 80 04 21 */	bctrl 
/* 802F9738  A3 FD 00 18 */	lhz r31, 0x18(r29)
/* 802F973C  3B C0 00 00 */	li r30, 0
/* 802F9740  48 00 00 34 */	b lbl_802F9774
lbl_802F9744:
/* 802F9744  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 802F9748  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 802F974C  7C 83 02 2E */	lhzx r4, r3, r0
/* 802F9750  A0 1C 01 02 */	lhz r0, 0x102(r28)
/* 802F9754  7C 04 00 40 */	cmplw r4, r0
/* 802F9758  40 80 00 18 */	bge lbl_802F9770
/* 802F975C  80 7C 01 04 */	lwz r3, 0x104(r28)
/* 802F9760  1C 04 00 88 */	mulli r0, r4, 0x88
/* 802F9764  7C 63 02 14 */	add r3, r3, r0
/* 802F9768  7F A4 EB 78 */	mr r4, r29
/* 802F976C  4B FF 11 31 */	bl setAnimation__11J2DMaterialFP11J2DAnmColor
lbl_802F9770:
/* 802F9770  3B DE 00 01 */	addi r30, r30, 1
lbl_802F9774:
/* 802F9774  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802F9778  7C 00 F8 40 */	cmplw r0, r31
/* 802F977C  41 80 FF C8 */	blt lbl_802F9744
/* 802F9780  39 61 00 20 */	addi r11, r1, 0x20
/* 802F9784  48 06 8A A1 */	bl _restgpr_28
/* 802F9788  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F978C  7C 08 03 A6 */	mtlr r0
/* 802F9790  38 21 00 20 */	addi r1, r1, 0x20
/* 802F9794  4E 80 00 20 */	blr 
