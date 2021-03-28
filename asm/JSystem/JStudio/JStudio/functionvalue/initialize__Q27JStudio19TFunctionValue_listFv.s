lbl_80282758:
/* 80282758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028275C  7C 08 02 A6 */	mflr r0
/* 80282760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80282764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80282768  7C 7F 1B 78 */	mr r31, r3
/* 8028276C  38 7F 00 08 */	addi r3, r31, 8
/* 80282770  4B FF F1 A9 */	bl range_initialize__Q27JStudio29TFunctionValueAttribute_rangeFv
/* 80282774  38 00 00 00 */	li r0, 0
/* 80282778  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8028277C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80282780  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80282784  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80282788  C0 03 0A E0 */	lfs f0, __float_nan@l(r3)
/* 8028278C  D8 1F 00 50 */	stfd f0, 0x50(r31)
/* 80282790  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80282794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80282798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028279C  7C 08 03 A6 */	mtlr r0
/* 802827A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802827A4  4E 80 00 20 */	blr 
