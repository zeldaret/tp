lbl_802F9838:
/* 802F9838  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F983C  7C 08 02 A6 */	mflr r0
/* 802F9840  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F9844  39 61 00 20 */	addi r11, r1, 0x20
/* 802F9848  48 06 89 91 */	bl _savegpr_28
/* 802F984C  7C 7C 1B 78 */	mr r28, r3
/* 802F9850  7C 9D 23 78 */	mr r29, r4
/* 802F9854  7F A3 EB 78 */	mr r3, r29
/* 802F9858  7F 84 E3 78 */	mr r4, r28
/* 802F985C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802F9860  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802F9864  7D 89 03 A6 */	mtctr r12
/* 802F9868  4E 80 04 21 */	bctrl 
/* 802F986C  A3 FD 00 1A */	lhz r31, 0x1a(r29)
/* 802F9870  3B C0 00 00 */	li r30, 0
/* 802F9874  48 00 00 34 */	b lbl_802F98A8
lbl_802F9878:
/* 802F9878  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 802F987C  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 802F9880  7C 83 02 2E */	lhzx r4, r3, r0
/* 802F9884  A0 1C 01 02 */	lhz r0, 0x102(r28)
/* 802F9888  7C 04 00 40 */	cmplw r4, r0
/* 802F988C  40 80 00 18 */	bge lbl_802F98A4
/* 802F9890  80 7C 01 04 */	lwz r3, 0x104(r28)
/* 802F9894  1C 04 00 88 */	mulli r0, r4, 0x88
/* 802F9898  7C 63 02 14 */	add r3, r3, r0
/* 802F989C  7F A4 EB 78 */	mr r4, r29
/* 802F98A0  4B FF 11 8D */	bl setAnimation__11J2DMaterialFP16J2DAnmTexPattern
lbl_802F98A4:
/* 802F98A4  3B DE 00 01 */	addi r30, r30, 1
lbl_802F98A8:
/* 802F98A8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802F98AC  7C 00 F8 40 */	cmplw r0, r31
/* 802F98B0  41 80 FF C8 */	blt lbl_802F9878
/* 802F98B4  39 61 00 20 */	addi r11, r1, 0x20
/* 802F98B8  48 06 89 6D */	bl _restgpr_28
/* 802F98BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F98C0  7C 08 03 A6 */	mtlr r0
/* 802F98C4  38 21 00 20 */	addi r1, r1, 0x20
/* 802F98C8  4E 80 00 20 */	blr 
