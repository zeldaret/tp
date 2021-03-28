lbl_80CC7508:
/* 80CC7508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC750C  7C 08 02 A6 */	mflr r0
/* 80CC7510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC7514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC7518  7C 7F 1B 78 */	mr r31, r3
/* 80CC751C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC7520  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC7524  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CC7528  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CC752C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CC7530  4B 67 F3 B8 */	b PSMTXTrans
/* 80CC7534  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC7538  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC753C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CC7540  4B 34 4E F4 */	b mDoMtx_YrotM__FPA4_fs
/* 80CC7544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC7548  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC754C  88 1F 06 17 */	lbz r0, 0x617(r31)
/* 80CC7550  54 00 10 3A */	slwi r0, r0, 2
/* 80CC7554  7C 9F 02 14 */	add r4, r31, r0
/* 80CC7558  80 84 05 E4 */	lwz r4, 0x5e4(r4)
/* 80CC755C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC7560  4B 67 EF 50 */	b PSMTXCopy
/* 80CC7564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC7568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC756C  7C 08 03 A6 */	mtlr r0
/* 80CC7570  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC7574  4E 80 00 20 */	blr 
