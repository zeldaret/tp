lbl_80B26F24:
/* 80B26F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B26F28  7C 08 02 A6 */	mflr r0
/* 80B26F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B26F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B26F34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B26F38  41 82 00 10 */	beq lbl_80B26F48
/* 80B26F3C  7C 80 07 35 */	extsh. r0, r4
/* 80B26F40  40 81 00 08 */	ble lbl_80B26F48
/* 80B26F44  4B 7A 7D F9 */	bl __dl__FPv
lbl_80B26F48:
/* 80B26F48  7F E3 FB 78 */	mr r3, r31
/* 80B26F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B26F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B26F54  7C 08 03 A6 */	mtlr r0
/* 80B26F58  38 21 00 10 */	addi r1, r1, 0x10
/* 80B26F5C  4E 80 00 20 */	blr 
