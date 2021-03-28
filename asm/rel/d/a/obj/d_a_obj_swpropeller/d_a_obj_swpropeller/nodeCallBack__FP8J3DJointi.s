lbl_8059A518:
/* 8059A518  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059A51C  7C 08 02 A6 */	mflr r0
/* 8059A520  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059A524  39 61 00 20 */	addi r11, r1, 0x20
/* 8059A528  4B DC 7C B4 */	b _savegpr_29
/* 8059A52C  2C 04 00 00 */	cmpwi r4, 0
/* 8059A530  40 82 00 7C */	bne lbl_8059A5AC
/* 8059A534  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 8059A538  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8059A53C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8059A540  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 8059A544  83 BF 00 14 */	lwz r29, 0x14(r31)
/* 8059A548  A0 1D 08 30 */	lhz r0, 0x830(r29)
/* 8059A54C  7C 04 00 00 */	cmpw r4, r0
/* 8059A550  40 82 00 5C */	bne lbl_8059A5AC
/* 8059A554  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8059A558  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8059A55C  1F C4 00 30 */	mulli r30, r4, 0x30
/* 8059A560  7C 60 F2 14 */	add r3, r0, r30
/* 8059A564  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8059A568  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8059A56C  4B DA BF 44 */	b PSMTXCopy
/* 8059A570  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059A574  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059A578  A8 9D 08 2C */	lha r4, 0x82c(r29)
/* 8059A57C  4B A7 1E B8 */	b mDoMtx_YrotM__FPA4_fs
/* 8059A580  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059A584  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059A588  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 8059A58C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8059A590  7C 80 F2 14 */	add r4, r0, r30
/* 8059A594  4B DA BF 1C */	b PSMTXCopy
/* 8059A598  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059A59C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059A5A0  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8059A5A4  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8059A5A8  4B DA BF 08 */	b PSMTXCopy
lbl_8059A5AC:
/* 8059A5AC  38 60 00 01 */	li r3, 1
/* 8059A5B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8059A5B4  4B DC 7C 74 */	b _restgpr_29
/* 8059A5B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059A5BC  7C 08 03 A6 */	mtlr r0
/* 8059A5C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8059A5C4  4E 80 00 20 */	blr 
