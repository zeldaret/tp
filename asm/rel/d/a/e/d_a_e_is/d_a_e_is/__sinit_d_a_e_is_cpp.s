lbl_806F7B0C:
/* 806F7B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F7B10  7C 08 02 A6 */	mflr r0
/* 806F7B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F7B18  3C 60 80 6F */	lis r3, l_HIO@ha
/* 806F7B1C  38 63 7D E0 */	addi r3, r3, l_HIO@l
/* 806F7B20  4B FF DF 2D */	bl __ct__12daE_IS_HIO_cFv
/* 806F7B24  3C 80 80 6F */	lis r4, __dt__12daE_IS_HIO_cFv@ha
/* 806F7B28  38 84 7A C4 */	addi r4, r4, __dt__12daE_IS_HIO_cFv@l
/* 806F7B2C  3C A0 80 6F */	lis r5, lit_3643@ha
/* 806F7B30  38 A5 7D D4 */	addi r5, r5, lit_3643@l
/* 806F7B34  4B FF DE A5 */	bl __register_global_object
/* 806F7B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F7B3C  7C 08 03 A6 */	mtlr r0
/* 806F7B40  38 21 00 10 */	addi r1, r1, 0x10
/* 806F7B44  4E 80 00 20 */	blr 
