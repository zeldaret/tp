lbl_8082F1A8:
/* 8082F1A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082F1AC  7C 08 02 A6 */	mflr r0
/* 8082F1B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082F1B4  3C 60 80 83 */	lis r3, l_HIO@ha
/* 8082F1B8  38 63 F7 34 */	addi r3, r3, l_HIO@l
/* 8082F1BC  4B FF 9E 71 */	bl __ct__12daE_ZH_HIO_cFv
/* 8082F1C0  3C 80 80 83 */	lis r4, __dt__12daE_ZH_HIO_cFv@ha
/* 8082F1C4  38 84 F1 60 */	addi r4, r4, __dt__12daE_ZH_HIO_cFv@l
/* 8082F1C8  3C A0 80 83 */	lis r5, lit_3773@ha
/* 8082F1CC  38 A5 F7 28 */	addi r5, r5, lit_3773@l
/* 8082F1D0  4B FF 9D E9 */	bl __register_global_object
/* 8082F1D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082F1D8  7C 08 03 A6 */	mtlr r0
/* 8082F1DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8082F1E0  4E 80 00 20 */	blr 
