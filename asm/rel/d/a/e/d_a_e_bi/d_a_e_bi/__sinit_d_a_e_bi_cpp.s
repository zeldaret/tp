lbl_8068D324:
/* 8068D324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068D328  7C 08 02 A6 */	mflr r0
/* 8068D32C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068D330  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x8068DB2C@ha */
/* 8068D334  38 63 DB 2C */	addi r3, r3, l_HIO@l /* 0x8068DB2C@l */
/* 8068D338  4B FF D2 B5 */	bl __ct__12daE_BI_HIO_cFv
/* 8068D33C  3C 80 80 69 */	lis r4, __dt__12daE_BI_HIO_cFv@ha /* 0x8068D2DC@ha */
/* 8068D340  38 84 D2 DC */	addi r4, r4, __dt__12daE_BI_HIO_cFv@l /* 0x8068D2DC@l */
/* 8068D344  3C A0 80 69 */	lis r5, lit_3919@ha /* 0x8068DB20@ha */
/* 8068D348  38 A5 DB 20 */	addi r5, r5, lit_3919@l /* 0x8068DB20@l */
/* 8068D34C  4B FF D2 2D */	bl __register_global_object
/* 8068D350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068D354  7C 08 03 A6 */	mtlr r0
/* 8068D358  38 21 00 10 */	addi r1, r1, 0x10
/* 8068D35C  4E 80 00 20 */	blr 
