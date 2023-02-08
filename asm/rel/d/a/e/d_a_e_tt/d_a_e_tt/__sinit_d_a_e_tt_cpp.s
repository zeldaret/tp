lbl_807C1AF0:
/* 807C1AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C1AF4  7C 08 02 A6 */	mflr r0
/* 807C1AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C1AFC  3C 60 80 7C */	lis r3, l_HIO@ha /* 0x807C23EC@ha */
/* 807C1B00  38 63 23 EC */	addi r3, r3, l_HIO@l /* 0x807C23EC@l */
/* 807C1B04  4B FF BC A9 */	bl __ct__12daE_TT_HIO_cFv
/* 807C1B08  3C 80 80 7C */	lis r4, __dt__12daE_TT_HIO_cFv@ha /* 0x807C1AA8@ha */
/* 807C1B0C  38 84 1A A8 */	addi r4, r4, __dt__12daE_TT_HIO_cFv@l /* 0x807C1AA8@l */
/* 807C1B10  3C A0 80 7C */	lis r5, lit_3924@ha /* 0x807C23E0@ha */
/* 807C1B14  38 A5 23 E0 */	addi r5, r5, lit_3924@l /* 0x807C23E0@l */
/* 807C1B18  4B FF BC 21 */	bl __register_global_object
/* 807C1B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C1B20  7C 08 03 A6 */	mtlr r0
/* 807C1B24  38 21 00 10 */	addi r1, r1, 0x10
/* 807C1B28  4E 80 00 20 */	blr 
