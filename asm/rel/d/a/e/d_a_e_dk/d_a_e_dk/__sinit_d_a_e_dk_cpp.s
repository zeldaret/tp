lbl_806AD4D8:
/* 806AD4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AD4DC  7C 08 02 A6 */	mflr r0
/* 806AD4E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AD4E4  3C 60 80 6B */	lis r3, l_HIO@ha
/* 806AD4E8  38 63 D8 08 */	addi r3, r3, l_HIO@l
/* 806AD4EC  4B FF CD 01 */	bl __ct__12daE_DK_HIO_cFv
/* 806AD4F0  3C 80 80 6B */	lis r4, __dt__12daE_DK_HIO_cFv@ha
/* 806AD4F4  38 84 D4 90 */	addi r4, r4, __dt__12daE_DK_HIO_cFv@l
/* 806AD4F8  3C A0 80 6B */	lis r5, lit_3759@ha
/* 806AD4FC  38 A5 D7 FC */	addi r5, r5, lit_3759@l
/* 806AD500  4B FF CC 79 */	bl __register_global_object
/* 806AD504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AD508  7C 08 03 A6 */	mtlr r0
/* 806AD50C  38 21 00 10 */	addi r1, r1, 0x10
/* 806AD510  4E 80 00 20 */	blr 
