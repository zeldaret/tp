lbl_80CA92CC:
/* 80CA92CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA92D0  7C 08 02 A6 */	mflr r0
/* 80CA92D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA92D8  38 83 07 BC */	addi r4, r3, 0x7bc
/* 80CA92DC  4B 37 13 F0 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CA92E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA92E4  7C 08 03 A6 */	mtlr r0
/* 80CA92E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA92EC  4E 80 00 20 */	blr 
