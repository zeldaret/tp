lbl_807227C8:
/* 807227C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807227CC  7C 08 02 A6 */	mflr r0
/* 807227D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807227D4  3C 60 80 72 */	lis r3, l_HIO@ha
/* 807227D8  38 63 2E C0 */	addi r3, r3, l_HIO@l
/* 807227DC  4B FF D1 F1 */	bl __ct__12daE_MM_HIO_cFv
/* 807227E0  3C 80 80 72 */	lis r4, __dt__12daE_MM_HIO_cFv@ha
/* 807227E4  38 84 27 80 */	addi r4, r4, __dt__12daE_MM_HIO_cFv@l
/* 807227E8  3C A0 80 72 */	lis r5, lit_3805@ha
/* 807227EC  38 A5 2E B4 */	addi r5, r5, lit_3805@l
/* 807227F0  4B FF D1 69 */	bl __register_global_object
/* 807227F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807227F8  7C 08 03 A6 */	mtlr r0
/* 807227FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80722800  4E 80 00 20 */	blr 
