lbl_80C89EA4:
/* 80C89EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89EA8  7C 08 02 A6 */	mflr r0
/* 80C89EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C89EB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C89EB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C89EB8  41 82 00 30 */	beq lbl_80C89EE8
/* 80C89EBC  3C 60 80 C9 */	lis r3, __vt__14daL8Lift_HIO_c@ha /* 0x80C8A1C8@ha */
/* 80C89EC0  38 03 A1 C8 */	addi r0, r3, __vt__14daL8Lift_HIO_c@l /* 0x80C8A1C8@l */
/* 80C89EC4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C89EC8  41 82 00 10 */	beq lbl_80C89ED8
/* 80C89ECC  3C 60 80 C9 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C8A1D4@ha */
/* 80C89ED0  38 03 A1 D4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C8A1D4@l */
/* 80C89ED4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C89ED8:
/* 80C89ED8  7C 80 07 35 */	extsh. r0, r4
/* 80C89EDC  40 81 00 0C */	ble lbl_80C89EE8
/* 80C89EE0  7F E3 FB 78 */	mr r3, r31
/* 80C89EE4  4B 64 4E 59 */	bl __dl__FPv
lbl_80C89EE8:
/* 80C89EE8  7F E3 FB 78 */	mr r3, r31
/* 80C89EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C89EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C89EF4  7C 08 03 A6 */	mtlr r0
/* 80C89EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89EFC  4E 80 00 20 */	blr 
