lbl_80A0BB70:
/* 80A0BB70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0BB74  7C 08 02 A6 */	mflr r0
/* 80A0BB78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0BB7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0BB80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0BB84  41 82 00 10 */	beq lbl_80A0BB94
/* 80A0BB88  7C 80 07 35 */	extsh. r0, r4
/* 80A0BB8C  40 81 00 08 */	ble lbl_80A0BB94
/* 80A0BB90  4B 8C 31 AD */	bl __dl__FPv
lbl_80A0BB94:
/* 80A0BB94  7F E3 FB 78 */	mr r3, r31
/* 80A0BB98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0BB9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0BBA0  7C 08 03 A6 */	mtlr r0
/* 80A0BBA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0BBA8  4E 80 00 20 */	blr 
