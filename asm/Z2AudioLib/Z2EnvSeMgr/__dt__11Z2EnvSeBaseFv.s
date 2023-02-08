lbl_802C58AC:
/* 802C58AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C58B0  7C 08 02 A6 */	mflr r0
/* 802C58B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C58B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C58BC  93 C1 00 08 */	stw r30, 8(r1)
/* 802C58C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C58C4  7C 9F 23 78 */	mr r31, r4
/* 802C58C8  41 82 00 24 */	beq lbl_802C58EC
/* 802C58CC  34 1E 00 04 */	addic. r0, r30, 4
/* 802C58D0  41 82 00 0C */	beq lbl_802C58DC
/* 802C58D4  38 7E 00 04 */	addi r3, r30, 4
/* 802C58D8  4B FD C8 AD */	bl releaseSound__14JAISoundHandleFv
lbl_802C58DC:
/* 802C58DC  7F E0 07 35 */	extsh. r0, r31
/* 802C58E0  40 81 00 0C */	ble lbl_802C58EC
/* 802C58E4  7F C3 F3 78 */	mr r3, r30
/* 802C58E8  48 00 94 55 */	bl __dl__FPv
lbl_802C58EC:
/* 802C58EC  7F C3 F3 78 */	mr r3, r30
/* 802C58F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C58F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C58F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C58FC  7C 08 03 A6 */	mtlr r0
/* 802C5900  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5904  4E 80 00 20 */	blr 
