lbl_802DBE14:
/* 802DBE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DBE18  7C 08 02 A6 */	mflr r0
/* 802DBE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DBE20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DBE24  93 C1 00 08 */	stw r30, 8(r1)
/* 802DBE28  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DBE2C  7C 9F 23 78 */	mr r31, r4
/* 802DBE30  41 82 00 28 */	beq lbl_802DBE58
/* 802DBE34  80 7E 00 04 */	lwz r3, 4(r30)
/* 802DBE38  28 03 00 00 */	cmplwi r3, 0
/* 802DBE3C  41 82 00 0C */	beq lbl_802DBE48
/* 802DBE40  7F C4 F3 78 */	mr r4, r30
/* 802DBE44  48 00 03 19 */	bl remove__10JSUPtrListFP10JSUPtrLink
lbl_802DBE48:
/* 802DBE48  7F E0 07 35 */	extsh. r0, r31
/* 802DBE4C  40 81 00 0C */	ble lbl_802DBE58
/* 802DBE50  7F C3 F3 78 */	mr r3, r30
/* 802DBE54  4B FF 2E E9 */	bl __dl__FPv
lbl_802DBE58:
/* 802DBE58  7F C3 F3 78 */	mr r3, r30
/* 802DBE5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DBE60  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DBE64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DBE68  7C 08 03 A6 */	mtlr r0
/* 802DBE6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DBE70  4E 80 00 20 */	blr 
