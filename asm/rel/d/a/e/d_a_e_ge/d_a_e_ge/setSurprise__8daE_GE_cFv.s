lbl_806CADF4:
/* 806CADF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CADF8  7C 08 02 A6 */	mflr r0
/* 806CADFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CAE00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CAE04  7C 7F 1B 78 */	mr r31, r3
/* 806CAE08  88 03 0B 9A */	lbz r0, 0xb9a(r3)
/* 806CAE0C  2C 00 00 00 */	cmpwi r0, 0
/* 806CAE10  40 82 00 24 */	bne lbl_806CAE34
/* 806CAE14  80 1F 0B 70 */	lwz r0, 0xb70(r31)
/* 806CAE18  2C 00 00 00 */	cmpwi r0, 0
/* 806CAE1C  41 82 00 0C */	beq lbl_806CAE28
/* 806CAE20  2C 00 00 06 */	cmpwi r0, 6
/* 806CAE24  40 82 00 10 */	bne lbl_806CAE34
lbl_806CAE28:
/* 806CAE28  7F E3 FB 78 */	mr r3, r31
/* 806CAE2C  38 80 00 05 */	li r4, 5
/* 806CAE30  4B FF D2 C9 */	bl setActionMode__8daE_GE_cFi
lbl_806CAE34:
/* 806CAE34  3C 60 80 6C */	lis r3, s_ge_surprise__FPvPv@ha /* 0x806C7E7C@ha */
/* 806CAE38  38 63 7E 7C */	addi r3, r3, s_ge_surprise__FPvPv@l /* 0x806C7E7C@l */
/* 806CAE3C  7F E4 FB 78 */	mr r4, r31
/* 806CAE40  4B 95 64 F9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806CAE44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CAE48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CAE4C  7C 08 03 A6 */	mtlr r0
/* 806CAE50  38 21 00 10 */	addi r1, r1, 0x10
/* 806CAE54  4E 80 00 20 */	blr 
