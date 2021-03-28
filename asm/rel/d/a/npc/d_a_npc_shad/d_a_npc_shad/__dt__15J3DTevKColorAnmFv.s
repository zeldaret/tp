lbl_80AD8F24:
/* 80AD8F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD8F28  7C 08 02 A6 */	mflr r0
/* 80AD8F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD8F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD8F34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD8F38  41 82 00 10 */	beq lbl_80AD8F48
/* 80AD8F3C  7C 80 07 35 */	extsh. r0, r4
/* 80AD8F40  40 81 00 08 */	ble lbl_80AD8F48
/* 80AD8F44  4B 7F 5D F8 */	b __dl__FPv
lbl_80AD8F48:
/* 80AD8F48  7F E3 FB 78 */	mr r3, r31
/* 80AD8F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD8F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD8F54  7C 08 03 A6 */	mtlr r0
/* 80AD8F58  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD8F5C  4E 80 00 20 */	blr 
