lbl_802A3E68:
/* 802A3E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3E6C  7C 08 02 A6 */	mflr r0
/* 802A3E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3E78  93 C1 00 08 */	stw r30, 8(r1)
/* 802A3E7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A3E80  7C 9F 23 78 */	mr r31, r4
/* 802A3E84  41 82 00 1C */	beq lbl_802A3EA0
/* 802A3E88  38 80 00 00 */	li r4, 0
/* 802A3E8C  4B FE C9 D5 */	bl __dt__17JASGenericMemPoolFv
/* 802A3E90  7F E0 07 35 */	extsh. r0, r31
/* 802A3E94  40 81 00 0C */	ble lbl_802A3EA0
/* 802A3E98  7F C3 F3 78 */	mr r3, r30
/* 802A3E9C  48 02 AE A1 */	bl __dl__FPv
lbl_802A3EA0:
/* 802A3EA0  7F C3 F3 78 */	mr r3, r30
/* 802A3EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3EA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A3EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3EB0  7C 08 03 A6 */	mtlr r0
/* 802A3EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3EB8  4E 80 00 20 */	blr 
