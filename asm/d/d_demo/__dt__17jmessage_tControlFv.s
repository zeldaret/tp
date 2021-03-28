lbl_80039B0C:
/* 80039B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80039B10  7C 08 02 A6 */	mflr r0
/* 80039B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039B18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80039B1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80039B20  7C 7E 1B 79 */	or. r30, r3, r3
/* 80039B24  7C 9F 23 78 */	mr r31, r4
/* 80039B28  41 82 00 28 */	beq lbl_80039B50
/* 80039B2C  3C 80 80 3A */	lis r4, __vt__17jmessage_tControl@ha
/* 80039B30  38 04 79 28 */	addi r0, r4, __vt__17jmessage_tControl@l
/* 80039B34  90 1E 00 00 */	stw r0, 0(r30)
/* 80039B38  38 80 00 00 */	li r4, 0
/* 80039B3C  48 26 DA 51 */	bl __dt__Q28JMessage8TControlFv
/* 80039B40  7F E0 07 35 */	extsh. r0, r31
/* 80039B44  40 81 00 0C */	ble lbl_80039B50
/* 80039B48  7F C3 F3 78 */	mr r3, r30
/* 80039B4C  48 29 51 F1 */	bl __dl__FPv
lbl_80039B50:
/* 80039B50  7F C3 F3 78 */	mr r3, r30
/* 80039B54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80039B58  83 C1 00 08 */	lwz r30, 8(r1)
/* 80039B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80039B60  7C 08 03 A6 */	mtlr r0
/* 80039B64  38 21 00 10 */	addi r1, r1, 0x10
/* 80039B68  4E 80 00 20 */	blr 
