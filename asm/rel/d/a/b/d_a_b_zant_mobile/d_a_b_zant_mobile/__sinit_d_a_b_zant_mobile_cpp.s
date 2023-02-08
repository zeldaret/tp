lbl_806526D4:
/* 806526D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806526D8  7C 08 02 A6 */	mflr r0
/* 806526DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806526E0  3C 60 80 65 */	lis r3, l_HIO@ha /* 0x80652938@ha */
/* 806526E4  38 63 29 38 */	addi r3, r3, l_HIO@l /* 0x80652938@l */
/* 806526E8  4B FF E0 A5 */	bl __ct__15daB_ZANTZ_HIO_cFv
/* 806526EC  3C 80 80 65 */	lis r4, __dt__15daB_ZANTZ_HIO_cFv@ha /* 0x8065268C@ha */
/* 806526F0  38 84 26 8C */	addi r4, r4, __dt__15daB_ZANTZ_HIO_cFv@l /* 0x8065268C@l */
/* 806526F4  3C A0 80 65 */	lis r5, lit_3644@ha /* 0x8065292C@ha */
/* 806526F8  38 A5 29 2C */	addi r5, r5, lit_3644@l /* 0x8065292C@l */
/* 806526FC  4B FF E0 1D */	bl __register_global_object
/* 80652700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80652704  7C 08 03 A6 */	mtlr r0
/* 80652708  38 21 00 10 */	addi r1, r1, 0x10
/* 8065270C  4E 80 00 20 */	blr 
