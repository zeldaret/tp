lbl_80B6DC10:
/* 80B6DC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6DC14  7C 08 02 A6 */	mflr r0
/* 80B6DC18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6DC1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6DC20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6DC24  41 82 00 10 */	beq lbl_80B6DC34
/* 80B6DC28  7C 80 07 35 */	extsh. r0, r4
/* 80B6DC2C  40 81 00 08 */	ble lbl_80B6DC34
/* 80B6DC30  4B 76 11 0D */	bl __dl__FPv
lbl_80B6DC34:
/* 80B6DC34  7F E3 FB 78 */	mr r3, r31
/* 80B6DC38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6DC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6DC40  7C 08 03 A6 */	mtlr r0
/* 80B6DC44  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6DC48  4E 80 00 20 */	blr 
