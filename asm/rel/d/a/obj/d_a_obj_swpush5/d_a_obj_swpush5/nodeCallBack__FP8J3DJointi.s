lbl_8059B754:
/* 8059B754  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059B758  7C 08 02 A6 */	mflr r0
/* 8059B75C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059B760  39 61 00 20 */	addi r11, r1, 0x20
/* 8059B764  4B DC 6A 75 */	bl _savegpr_28
/* 8059B768  2C 04 00 00 */	cmpwi r4, 0
/* 8059B76C  40 82 00 7C */	bne lbl_8059B7E8
/* 8059B770  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8059B774  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8059B778  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8059B77C  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8059B780  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8059B784  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8059B788  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8059B78C  1F BF 00 30 */	mulli r29, r31, 0x30
/* 8059B790  7C 60 EA 14 */	add r3, r0, r29
/* 8059B794  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059B798  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059B79C  4B DA AD 15 */	bl PSMTXCopy
/* 8059B7A0  2C 1F 00 01 */	cmpwi r31, 1
/* 8059B7A4  40 82 00 18 */	bne lbl_8059B7BC
/* 8059B7A8  C0 3C 05 F4 */	lfs f1, 0x5f4(r28)
/* 8059B7AC  3C 60 80 5A */	lis r3, lit_3719@ha /* 0x8059C6B0@ha */
/* 8059B7B0  C0 43 C6 B0 */	lfs f2, lit_3719@l(r3)  /* 0x8059C6B0@l */
/* 8059B7B4  FC 60 10 90 */	fmr f3, f2
/* 8059B7B8  4B A7 15 E5 */	bl transM__14mDoMtx_stack_cFfff
lbl_8059B7BC:
/* 8059B7BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059B7C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059B7C4  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8059B7C8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8059B7CC  7C 80 EA 14 */	add r4, r0, r29
/* 8059B7D0  4B DA AC E1 */	bl PSMTXCopy
/* 8059B7D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8059B7D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8059B7DC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8059B7E0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8059B7E4  4B DA AC CD */	bl PSMTXCopy
lbl_8059B7E8:
/* 8059B7E8  38 60 00 01 */	li r3, 1
/* 8059B7EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8059B7F0  4B DC 6A 35 */	bl _restgpr_28
/* 8059B7F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059B7F8  7C 08 03 A6 */	mtlr r0
/* 8059B7FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8059B800  4E 80 00 20 */	blr 
