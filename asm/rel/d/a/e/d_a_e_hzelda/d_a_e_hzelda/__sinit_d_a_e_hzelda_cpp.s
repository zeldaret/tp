lbl_806F54B4:
/* 806F54B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F54B8  7C 08 02 A6 */	mflr r0
/* 806F54BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F54C0  3C 60 80 6F */	lis r3, l_HIO@ha
/* 806F54C4  38 63 59 38 */	addi r3, r3, l_HIO@l
/* 806F54C8  4B FF B8 85 */	bl __ct__16daE_HZELDA_HIO_cFv
/* 806F54CC  3C 80 80 6F */	lis r4, __dt__16daE_HZELDA_HIO_cFv@ha
/* 806F54D0  38 84 54 6C */	addi r4, r4, __dt__16daE_HZELDA_HIO_cFv@l
/* 806F54D4  3C A0 80 6F */	lis r5, lit_3762@ha
/* 806F54D8  38 A5 59 2C */	addi r5, r5, lit_3762@l
/* 806F54DC  4B FF B7 FD */	bl __register_global_object
/* 806F54E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F54E4  7C 08 03 A6 */	mtlr r0
/* 806F54E8  38 21 00 10 */	addi r1, r1, 0x10
/* 806F54EC  4E 80 00 20 */	blr 
