lbl_80A0EEE8:
/* 80A0EEE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0EEEC  7C 08 02 A6 */	mflr r0
/* 80A0EEF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0EEF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0EEF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A0EEFC  41 82 00 10 */	beq lbl_80A0EF0C
/* 80A0EF00  7C 80 07 35 */	extsh. r0, r4
/* 80A0EF04  40 81 00 08 */	ble lbl_80A0EF0C
/* 80A0EF08  4B 8B FE 34 */	b __dl__FPv
lbl_80A0EF0C:
/* 80A0EF0C  7F E3 FB 78 */	mr r3, r31
/* 80A0EF10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0EF14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0EF18  7C 08 03 A6 */	mtlr r0
/* 80A0EF1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0EF20  4E 80 00 20 */	blr 
