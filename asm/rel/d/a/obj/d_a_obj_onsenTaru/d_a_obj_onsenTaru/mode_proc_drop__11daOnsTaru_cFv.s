lbl_80CA9400:
/* 80CA9400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA9404  7C 08 02 A6 */	mflr r0
/* 80CA9408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA940C  38 83 07 BC */	addi r4, r3, 0x7bc
/* 80CA9410  4B 37 12 BC */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CA9414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA9418  7C 08 03 A6 */	mtlr r0
/* 80CA941C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA9420  4E 80 00 20 */	blr 
