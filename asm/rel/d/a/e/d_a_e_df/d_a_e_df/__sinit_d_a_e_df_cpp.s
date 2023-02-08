lbl_806A9ACC:
/* 806A9ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A9AD0  7C 08 02 A6 */	mflr r0
/* 806A9AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A9AD8  3C 60 80 6B */	lis r3, l_HIO@ha /* 0x806AA0E0@ha */
/* 806A9ADC  38 63 A0 E0 */	addi r3, r3, l_HIO@l /* 0x806AA0E0@l */
/* 806A9AE0  4B FF DC 0D */	bl __ct__12daE_DF_HIO_cFv
/* 806A9AE4  3C 80 80 6B */	lis r4, __dt__12daE_DF_HIO_cFv@ha /* 0x806A9A84@ha */
/* 806A9AE8  38 84 9A 84 */	addi r4, r4, __dt__12daE_DF_HIO_cFv@l /* 0x806A9A84@l */
/* 806A9AEC  3C A0 80 6B */	lis r5, lit_3932@ha /* 0x806AA0D4@ha */
/* 806A9AF0  38 A5 A0 D4 */	addi r5, r5, lit_3932@l /* 0x806AA0D4@l */
/* 806A9AF4  4B FF DB 85 */	bl __register_global_object
/* 806A9AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A9AFC  7C 08 03 A6 */	mtlr r0
/* 806A9B00  38 21 00 10 */	addi r1, r1, 0x10
/* 806A9B04  4E 80 00 20 */	blr 
