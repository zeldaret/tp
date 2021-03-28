lbl_80BF2AF8:
/* 80BF2AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF2AFC  7C 08 02 A6 */	mflr r0
/* 80BF2B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF2B04  3C 60 80 BF */	lis r3, l_HIO@ha
/* 80BF2B08  38 63 2C 30 */	addi r3, r3, l_HIO@l
/* 80BF2B0C  4B FF F5 41 */	bl __ct__14daObj_Fw_HIO_cFv
/* 80BF2B10  3C 80 80 BF */	lis r4, __dt__14daObj_Fw_HIO_cFv@ha
/* 80BF2B14  38 84 2A B0 */	addi r4, r4, __dt__14daObj_Fw_HIO_cFv@l
/* 80BF2B18  3C A0 80 BF */	lis r5, lit_3642@ha
/* 80BF2B1C  38 A5 2C 24 */	addi r5, r5, lit_3642@l
/* 80BF2B20  4B FF F4 B9 */	bl __register_global_object
/* 80BF2B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF2B28  7C 08 03 A6 */	mtlr r0
/* 80BF2B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF2B30  4E 80 00 20 */	blr 
