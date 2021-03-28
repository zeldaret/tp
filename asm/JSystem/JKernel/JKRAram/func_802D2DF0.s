lbl_802D2DF0:
/* 802D2DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2DF4  7C 08 02 A6 */	mflr r0
/* 802D2DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2DFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D2E00  93 C1 00 08 */	stw r30, 8(r1)
/* 802D2E04  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D2E08  7C 9F 23 78 */	mr r31, r4
/* 802D2E0C  41 82 00 1C */	beq lbl_802D2E28
/* 802D2E10  38 80 00 00 */	li r4, 0
/* 802D2E14  48 00 90 99 */	bl __dt__10JSUPtrListFv
/* 802D2E18  7F E0 07 35 */	extsh. r0, r31
/* 802D2E1C  40 81 00 0C */	ble lbl_802D2E28
/* 802D2E20  7F C3 F3 78 */	mr r3, r30
/* 802D2E24  4B FF BF 19 */	bl __dl__FPv
lbl_802D2E28:
/* 802D2E28  7F C3 F3 78 */	mr r3, r30
/* 802D2E2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D2E30  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D2E34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2E38  7C 08 03 A6 */	mtlr r0
/* 802D2E3C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2E40  4E 80 00 20 */	blr 
