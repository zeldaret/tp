lbl_806FF138:
/* 806FF138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FF13C  7C 08 02 A6 */	mflr r0
/* 806FF140  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FF144  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FF890@ha */
/* 806FF148  38 63 F8 90 */	addi r3, r3, l_HIO@l /* 0x806FF890@l */
/* 806FF14C  4B FF B5 C1 */	bl __ct__12daE_KK_HIO_cFv
/* 806FF150  3C 80 80 70 */	lis r4, __dt__12daE_KK_HIO_cFv@ha /* 0x806FF0F0@ha */
/* 806FF154  38 84 F0 F0 */	addi r4, r4, __dt__12daE_KK_HIO_cFv@l /* 0x806FF0F0@l */
/* 806FF158  3C A0 80 70 */	lis r5, lit_3808@ha /* 0x806FF884@ha */
/* 806FF15C  38 A5 F8 84 */	addi r5, r5, lit_3808@l /* 0x806FF884@l */
/* 806FF160  4B FF B5 39 */	bl __register_global_object
/* 806FF164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FF168  7C 08 03 A6 */	mtlr r0
/* 806FF16C  38 21 00 10 */	addi r1, r1, 0x10
/* 806FF170  4E 80 00 20 */	blr 
