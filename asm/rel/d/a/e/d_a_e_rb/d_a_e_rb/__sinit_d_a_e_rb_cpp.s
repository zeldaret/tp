lbl_80764880:
/* 80764880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80764884  7C 08 02 A6 */	mflr r0
/* 80764888  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076488C  3C 60 80 76 */	lis r3, l_HIO@ha
/* 80764890  38 63 4F 90 */	addi r3, r3, l_HIO@l
/* 80764894  4B FF DA F9 */	bl __ct__12daE_RB_HIO_cFv
/* 80764898  3C 80 80 76 */	lis r4, __dt__12daE_RB_HIO_cFv@ha
/* 8076489C  38 84 48 38 */	addi r4, r4, __dt__12daE_RB_HIO_cFv@l
/* 807648A0  3C A0 80 76 */	lis r5, lit_3804@ha
/* 807648A4  38 A5 4F 84 */	addi r5, r5, lit_3804@l
/* 807648A8  4B FF DA 71 */	bl __register_global_object
/* 807648AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807648B0  7C 08 03 A6 */	mtlr r0
/* 807648B4  38 21 00 10 */	addi r1, r1, 0x10
/* 807648B8  4E 80 00 20 */	blr 
