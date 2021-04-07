lbl_80A67F28:
/* 80A67F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A67F2C  7C 08 02 A6 */	mflr r0
/* 80A67F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A67F34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A67F38  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A67F3C  41 82 00 10 */	beq lbl_80A67F4C
/* 80A67F40  7C 80 07 35 */	extsh. r0, r4
/* 80A67F44  40 81 00 08 */	ble lbl_80A67F4C
/* 80A67F48  4B 86 6D F5 */	bl __dl__FPv
lbl_80A67F4C:
/* 80A67F4C  7F E3 FB 78 */	mr r3, r31
/* 80A67F50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A67F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A67F58  7C 08 03 A6 */	mtlr r0
/* 80A67F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A67F60  4E 80 00 20 */	blr 
