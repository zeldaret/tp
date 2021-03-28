lbl_802E1D08:
/* 802E1D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1D0C  7C 08 02 A6 */	mflr r0
/* 802E1D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1D14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E1D18  93 C1 00 08 */	stw r30, 8(r1)
/* 802E1D1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E1D20  7C 9F 23 78 */	mr r31, r4
/* 802E1D24  41 82 00 1C */	beq lbl_802E1D40
/* 802E1D28  38 80 00 00 */	li r4, 0
/* 802E1D2C  4B FF A1 81 */	bl __dt__10JSUPtrListFv
/* 802E1D30  7F E0 07 35 */	extsh. r0, r31
/* 802E1D34  40 81 00 0C */	ble lbl_802E1D40
/* 802E1D38  7F C3 F3 78 */	mr r3, r30
/* 802E1D3C  4B FE D0 01 */	bl __dl__FPv
lbl_802E1D40:
/* 802E1D40  7F C3 F3 78 */	mr r3, r30
/* 802E1D44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E1D48  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E1D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1D50  7C 08 03 A6 */	mtlr r0
/* 802E1D54  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1D58  4E 80 00 20 */	blr 
