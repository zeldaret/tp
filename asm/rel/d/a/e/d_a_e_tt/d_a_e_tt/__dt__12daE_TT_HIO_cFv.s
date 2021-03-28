lbl_807C1AA8:
/* 807C1AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C1AAC  7C 08 02 A6 */	mflr r0
/* 807C1AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C1AB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C1AB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 807C1ABC  41 82 00 1C */	beq lbl_807C1AD8
/* 807C1AC0  3C A0 80 7C */	lis r5, __vt__12daE_TT_HIO_c@ha
/* 807C1AC4  38 05 23 8C */	addi r0, r5, __vt__12daE_TT_HIO_c@l
/* 807C1AC8  90 1F 00 00 */	stw r0, 0(r31)
/* 807C1ACC  7C 80 07 35 */	extsh. r0, r4
/* 807C1AD0  40 81 00 08 */	ble lbl_807C1AD8
/* 807C1AD4  4B B0 D2 68 */	b __dl__FPv
lbl_807C1AD8:
/* 807C1AD8  7F E3 FB 78 */	mr r3, r31
/* 807C1ADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C1AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C1AE4  7C 08 03 A6 */	mtlr r0
/* 807C1AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 807C1AEC  4E 80 00 20 */	blr 
