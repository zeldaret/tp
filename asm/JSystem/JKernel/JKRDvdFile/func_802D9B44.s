lbl_802D9B44:
/* 802D9B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D9B48  7C 08 02 A6 */	mflr r0
/* 802D9B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D9B54  93 C1 00 08 */	stw r30, 8(r1)
/* 802D9B58  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D9B5C  7C 9F 23 78 */	mr r31, r4
/* 802D9B60  41 82 00 1C */	beq lbl_802D9B7C
/* 802D9B64  38 80 00 00 */	li r4, 0
/* 802D9B68  48 00 23 45 */	bl __dt__10JSUPtrListFv
/* 802D9B6C  7F E0 07 35 */	extsh. r0, r31
/* 802D9B70  40 81 00 0C */	ble lbl_802D9B7C
/* 802D9B74  7F C3 F3 78 */	mr r3, r30
/* 802D9B78  4B FF 51 C5 */	bl __dl__FPv
lbl_802D9B7C:
/* 802D9B7C  7F C3 F3 78 */	mr r3, r30
/* 802D9B80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D9B84  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D9B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D9B8C  7C 08 03 A6 */	mtlr r0
/* 802D9B90  38 21 00 10 */	addi r1, r1, 0x10
/* 802D9B94  4E 80 00 20 */	blr 
