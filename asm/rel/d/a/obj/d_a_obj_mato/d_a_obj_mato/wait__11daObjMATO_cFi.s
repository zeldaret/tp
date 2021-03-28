lbl_80C91F74:
/* 80C91F74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C91F78  7C 08 02 A6 */	mflr r0
/* 80C91F7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C91F80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C91F84  7C 85 23 78 */	mr r5, r4
/* 80C91F88  1C 05 01 C0 */	mulli r0, r5, 0x1c0
/* 80C91F8C  7F E3 02 14 */	add r31, r3, r0
/* 80C91F90  80 9F 07 28 */	lwz r4, 0x728(r31)
/* 80C91F94  2C 04 00 00 */	cmpwi r4, 0
/* 80C91F98  40 82 00 10 */	bne lbl_80C91FA8
/* 80C91F9C  38 04 00 01 */	addi r0, r4, 1
/* 80C91FA0  90 1F 07 28 */	stw r0, 0x728(r31)
/* 80C91FA4  48 00 00 8C */	b lbl_80C92030
lbl_80C91FA8:
/* 80C91FA8  2C 04 FF FF */	cmpwi r4, -1
/* 80C91FAC  41 82 00 84 */	beq lbl_80C92030
/* 80C91FB0  88 03 39 F6 */	lbz r0, 0x39f6(r3)
/* 80C91FB4  28 00 00 00 */	cmplwi r0, 0
/* 80C91FB8  41 82 00 50 */	beq lbl_80C92008
/* 80C91FBC  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 80C91FC0  3C 80 80 C9 */	lis r4, lit_3900@ha
/* 80C91FC4  C0 24 2C 70 */	lfs f1, lit_3900@l(r4)
/* 80C91FC8  3C 80 80 C9 */	lis r4, lit_3901@ha
/* 80C91FCC  C0 44 2C 74 */	lfs f2, lit_3901@l(r4)
/* 80C91FD0  4B 5D E7 70 */	b cLib_chaseF__FPfff
/* 80C91FD4  38 7F 07 00 */	addi r3, r31, 0x700
/* 80C91FD8  3C 80 80 C9 */	lis r4, lit_3900@ha
/* 80C91FDC  C0 24 2C 70 */	lfs f1, lit_3900@l(r4)
/* 80C91FE0  3C 80 80 C9 */	lis r4, lit_3901@ha
/* 80C91FE4  C0 44 2C 74 */	lfs f2, lit_3901@l(r4)
/* 80C91FE8  4B 5D E7 58 */	b cLib_chaseF__FPfff
/* 80C91FEC  38 7F 07 04 */	addi r3, r31, 0x704
/* 80C91FF0  3C 80 80 C9 */	lis r4, lit_3900@ha
/* 80C91FF4  C0 24 2C 70 */	lfs f1, lit_3900@l(r4)
/* 80C91FF8  3C 80 80 C9 */	lis r4, lit_3901@ha
/* 80C91FFC  C0 44 2C 74 */	lfs f2, lit_3901@l(r4)
/* 80C92000  4B 5D E7 40 */	b cLib_chaseF__FPfff
/* 80C92004  48 00 00 2C */	b lbl_80C92030
lbl_80C92008:
/* 80C92008  3C 80 80 C9 */	lis r4, lit_3891@ha
/* 80C9200C  38 C4 2D 38 */	addi r6, r4, lit_3891@l
/* 80C92010  80 86 00 00 */	lwz r4, 0(r6)
/* 80C92014  80 06 00 04 */	lwz r0, 4(r6)
/* 80C92018  90 81 00 08 */	stw r4, 8(r1)
/* 80C9201C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C92020  80 06 00 08 */	lwz r0, 8(r6)
/* 80C92024  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C92028  38 81 00 08 */	addi r4, r1, 8
/* 80C9202C  4B FF FB 2D */	bl setAction__11daObjMATO_cFM11daObjMATO_cFPCvPvi_vi
lbl_80C92030:
/* 80C92030  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C92034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C92038  7C 08 03 A6 */	mtlr r0
/* 80C9203C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C92040  4E 80 00 20 */	blr 
