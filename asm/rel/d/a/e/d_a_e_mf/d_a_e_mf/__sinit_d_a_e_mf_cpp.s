lbl_807134AC:
/* 807134AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807134B0  7C 08 02 A6 */	mflr r0
/* 807134B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807134B8  3C 60 80 71 */	lis r3, l_HIO@ha
/* 807134BC  38 63 3F 74 */	addi r3, r3, l_HIO@l
/* 807134C0  4B FF 72 4D */	bl __ct__12daE_MF_HIO_cFv
/* 807134C4  3C 80 80 71 */	lis r4, __dt__12daE_MF_HIO_cFv@ha
/* 807134C8  38 84 34 64 */	addi r4, r4, __dt__12daE_MF_HIO_cFv@l
/* 807134CC  3C A0 80 71 */	lis r5, lit_3844@ha
/* 807134D0  38 A5 3F 68 */	addi r5, r5, lit_3844@l
/* 807134D4  4B FF 71 C5 */	bl __register_global_object
/* 807134D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807134DC  7C 08 03 A6 */	mtlr r0
/* 807134E0  38 21 00 10 */	addi r1, r1, 0x10
/* 807134E4  4E 80 00 20 */	blr 
