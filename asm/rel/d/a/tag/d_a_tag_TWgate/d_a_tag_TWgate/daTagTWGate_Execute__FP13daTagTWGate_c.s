lbl_80D5543C:
/* 80D5543C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D55440  7C 08 02 A6 */	mflr r0
/* 80D55444  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D55448  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D5544C  7C 7F 1B 78 */	mr r31, r3
/* 80D55450  80 83 05 84 */	lwz r4, 0x584(r3)
/* 80D55454  39 84 00 0C */	addi r12, r4, 0xc
/* 80D55458  4B 60 CC 2C */	b __ptmf_scall
/* 80D5545C  60 00 00 00 */	nop 
/* 80D55460  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800E7@ha */
/* 80D55464  38 03 00 E7 */	addi r0, r3, 0x00E7 /* 0x000800E7@l */
/* 80D55468  90 01 00 08 */	stw r0, 8(r1)
/* 80D5546C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D55470  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D55474  80 63 00 00 */	lwz r3, 0(r3)
/* 80D55478  38 81 00 08 */	addi r4, r1, 8
/* 80D5547C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D55480  38 C0 00 00 */	li r6, 0
/* 80D55484  38 E0 00 00 */	li r7, 0
/* 80D55488  3D 00 80 D5 */	lis r8, lit_4079@ha
/* 80D5548C  C0 28 58 2C */	lfs f1, lit_4079@l(r8)
/* 80D55490  FC 40 08 90 */	fmr f2, f1
/* 80D55494  3D 00 80 D5 */	lis r8, lit_4083@ha
/* 80D55498  C0 68 58 3C */	lfs f3, lit_4083@l(r8)
/* 80D5549C  FC 80 18 90 */	fmr f4, f3
/* 80D554A0  39 00 00 00 */	li r8, 0
/* 80D554A4  4B 55 70 68 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D554A8  88 1F 05 E0 */	lbz r0, 0x5e0(r31)
/* 80D554AC  28 00 00 00 */	cmplwi r0, 0
/* 80D554B0  41 82 00 1C */	beq lbl_80D554CC
/* 80D554B4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D554B8  38 80 00 00 */	li r4, 0
/* 80D554BC  38 A0 00 00 */	li r5, 0
/* 80D554C0  4B 2B BB F0 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80D554C4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D554C8  4B 2B BD 24 */	b modelCalc__16mDoExt_McaMorfSOFv
lbl_80D554CC:
/* 80D554CC  38 60 00 01 */	li r3, 1
/* 80D554D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D554D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D554D8  7C 08 03 A6 */	mtlr r0
/* 80D554DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D554E0  4E 80 00 20 */	blr 
