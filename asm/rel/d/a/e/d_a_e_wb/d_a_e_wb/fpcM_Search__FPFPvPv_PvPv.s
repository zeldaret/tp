lbl_807E2944:
/* 807E2944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E2948  7C 08 02 A6 */	mflr r0
/* 807E294C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E2950  4B 83 E9 E9 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807E2954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E2958  7C 08 03 A6 */	mtlr r0
/* 807E295C  38 21 00 10 */	addi r1, r1, 0x10
/* 807E2960  4E 80 00 20 */	blr 
