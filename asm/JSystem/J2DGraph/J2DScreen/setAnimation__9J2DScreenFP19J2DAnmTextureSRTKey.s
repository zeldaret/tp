lbl_802F9798:
/* 802F9798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F979C  7C 08 02 A6 */	mflr r0
/* 802F97A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F97A4  39 61 00 20 */	addi r11, r1, 0x20
/* 802F97A8  48 06 8A 31 */	bl _savegpr_28
/* 802F97AC  7C 7C 1B 78 */	mr r28, r3
/* 802F97B0  7C 9D 23 78 */	mr r29, r4
/* 802F97B4  7F A3 EB 78 */	mr r3, r29
/* 802F97B8  7F 84 E3 78 */	mr r4, r28
/* 802F97BC  81 9D 00 00 */	lwz r12, 0(r29)
/* 802F97C0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802F97C4  7D 89 03 A6 */	mtctr r12
/* 802F97C8  4E 80 04 21 */	bctrl 
/* 802F97CC  A0 7D 00 18 */	lhz r3, 0x18(r29)
/* 802F97D0  38 00 00 03 */	li r0, 3
/* 802F97D4  7C 03 03 D6 */	divw r0, r3, r0
/* 802F97D8  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 802F97DC  3B C0 00 00 */	li r30, 0
/* 802F97E0  48 00 00 34 */	b lbl_802F9814
lbl_802F97E4:
/* 802F97E4  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 802F97E8  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 802F97EC  7C 83 02 2E */	lhzx r4, r3, r0
/* 802F97F0  A0 1C 01 02 */	lhz r0, 0x102(r28)
/* 802F97F4  7C 04 00 40 */	cmplw r4, r0
/* 802F97F8  40 80 00 18 */	bge lbl_802F9810
/* 802F97FC  80 7C 01 04 */	lwz r3, 0x104(r28)
/* 802F9800  1C 04 00 88 */	mulli r0, r4, 0x88
/* 802F9804  7C 63 02 14 */	add r3, r3, r0
/* 802F9808  7F A4 EB 78 */	mr r4, r29
/* 802F980C  4B FF 11 41 */	bl setAnimation__11J2DMaterialFP19J2DAnmTextureSRTKey
lbl_802F9810:
/* 802F9810  3B DE 00 01 */	addi r30, r30, 1
lbl_802F9814:
/* 802F9814  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802F9818  7C 00 F8 40 */	cmplw r0, r31
/* 802F981C  41 80 FF C8 */	blt lbl_802F97E4
/* 802F9820  39 61 00 20 */	addi r11, r1, 0x20
/* 802F9824  48 06 8A 01 */	bl _restgpr_28
/* 802F9828  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F982C  7C 08 03 A6 */	mtlr r0
/* 802F9830  38 21 00 20 */	addi r1, r1, 0x20
/* 802F9834  4E 80 00 20 */	blr 
