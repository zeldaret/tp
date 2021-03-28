lbl_802E4194:
/* 802E4194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E4198  7C 08 02 A6 */	mflr r0
/* 802E419C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E41A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E41A4  93 C1 00 08 */	stw r30, 8(r1)
/* 802E41A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E41AC  7C 9F 23 78 */	mr r31, r4
/* 802E41B0  41 82 00 1C */	beq lbl_802E41CC
/* 802E41B4  38 80 00 00 */	li r4, 0
/* 802E41B8  4B FF 7C F5 */	bl __dt__10JSUPtrListFv
/* 802E41BC  7F E0 07 35 */	extsh. r0, r31
/* 802E41C0  40 81 00 0C */	ble lbl_802E41CC
/* 802E41C4  7F C3 F3 78 */	mr r3, r30
/* 802E41C8  4B FE AB 75 */	bl __dl__FPv
lbl_802E41CC:
/* 802E41CC  7F C3 F3 78 */	mr r3, r30
/* 802E41D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E41D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E41D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E41DC  7C 08 03 A6 */	mtlr r0
/* 802E41E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E41E4  4E 80 00 20 */	blr 
