lbl_805BA044:
/* 805BA044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BA048  7C 08 02 A6 */	mflr r0
/* 805BA04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BA050  3C 60 80 5C */	lis r3, l_HIO@ha
/* 805BA054  38 63 AD 60 */	addi r3, r3, l_HIO@l
/* 805BA058  4B FF 95 15 */	bl __ct__12daB_BQ_HIO_cFv
/* 805BA05C  3C 80 80 5C */	lis r4, __dt__12daB_BQ_HIO_cFv@ha
/* 805BA060  38 84 9F FC */	addi r4, r4, __dt__12daB_BQ_HIO_cFv@l
/* 805BA064  3C A0 80 5C */	lis r5, lit_3811@ha
/* 805BA068  38 A5 AD 54 */	addi r5, r5, lit_3811@l
/* 805BA06C  4B FF 94 8D */	bl __register_global_object
/* 805BA070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BA074  7C 08 03 A6 */	mtlr r0
/* 805BA078  38 21 00 10 */	addi r1, r1, 0x10
/* 805BA07C  4E 80 00 20 */	blr 
