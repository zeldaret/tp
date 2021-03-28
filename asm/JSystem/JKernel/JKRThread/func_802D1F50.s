lbl_802D1F50:
/* 802D1F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1F54  7C 08 02 A6 */	mflr r0
/* 802D1F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1F5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1F60  93 C1 00 08 */	stw r30, 8(r1)
/* 802D1F64  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D1F68  7C 9F 23 78 */	mr r31, r4
/* 802D1F6C  41 82 00 1C */	beq lbl_802D1F88
/* 802D1F70  38 80 00 00 */	li r4, 0
/* 802D1F74  48 00 9F 39 */	bl __dt__10JSUPtrListFv
/* 802D1F78  7F E0 07 35 */	extsh. r0, r31
/* 802D1F7C  40 81 00 0C */	ble lbl_802D1F88
/* 802D1F80  7F C3 F3 78 */	mr r3, r30
/* 802D1F84  4B FF CD B9 */	bl __dl__FPv
lbl_802D1F88:
/* 802D1F88  7F C3 F3 78 */	mr r3, r30
/* 802D1F8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1F90  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D1F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1F98  7C 08 03 A6 */	mtlr r0
/* 802D1F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1FA0  4E 80 00 20 */	blr 
