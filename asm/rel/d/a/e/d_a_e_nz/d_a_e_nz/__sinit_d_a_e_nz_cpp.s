lbl_8072BCD0:
/* 8072BCD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072BCD4  7C 08 02 A6 */	mflr r0
/* 8072BCD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072BCDC  3C 60 80 73 */	lis r3, l_HIO@ha
/* 8072BCE0  38 63 C4 34 */	addi r3, r3, l_HIO@l
/* 8072BCE4  4B FF DD 09 */	bl __ct__12daE_NZ_HIO_cFv
/* 8072BCE8  3C 80 80 73 */	lis r4, __dt__12daE_NZ_HIO_cFv@ha
/* 8072BCEC  38 84 BC 88 */	addi r4, r4, __dt__12daE_NZ_HIO_cFv@l
/* 8072BCF0  3C A0 80 73 */	lis r5, lit_3805@ha
/* 8072BCF4  38 A5 C4 28 */	addi r5, r5, lit_3805@l
/* 8072BCF8  4B FF DC 81 */	bl __register_global_object
/* 8072BCFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072BD00  7C 08 03 A6 */	mtlr r0
/* 8072BD04  38 21 00 10 */	addi r1, r1, 0x10
/* 8072BD08  4E 80 00 20 */	blr 
