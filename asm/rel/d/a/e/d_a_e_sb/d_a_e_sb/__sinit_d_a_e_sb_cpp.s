lbl_80784D08:
/* 80784D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80784D0C  7C 08 02 A6 */	mflr r0
/* 80784D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80784D14  3C 60 80 78 */	lis r3, l_HIO@ha /* 0x80784F84@ha */
/* 80784D18  38 63 4F 84 */	addi r3, r3, l_HIO@l /* 0x80784F84@l */
/* 80784D1C  4B FF C9 31 */	bl __ct__12daE_SB_HIO_cFv
/* 80784D20  3C 80 80 78 */	lis r4, __dt__12daE_SB_HIO_cFv@ha /* 0x80784CC0@ha */
/* 80784D24  38 84 4C C0 */	addi r4, r4, __dt__12daE_SB_HIO_cFv@l /* 0x80784CC0@l */
/* 80784D28  3C A0 80 78 */	lis r5, lit_3653@ha /* 0x80784F78@ha */
/* 80784D2C  38 A5 4F 78 */	addi r5, r5, lit_3653@l /* 0x80784F78@l */
/* 80784D30  4B FF C8 A9 */	bl __register_global_object
/* 80784D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80784D38  7C 08 03 A6 */	mtlr r0
/* 80784D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80784D40  4E 80 00 20 */	blr 
