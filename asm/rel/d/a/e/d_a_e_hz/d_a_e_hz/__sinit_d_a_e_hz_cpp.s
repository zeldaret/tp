lbl_806F03B0:
/* 806F03B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F03B4  7C 08 02 A6 */	mflr r0
/* 806F03B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F03BC  3C 60 80 6F */	lis r3, l_HIO@ha
/* 806F03C0  38 63 0B 7C */	addi r3, r3, l_HIO@l
/* 806F03C4  4B FF A2 49 */	bl __ct__12daE_HZ_HIO_cFv
/* 806F03C8  3C 80 80 6F */	lis r4, __dt__12daE_HZ_HIO_cFv@ha
/* 806F03CC  38 84 03 68 */	addi r4, r4, __dt__12daE_HZ_HIO_cFv@l
/* 806F03D0  3C A0 80 6F */	lis r5, lit_3982@ha
/* 806F03D4  38 A5 0B 70 */	addi r5, r5, lit_3982@l
/* 806F03D8  4B FF A1 C1 */	bl __register_global_object
/* 806F03DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F03E0  7C 08 03 A6 */	mtlr r0
/* 806F03E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806F03E8  4E 80 00 20 */	blr 
