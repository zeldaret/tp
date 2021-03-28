lbl_80C48AC8:
/* 80C48AC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C48ACC  7C 08 02 A6 */	mflr r0
/* 80C48AD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C48AD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C48AD8  7C 7F 1B 78 */	mr r31, r3
/* 80C48ADC  80 03 06 14 */	lwz r0, 0x614(r3)
/* 80C48AE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C48AE4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C48AE8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C48AEC  38 81 00 0C */	addi r4, r1, 0xc
/* 80C48AF0  4B 3D 0D 08 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C48AF4  28 03 00 00 */	cmplwi r3, 0
/* 80C48AF8  41 82 00 0C */	beq lbl_80C48B04
/* 80C48AFC  38 00 00 01 */	li r0, 1
/* 80C48B00  98 03 2C A4 */	stb r0, 0x2ca4(r3)
lbl_80C48B04:
/* 80C48B04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C48B08  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C48B0C  A8 64 5D C8 */	lha r3, 0x5dc8(r4)
/* 80C48B10  38 03 FF FF */	addi r0, r3, -1
/* 80C48B14  B0 04 5D C8 */	sth r0, 0x5dc8(r4)
/* 80C48B18  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C48B1C  7C 03 07 74 */	extsb r3, r0
/* 80C48B20  4B 3E 45 4C */	b dComIfGp_getReverb__Fi
/* 80C48B24  7C 67 1B 78 */	mr r7, r3
/* 80C48B28  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800B6@ha */
/* 80C48B2C  38 03 00 B6 */	addi r0, r3, 0x00B6 /* 0x000800B6@l */
/* 80C48B30  90 01 00 08 */	stw r0, 8(r1)
/* 80C48B34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C48B38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C48B3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C48B40  38 81 00 08 */	addi r4, r1, 8
/* 80C48B44  38 BF 05 38 */	addi r5, r31, 0x538
/* 80C48B48  38 C0 00 00 */	li r6, 0
/* 80C48B4C  3D 00 80 C5 */	lis r8, lit_3842@ha
/* 80C48B50  C0 28 9D 10 */	lfs f1, lit_3842@l(r8)
/* 80C48B54  FC 40 08 90 */	fmr f2, f1
/* 80C48B58  3D 00 80 C5 */	lis r8, lit_4190@ha
/* 80C48B5C  C0 68 9D 20 */	lfs f3, lit_4190@l(r8)
/* 80C48B60  FC 80 18 90 */	fmr f4, f3
/* 80C48B64  39 00 00 00 */	li r8, 0
/* 80C48B68  4B 66 2E 1C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C48B6C  38 60 00 01 */	li r3, 1
/* 80C48B70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C48B74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C48B78  7C 08 03 A6 */	mtlr r0
/* 80C48B7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C48B80  4E 80 00 20 */	blr 
