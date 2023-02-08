lbl_80BDDBF0:
/* 80BDDBF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDDBF4  7C 08 02 A6 */	mflr r0
/* 80BDDBF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDDBFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDDC00  4B 78 45 D9 */	bl _savegpr_28
/* 80BDDC04  2C 04 00 00 */	cmpwi r4, 0
/* 80BDDC08  40 82 00 7C */	bne lbl_80BDDC84
/* 80BDDC0C  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80BDDC10  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80BDDC14  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80BDDC18  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80BDDC1C  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80BDDC20  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80BDDC24  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80BDDC28  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80BDDC2C  7C 60 EA 14 */	add r3, r0, r29
/* 80BDDC30  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDC34  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDC38  4B 76 88 79 */	bl PSMTXCopy
/* 80BDDC3C  2C 1F 00 01 */	cmpwi r31, 1
/* 80BDDC40  40 82 00 18 */	bne lbl_80BDDC58
/* 80BDDC44  C0 3C 06 38 */	lfs f1, 0x638(r28)
/* 80BDDC48  3C 60 80 BE */	lis r3, lit_3719@ha /* 0x80BDF880@ha */
/* 80BDDC4C  C0 43 F8 80 */	lfs f2, lit_3719@l(r3)  /* 0x80BDF880@l */
/* 80BDDC50  FC 60 10 90 */	fmr f3, f2
/* 80BDDC54  4B 42 F1 49 */	bl transM__14mDoMtx_stack_cFfff
lbl_80BDDC58:
/* 80BDDC58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDC5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDC60  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80BDDC64  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80BDDC68  7C 80 EA 14 */	add r4, r0, r29
/* 80BDDC6C  4B 76 88 45 */	bl PSMTXCopy
/* 80BDDC70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDC74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDC78  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80BDDC7C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80BDDC80  4B 76 88 31 */	bl PSMTXCopy
lbl_80BDDC84:
/* 80BDDC84  38 60 00 01 */	li r3, 1
/* 80BDDC88  39 61 00 20 */	addi r11, r1, 0x20
/* 80BDDC8C  4B 78 45 99 */	bl _restgpr_28
/* 80BDDC90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDDC94  7C 08 03 A6 */	mtlr r0
/* 80BDDC98  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDDC9C  4E 80 00 20 */	blr 
