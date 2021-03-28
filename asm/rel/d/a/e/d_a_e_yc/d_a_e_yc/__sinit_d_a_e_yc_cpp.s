lbl_807F2804:
/* 807F2804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F2808  7C 08 02 A6 */	mflr r0
/* 807F280C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F2810  3C 60 80 7F */	lis r3, l_HIO@ha
/* 807F2814  38 63 2B 1C */	addi r3, r3, l_HIO@l
/* 807F2818  4B FF D6 B5 */	bl __ct__12daE_YC_HIO_cFv
/* 807F281C  3C 80 80 7F */	lis r4, __dt__12daE_YC_HIO_cFv@ha
/* 807F2820  38 84 27 BC */	addi r4, r4, __dt__12daE_YC_HIO_cFv@l
/* 807F2824  3C A0 80 7F */	lis r5, lit_3710@ha
/* 807F2828  38 A5 2B 10 */	addi r5, r5, lit_3710@l
/* 807F282C  4B FF D6 2D */	bl __register_global_object
/* 807F2830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F2834  7C 08 03 A6 */	mtlr r0
/* 807F2838  38 21 00 10 */	addi r1, r1, 0x10
/* 807F283C  4E 80 00 20 */	blr 
