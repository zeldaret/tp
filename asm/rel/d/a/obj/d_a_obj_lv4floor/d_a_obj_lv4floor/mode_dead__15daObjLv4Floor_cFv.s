lbl_80C67BB4:
/* 80C67BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67BB8  7C 08 02 A6 */	mflr r0
/* 80C67BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67BC0  4B 3B 20 BC */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C67BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67BC8  7C 08 03 A6 */	mtlr r0
/* 80C67BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67BD0  4E 80 00 20 */	blr 
