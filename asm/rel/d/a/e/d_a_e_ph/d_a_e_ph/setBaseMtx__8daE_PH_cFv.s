lbl_80741268:
/* 80741268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074126C  7C 08 02 A6 */	mflr r0
/* 80741270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80741274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80741278  7C 7F 1B 78 */	mr r31, r3
/* 8074127C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80741280  4B 8C BA E4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80741284  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80741288  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8074128C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80741290  4B 8C B1 A4 */	b mDoMtx_YrotM__FPA4_fs
/* 80741294  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80741298  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8074129C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 807412A0  4B 8C B0 FC */	b mDoMtx_XrotM__FPA4_fs
/* 807412A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807412A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807412AC  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 807412B0  4B 8C B2 1C */	b mDoMtx_ZrotM__FPA4_fs
/* 807412B4  80 7F 07 1C */	lwz r3, 0x71c(r31)
/* 807412B8  80 83 00 04 */	lwz r4, 4(r3)
/* 807412BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807412C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807412C4  38 84 00 24 */	addi r4, r4, 0x24
/* 807412C8  4B C0 51 E8 */	b PSMTXCopy
/* 807412CC  80 7F 07 1C */	lwz r3, 0x71c(r31)
/* 807412D0  4B 8C FF 1C */	b modelCalc__16mDoExt_McaMorfSOFv
/* 807412D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807412D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807412DC  7C 08 03 A6 */	mtlr r0
/* 807412E0  38 21 00 10 */	addi r1, r1, 0x10
/* 807412E4  4E 80 00 20 */	blr 
