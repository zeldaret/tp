lbl_80C1EAFC:
/* 80C1EAFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1EB00  7C 08 02 A6 */	mflr r0
/* 80C1EB04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1EB08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1EB0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1EB10  41 82 00 10 */	beq lbl_80C1EB20
/* 80C1EB14  7C 80 07 35 */	extsh. r0, r4
/* 80C1EB18  40 81 00 08 */	ble lbl_80C1EB20
/* 80C1EB1C  4B 6B 02 21 */	bl __dl__FPv
lbl_80C1EB20:
/* 80C1EB20  7F E3 FB 78 */	mr r3, r31
/* 80C1EB24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1EB28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1EB2C  7C 08 03 A6 */	mtlr r0
/* 80C1EB30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1EB34  4E 80 00 20 */	blr 
