lbl_807897C4:
/* 807897C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807897C8  7C 08 02 A6 */	mflr r0
/* 807897CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807897D0  3C 60 80 79 */	lis r3, l_HIO@ha
/* 807897D4  38 63 A0 7C */	addi r3, r3, l_HIO@l
/* 807897D8  4B FF B9 55 */	bl __ct__12daE_SF_HIO_cFv
/* 807897DC  3C 80 80 79 */	lis r4, __dt__12daE_SF_HIO_cFv@ha
/* 807897E0  38 84 97 7C */	addi r4, r4, __dt__12daE_SF_HIO_cFv@l
/* 807897E4  3C A0 80 79 */	lis r5, lit_3924@ha
/* 807897E8  38 A5 A0 70 */	addi r5, r5, lit_3924@l
/* 807897EC  4B FF B8 CD */	bl __register_global_object
/* 807897F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807897F4  7C 08 03 A6 */	mtlr r0
/* 807897F8  38 21 00 10 */	addi r1, r1, 0x10
/* 807897FC  4E 80 00 20 */	blr 
