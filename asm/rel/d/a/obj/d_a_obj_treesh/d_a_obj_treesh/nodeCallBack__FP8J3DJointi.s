lbl_80D1F190:
/* 80D1F190  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D1F194  7C 08 02 A6 */	mflr r0
/* 80D1F198  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1F19C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1F1A0  4B 64 30 38 */	b _savegpr_28
/* 80D1F1A4  2C 04 00 00 */	cmpwi r4, 0
/* 80D1F1A8  40 82 00 94 */	bne lbl_80D1F23C
/* 80D1F1AC  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80D1F1B0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D1F1B4  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80D1F1B8  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80D1F1BC  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80D1F1C0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80D1F1C4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D1F1C8  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80D1F1CC  7C 60 EA 14 */	add r3, r0, r29
/* 80D1F1D0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80D1F1D4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80D1F1D8  4B 62 72 D8 */	b PSMTXCopy
/* 80D1F1DC  2C 1F 00 01 */	cmpwi r31, 1
/* 80D1F1E0  40 82 00 18 */	bne lbl_80D1F1F8
/* 80D1F1E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1F1E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1F1EC  A8 9C 05 AE */	lha r4, 0x5ae(r28)
/* 80D1F1F0  4B 2E D2 44 */	b mDoMtx_YrotM__FPA4_fs
/* 80D1F1F4  48 00 00 1C */	b lbl_80D1F210
lbl_80D1F1F8:
/* 80D1F1F8  2C 1F 00 02 */	cmpwi r31, 2
/* 80D1F1FC  40 82 00 14 */	bne lbl_80D1F210
/* 80D1F200  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1F204  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1F208  A8 9C 05 B4 */	lha r4, 0x5b4(r28)
/* 80D1F20C  4B 2E D2 28 */	b mDoMtx_YrotM__FPA4_fs
lbl_80D1F210:
/* 80D1F210  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1F214  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1F218  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80D1F21C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80D1F220  7C 80 EA 14 */	add r4, r0, r29
/* 80D1F224  4B 62 72 8C */	b PSMTXCopy
/* 80D1F228  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1F22C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1F230  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80D1F234  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80D1F238  4B 62 72 78 */	b PSMTXCopy
lbl_80D1F23C:
/* 80D1F23C  38 60 00 01 */	li r3, 1
/* 80D1F240  39 61 00 20 */	addi r11, r1, 0x20
/* 80D1F244  4B 64 2F E0 */	b _restgpr_28
/* 80D1F248  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D1F24C  7C 08 03 A6 */	mtlr r0
/* 80D1F250  38 21 00 20 */	addi r1, r1, 0x20
/* 80D1F254  4E 80 00 20 */	blr 
