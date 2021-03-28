lbl_80CB1A9C:
/* 80CB1A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1AA0  7C 08 02 A6 */	mflr r0
/* 80CB1AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1AA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB1AAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB1AB0  41 82 00 1C */	beq lbl_80CB1ACC
/* 80CB1AB4  3C A0 80 CB */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80CB1AB8  38 05 28 2C */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80CB1ABC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB1AC0  7C 80 07 35 */	extsh. r0, r4
/* 80CB1AC4  40 81 00 08 */	ble lbl_80CB1ACC
/* 80CB1AC8  4B 61 D2 74 */	b __dl__FPv
lbl_80CB1ACC:
/* 80CB1ACC  7F E3 FB 78 */	mr r3, r31
/* 80CB1AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB1AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB1AD8  7C 08 03 A6 */	mtlr r0
/* 80CB1ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB1AE0  4E 80 00 20 */	blr 
