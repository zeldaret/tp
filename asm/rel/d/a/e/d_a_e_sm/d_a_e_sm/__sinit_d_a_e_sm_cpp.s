lbl_80798130:
/* 80798130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80798134  7C 08 02 A6 */	mflr r0
/* 80798138  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079813C  3C 60 80 7A */	lis r3, l_HIO@ha /* 0x807989CC@ha */
/* 80798140  38 63 89 CC */	addi r3, r3, l_HIO@l /* 0x807989CC@l */
/* 80798144  4B FF A0 E9 */	bl __ct__12daE_Sm_HIO_cFv
/* 80798148  3C 80 80 7A */	lis r4, __dt__12daE_Sm_HIO_cFv@ha /* 0x807980E8@ha */
/* 8079814C  38 84 80 E8 */	addi r4, r4, __dt__12daE_Sm_HIO_cFv@l /* 0x807980E8@l */
/* 80798150  3C A0 80 7A */	lis r5, lit_3936@ha /* 0x807989C0@ha */
/* 80798154  38 A5 89 C0 */	addi r5, r5, lit_3936@l /* 0x807989C0@l */
/* 80798158  4B FF A0 61 */	bl __register_global_object
/* 8079815C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80798160  7C 08 03 A6 */	mtlr r0
/* 80798164  38 21 00 10 */	addi r1, r1, 0x10
/* 80798168  4E 80 00 20 */	blr 
