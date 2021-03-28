lbl_806E9D80:
/* 806E9D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E9D84  7C 08 02 A6 */	mflr r0
/* 806E9D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E9D8C  3C 60 80 6F */	lis r3, l_HIO@ha
/* 806E9D90  38 63 A4 F8 */	addi r3, r3, l_HIO@l
/* 806E9D94  4B FF C0 59 */	bl __ct__12daE_HP_HIO_cFv
/* 806E9D98  3C 80 80 6F */	lis r4, __dt__12daE_HP_HIO_cFv@ha
/* 806E9D9C  38 84 9D 38 */	addi r4, r4, __dt__12daE_HP_HIO_cFv@l
/* 806E9DA0  3C A0 80 6F */	lis r5, lit_3921@ha
/* 806E9DA4  38 A5 A4 EC */	addi r5, r5, lit_3921@l
/* 806E9DA8  4B FF BF D1 */	bl __register_global_object
/* 806E9DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9DB0  7C 08 03 A6 */	mtlr r0
/* 806E9DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 806E9DB8  4E 80 00 20 */	blr 
