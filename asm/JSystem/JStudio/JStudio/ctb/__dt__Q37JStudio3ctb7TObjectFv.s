lbl_80280F18:
/* 80280F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280F1C  7C 08 02 A6 */	mflr r0
/* 80280F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280F28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80280F2C  41 82 00 1C */	beq lbl_80280F48
/* 80280F30  3C A0 80 3C */	lis r5, __vt__Q37JStudio3ctb7TObject@ha
/* 80280F34  38 05 48 D0 */	addi r0, r5, __vt__Q37JStudio3ctb7TObject@l
/* 80280F38  90 1F 00 08 */	stw r0, 8(r31)
/* 80280F3C  7C 80 07 35 */	extsh. r0, r4
/* 80280F40  40 81 00 08 */	ble lbl_80280F48
/* 80280F44  48 04 DD F9 */	bl __dl__FPv
lbl_80280F48:
/* 80280F48  7F E3 FB 78 */	mr r3, r31
/* 80280F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280F54  7C 08 03 A6 */	mtlr r0
/* 80280F58  38 21 00 10 */	addi r1, r1, 0x10
/* 80280F5C  4E 80 00 20 */	blr 
