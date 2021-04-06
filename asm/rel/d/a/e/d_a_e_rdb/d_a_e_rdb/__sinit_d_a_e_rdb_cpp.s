lbl_8076AFAC:
/* 8076AFAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076AFB0  7C 08 02 A6 */	mflr r0
/* 8076AFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076AFB8  3C 60 80 77 */	lis r3, l_HIO@ha /* 0x8076BA14@ha */
/* 8076AFBC  38 63 BA 14 */	addi r3, r3, l_HIO@l /* 0x8076BA14@l */
/* 8076AFC0  4B FF A1 0D */	bl __ct__13daE_RDB_HIO_cFv
/* 8076AFC4  3C 80 80 77 */	lis r4, __dt__13daE_RDB_HIO_cFv@ha /* 0x8076AF64@ha */
/* 8076AFC8  38 84 AF 64 */	addi r4, r4, __dt__13daE_RDB_HIO_cFv@l /* 0x8076AF64@l */
/* 8076AFCC  3C A0 80 77 */	lis r5, lit_4023@ha /* 0x8076BA08@ha */
/* 8076AFD0  38 A5 BA 08 */	addi r5, r5, lit_4023@l /* 0x8076BA08@l */
/* 8076AFD4  4B FF A0 85 */	bl __register_global_object
/* 8076AFD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076AFDC  7C 08 03 A6 */	mtlr r0
/* 8076AFE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8076AFE4  4E 80 00 20 */	blr 
