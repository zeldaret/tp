lbl_80741B94:
/* 80741B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80741B98  7C 08 02 A6 */	mflr r0
/* 80741B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80741BA0  3C 60 80 74 */	lis r3, l_HIO@ha
/* 80741BA4  38 63 1D D0 */	addi r3, r3, l_HIO@l
/* 80741BA8  4B FF B8 A5 */	bl __ct__12daE_PH_HIO_cFv
/* 80741BAC  3C 80 80 74 */	lis r4, __dt__12daE_PH_HIO_cFv@ha
/* 80741BB0  38 84 1B 4C */	addi r4, r4, __dt__12daE_PH_HIO_cFv@l
/* 80741BB4  3C A0 80 74 */	lis r5, lit_3762@ha
/* 80741BB8  38 A5 1D C4 */	addi r5, r5, lit_3762@l
/* 80741BBC  4B FF B8 1D */	bl __register_global_object
/* 80741BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80741BC4  7C 08 03 A6 */	mtlr r0
/* 80741BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80741BCC  4E 80 00 20 */	blr 
