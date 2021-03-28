lbl_80C860E0:
/* 80C860E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C860E4  7C 08 02 A6 */	mflr r0
/* 80C860E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C860EC  3C 60 80 C8 */	lis r3, l_HIO@ha
/* 80C860F0  38 63 62 CC */	addi r3, r3, l_HIO@l
/* 80C860F4  4B FF F3 79 */	bl __ct__13daPropY_HIO_cFv
/* 80C860F8  3C 80 80 C8 */	lis r4, __dt__13daPropY_HIO_cFv@ha
/* 80C860FC  38 84 60 84 */	addi r4, r4, __dt__13daPropY_HIO_cFv@l
/* 80C86100  3C A0 80 C8 */	lis r5, lit_3644@ha
/* 80C86104  38 A5 62 C0 */	addi r5, r5, lit_3644@l
/* 80C86108  4B FF F2 F1 */	bl __register_global_object
/* 80C8610C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C86110  7C 08 03 A6 */	mtlr r0
/* 80C86114  38 21 00 10 */	addi r1, r1, 0x10
/* 80C86118  4E 80 00 20 */	blr 
