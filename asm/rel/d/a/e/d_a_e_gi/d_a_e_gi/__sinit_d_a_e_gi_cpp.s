lbl_806D09D4:
/* 806D09D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D09D8  7C 08 02 A6 */	mflr r0
/* 806D09DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D09E0  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806D09E4  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806D09E8  4B FF CA A5 */	bl __ct__12daE_GI_HIO_cFv
/* 806D09EC  3C 80 80 6D */	lis r4, __dt__12daE_GI_HIO_cFv@ha
/* 806D09F0  38 84 09 8C */	addi r4, r4, __dt__12daE_GI_HIO_cFv@l
/* 806D09F4  3C A0 80 6D */	lis r5, lit_3923@ha
/* 806D09F8  38 A5 11 2C */	addi r5, r5, lit_3923@l
/* 806D09FC  4B FF CA 1D */	bl __register_global_object
/* 806D0A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D0A04  7C 08 03 A6 */	mtlr r0
/* 806D0A08  38 21 00 10 */	addi r1, r1, 0x10
/* 806D0A0C  4E 80 00 20 */	blr 
