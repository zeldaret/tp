lbl_807E6E8C:
/* 807E6E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E6E90  7C 08 02 A6 */	mflr r0
/* 807E6E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E6E98  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E75C8@ha */
/* 807E6E9C  38 63 75 C8 */	addi r3, r3, l_HIO@l /* 0x807E75C8@l */
/* 807E6EA0  4B FF CB 6D */	bl __ct__12daE_WS_HIO_cFv
/* 807E6EA4  3C 80 80 7E */	lis r4, __dt__12daE_WS_HIO_cFv@ha /* 0x807E6E44@ha */
/* 807E6EA8  38 84 6E 44 */	addi r4, r4, __dt__12daE_WS_HIO_cFv@l /* 0x807E6E44@l */
/* 807E6EAC  3C A0 80 7E */	lis r5, lit_3818@ha /* 0x807E75BC@ha */
/* 807E6EB0  38 A5 75 BC */	addi r5, r5, lit_3818@l /* 0x807E75BC@l */
/* 807E6EB4  4B FF CA E5 */	bl __register_global_object
/* 807E6EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E6EBC  7C 08 03 A6 */	mtlr r0
/* 807E6EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 807E6EC4  4E 80 00 20 */	blr 
