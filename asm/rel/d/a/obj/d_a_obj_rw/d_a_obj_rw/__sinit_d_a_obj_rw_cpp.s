lbl_80CC3AA4:
/* 80CC3AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC3AA8  7C 08 02 A6 */	mflr r0
/* 80CC3AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC3AB0  3C 60 80 CC */	lis r3, l_HIO@ha
/* 80CC3AB4  38 63 3C 90 */	addi r3, r3, l_HIO@l
/* 80CC3AB8  4B FF EE D5 */	bl __ct__14daOBJ_RW_HIO_cFv
/* 80CC3ABC  3C 80 80 CC */	lis r4, __dt__14daOBJ_RW_HIO_cFv@ha
/* 80CC3AC0  38 84 3A 5C */	addi r4, r4, __dt__14daOBJ_RW_HIO_cFv@l
/* 80CC3AC4  3C A0 80 CC */	lis r5, lit_3644@ha
/* 80CC3AC8  38 A5 3C 84 */	addi r5, r5, lit_3644@l
/* 80CC3ACC  4B FF EE 4D */	bl __register_global_object
/* 80CC3AD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC3AD4  7C 08 03 A6 */	mtlr r0
/* 80CC3AD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC3ADC  4E 80 00 20 */	blr 
