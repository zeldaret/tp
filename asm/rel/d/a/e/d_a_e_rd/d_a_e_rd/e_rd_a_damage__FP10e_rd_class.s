lbl_8050CA64:
/* 8050CA64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050CA68  7C 08 02 A6 */	mflr r0
/* 8050CA6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050CA70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050CA74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8050CA78  7C 7E 1B 78 */	mr r30, r3
/* 8050CA7C  3C 80 80 52 */	lis r4, lit_4208@ha /* 0x80518584@ha */
/* 8050CA80  3B E4 85 84 */	addi r31, r4, lit_4208@l /* 0x80518584@l */
/* 8050CA84  38 00 00 03 */	li r0, 3
/* 8050CA88  B0 03 09 98 */	sth r0, 0x998(r3)
/* 8050CA8C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8050CA90  54 00 00 3E */	slwi r0, r0, 0
/* 8050CA94  90 03 04 9C */	stw r0, 0x49c(r3)
/* 8050CA98  38 00 00 00 */	li r0, 0
/* 8050CA9C  90 03 05 5C */	stw r0, 0x55c(r3)
/* 8050CAA0  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8050CAA4  2C 00 00 01 */	cmpwi r0, 1
/* 8050CAA8  41 82 00 90 */	beq lbl_8050CB38
/* 8050CAAC  40 80 00 9C */	bge lbl_8050CB48
/* 8050CAB0  2C 00 00 00 */	cmpwi r0, 0
/* 8050CAB4  40 80 00 08 */	bge lbl_8050CABC
/* 8050CAB8  48 00 00 90 */	b lbl_8050CB48
lbl_8050CABC:
/* 8050CABC  38 00 00 01 */	li r0, 1
/* 8050CAC0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050CAC4  38 80 00 0F */	li r4, 0xf
/* 8050CAC8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050CACC  38 A0 00 00 */	li r5, 0
/* 8050CAD0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050CAD4  4B FF 81 01 */	bl anm_init__FP10e_rd_classifUcf
/* 8050CAD8  38 00 00 50 */	li r0, 0x50
/* 8050CADC  B0 1E 09 90 */	sth r0, 0x990(r30)
/* 8050CAE0  3C 60 80 52 */	lis r3, data_80519200@ha /* 0x80519200@ha */
/* 8050CAE4  88 03 92 00 */	lbz r0, data_80519200@l(r3)  /* 0x80519200@l */
/* 8050CAE8  28 00 00 00 */	cmplwi r0, 0
/* 8050CAEC  41 82 00 0C */	beq lbl_8050CAF8
/* 8050CAF0  38 00 00 00 */	li r0, 0
/* 8050CAF4  98 1E 05 BA */	stb r0, 0x5ba(r30)
lbl_8050CAF8:
/* 8050CAF8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8050CAFC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8050CB00  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8050CB04  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8050CB08  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8050CB0C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8050CB10  38 61 00 08 */	addi r3, r1, 8
/* 8050CB14  38 80 00 64 */	li r4, 0x64
/* 8050CB18  28 1E 00 00 */	cmplwi r30, 0
/* 8050CB1C  41 82 00 0C */	beq lbl_8050CB28
/* 8050CB20  80 BE 00 04 */	lwz r5, 4(r30)
/* 8050CB24  48 00 00 08 */	b lbl_8050CB2C
lbl_8050CB28:
/* 8050CB28  38 A0 FF FF */	li r5, -1
lbl_8050CB2C:
/* 8050CB2C  38 C0 00 05 */	li r6, 5
/* 8050CB30  4B C9 B6 91 */	bl dKy_Sound_set__F4cXyziUii
/* 8050CB34  48 00 00 14 */	b lbl_8050CB48
lbl_8050CB38:
/* 8050CB38  A8 1E 09 90 */	lha r0, 0x990(r30)
/* 8050CB3C  2C 00 00 00 */	cmpwi r0, 0
/* 8050CB40  40 82 00 08 */	bne lbl_8050CB48
/* 8050CB44  4B FF E7 65 */	bl rd_disappear__FP10e_rd_class
lbl_8050CB48:
/* 8050CB48  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8050CB4C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8050CB50  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 8050CB54  4B D6 2F 2D */	bl cLib_addCalc0__FPfff
/* 8050CB58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050CB5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8050CB60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050CB64  7C 08 03 A6 */	mtlr r0
/* 8050CB68  38 21 00 20 */	addi r1, r1, 0x20
/* 8050CB6C  4E 80 00 20 */	blr 
