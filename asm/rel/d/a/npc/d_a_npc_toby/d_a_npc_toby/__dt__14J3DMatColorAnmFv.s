lbl_80B1EED4:
/* 80B1EED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1EED8  7C 08 02 A6 */	mflr r0
/* 80B1EEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1EEE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1EEE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B1EEE8  41 82 00 10 */	beq lbl_80B1EEF8
/* 80B1EEEC  7C 80 07 35 */	extsh. r0, r4
/* 80B1EEF0  40 81 00 08 */	ble lbl_80B1EEF8
/* 80B1EEF4  4B 7A FE 49 */	bl __dl__FPv
lbl_80B1EEF8:
/* 80B1EEF8  7F E3 FB 78 */	mr r3, r31
/* 80B1EEFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1EF00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1EF04  7C 08 03 A6 */	mtlr r0
/* 80B1EF08  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1EF0C  4E 80 00 20 */	blr 
