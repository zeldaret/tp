lbl_807F7514:
/* 807F7514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F7518  7C 08 02 A6 */	mflr r0
/* 807F751C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F7520  3C 60 80 7F */	lis r3, l_HIO@ha
/* 807F7524  38 63 7D 78 */	addi r3, r3, l_HIO@l
/* 807F7528  4B FF B7 05 */	bl __ct__12daE_YD_HIO_cFv
/* 807F752C  3C 80 80 7F */	lis r4, __dt__12daE_YD_HIO_cFv@ha
/* 807F7530  38 84 74 CC */	addi r4, r4, __dt__12daE_YD_HIO_cFv@l
/* 807F7534  3C A0 80 7F */	lis r5, lit_3804@ha
/* 807F7538  38 A5 7D 6C */	addi r5, r5, lit_3804@l
/* 807F753C  4B FF B6 7D */	bl __register_global_object
/* 807F7540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F7544  7C 08 03 A6 */	mtlr r0
/* 807F7548  38 21 00 10 */	addi r1, r1, 0x10
/* 807F754C  4E 80 00 20 */	blr 
