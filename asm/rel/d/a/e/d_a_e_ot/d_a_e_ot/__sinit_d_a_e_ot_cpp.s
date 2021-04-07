lbl_8073C9F8:
/* 8073C9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073C9FC  7C 08 02 A6 */	mflr r0
/* 8073CA00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073CA04  3C 60 80 74 */	lis r3, l_HIO@ha /* 0x8073D2BC@ha */
/* 8073CA08  38 63 D2 BC */	addi r3, r3, l_HIO@l /* 0x8073D2BC@l */
/* 8073CA0C  4B FF D8 C1 */	bl __ct__12daE_OT_HIO_cFv
/* 8073CA10  3C 80 80 74 */	lis r4, __dt__12daE_OT_HIO_cFv@ha /* 0x8073C9B0@ha */
/* 8073CA14  38 84 C9 B0 */	addi r4, r4, __dt__12daE_OT_HIO_cFv@l /* 0x8073C9B0@l */
/* 8073CA18  3C A0 80 74 */	lis r5, lit_3926@ha /* 0x8073D2B0@ha */
/* 8073CA1C  38 A5 D2 B0 */	addi r5, r5, lit_3926@l /* 0x8073D2B0@l */
/* 8073CA20  4B FF D8 39 */	bl __register_global_object
/* 8073CA24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073CA28  7C 08 03 A6 */	mtlr r0
/* 8073CA2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8073CA30  4E 80 00 20 */	blr 
