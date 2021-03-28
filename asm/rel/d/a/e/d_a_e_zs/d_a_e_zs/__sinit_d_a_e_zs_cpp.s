lbl_80834E24:
/* 80834E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80834E28  7C 08 02 A6 */	mflr r0
/* 80834E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80834E30  3C 60 80 83 */	lis r3, l_HIO@ha
/* 80834E34  38 63 54 B0 */	addi r3, r3, l_HIO@l
/* 80834E38  4B FF E2 75 */	bl __ct__12daE_ZS_HIO_cFv
/* 80834E3C  3C 80 80 83 */	lis r4, __dt__12daE_ZS_HIO_cFv@ha
/* 80834E40  38 84 4D DC */	addi r4, r4, __dt__12daE_ZS_HIO_cFv@l
/* 80834E44  3C A0 80 83 */	lis r5, lit_3925@ha
/* 80834E48  38 A5 54 A4 */	addi r5, r5, lit_3925@l
/* 80834E4C  4B FF E1 ED */	bl __register_global_object
/* 80834E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80834E54  7C 08 03 A6 */	mtlr r0
/* 80834E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80834E5C  4E 80 00 20 */	blr 
