lbl_806D4288:
/* 806D4288  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806D428C  7C 08 02 A6 */	mflr r0
/* 806D4290  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D4294  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806D4298  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806D429C  7C 7E 1B 78 */	mr r30, r3
/* 806D42A0  3C 80 80 6D */	lis r4, lit_3906@ha
/* 806D42A4  3B E4 79 A0 */	addi r31, r4, lit_3906@l
/* 806D42A8  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D42AC  2C 00 00 00 */	cmpwi r0, 0
/* 806D42B0  40 82 00 88 */	bne lbl_806D4338
/* 806D42B4  38 00 00 01 */	li r0, 1
/* 806D42B8  98 1E 0A 69 */	stb r0, 0xa69(r30)
/* 806D42BC  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D42C0  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D42C4  38 80 00 09 */	li r4, 9
/* 806D42C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D42CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D42D0  3C A5 00 02 */	addis r5, r5, 2
/* 806D42D4  38 C0 00 80 */	li r6, 0x80
/* 806D42D8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D42DC  4B 96 80 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D42E0  7C 64 1B 78 */	mr r4, r3
/* 806D42E4  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D42E8  38 A0 00 02 */	li r5, 2
/* 806D42EC  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D42F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D42F4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D42F8  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D42FC  4B 93 CB 74 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D4300  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D4304  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806D4308  88 1E 0A 6F */	lbz r0, 0xa6f(r30)
/* 806D430C  28 00 00 00 */	cmplwi r0, 0
/* 806D4310  41 82 00 10 */	beq lbl_806D4320
/* 806D4314  38 00 00 3C */	li r0, 0x3c
/* 806D4318  98 1E 0A 6B */	stb r0, 0xa6b(r30)
/* 806D431C  48 00 00 0C */	b lbl_806D4328
lbl_806D4320:
/* 806D4320  38 00 00 00 */	li r0, 0
/* 806D4324  98 1E 0A 6B */	stb r0, 0xa6b(r30)
lbl_806D4328:
/* 806D4328  80 7E 0A 3C */	lwz r3, 0xa3c(r30)
/* 806D432C  38 03 00 01 */	addi r0, r3, 1
/* 806D4330  90 1E 0A 3C */	stw r0, 0xa3c(r30)
/* 806D4334  48 00 01 1C */	b lbl_806D4450
lbl_806D4338:
/* 806D4338  2C 00 FF FF */	cmpwi r0, -1
/* 806D433C  41 82 01 14 */	beq lbl_806D4450
/* 806D4340  2C 00 00 01 */	cmpwi r0, 1
/* 806D4344  40 82 00 48 */	bne lbl_806D438C
/* 806D4348  38 9E 07 CC */	addi r4, r30, 0x7cc
/* 806D434C  4B 94 63 80 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D4350  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 806D4354  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D4358  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D435C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D4360  4B 9A 27 4C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806D4364  88 1E 0A 6B */	lbz r0, 0xa6b(r30)
/* 806D4368  28 00 00 00 */	cmplwi r0, 0
/* 806D436C  40 82 00 E4 */	bne lbl_806D4450
/* 806D4370  38 00 00 00 */	li r0, 0
/* 806D4374  90 1E 08 30 */	stw r0, 0x830(r30)
/* 806D4378  90 1E 08 18 */	stw r0, 0x818(r30)
/* 806D437C  80 7E 0A 3C */	lwz r3, 0xa3c(r30)
/* 806D4380  38 03 00 01 */	addi r0, r3, 1
/* 806D4384  90 1E 0A 3C */	stw r0, 0xa3c(r30)
/* 806D4388  48 00 00 C8 */	b lbl_806D4450
lbl_806D438C:
/* 806D438C  38 9E 07 CC */	addi r4, r30, 0x7cc
/* 806D4390  4B 94 63 3C */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D4394  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 806D4398  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D439C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D43A0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D43A4  4B 9A 27 08 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806D43A8  38 7E 0A 48 */	addi r3, r30, 0xa48
/* 806D43AC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806D43B0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D43B4  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 806D43B8  4B B9 B6 84 */	b cLib_addCalc2__FPffff
/* 806D43BC  C0 3E 0A 48 */	lfs f1, 0xa48(r30)
/* 806D43C0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806D43C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D43C8  4C 40 13 82 */	cror 2, 0, 2
/* 806D43CC  40 82 00 84 */	bne lbl_806D4450
/* 806D43D0  3C 60 80 6D */	lis r3, struct_806D7F1C+0x2@ha
/* 806D43D4  88 03 7F 1E */	lbz r0, struct_806D7F1C+0x2@l(r3)
/* 806D43D8  28 00 00 02 */	cmplwi r0, 2
/* 806D43DC  40 80 00 74 */	bge lbl_806D4450
/* 806D43E0  7F C3 F3 78 */	mr r3, r30
/* 806D43E4  4B FF E4 B9 */	bl setDeathLightEffect__8daE_GM_cFv
/* 806D43E8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D43EC  7C 03 07 74 */	extsb r3, r0
/* 806D43F0  4B 95 8C 7C */	b dComIfGp_getReverb__Fi
/* 806D43F4  7C 67 1B 78 */	mr r7, r3
/* 806D43F8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000A@ha */
/* 806D43FC  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0006000A@l */
/* 806D4400  90 01 00 08 */	stw r0, 8(r1)
/* 806D4404  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806D4408  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806D440C  80 63 00 00 */	lwz r3, 0(r3)
/* 806D4410  38 81 00 08 */	addi r4, r1, 8
/* 806D4414  38 BE 05 38 */	addi r5, r30, 0x538
/* 806D4418  38 C0 00 00 */	li r6, 0
/* 806D441C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D4420  FC 40 08 90 */	fmr f2, f1
/* 806D4424  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806D4428  FC 80 18 90 */	fmr f4, f3
/* 806D442C  39 00 00 00 */	li r8, 0
/* 806D4430  4B BD 75 54 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806D4434  7F C3 F3 78 */	mr r3, r30
/* 806D4438  4B 94 58 44 */	b fopAcM_delete__FP10fopAc_ac_c
/* 806D443C  3C 60 80 6D */	lis r3, struct_806D7F1C+0x2@ha
/* 806D4440  38 83 7F 1E */	addi r4, r3, struct_806D7F1C+0x2@l
/* 806D4444  88 64 00 00 */	lbz r3, 0(r4)
/* 806D4448  38 03 00 01 */	addi r0, r3, 1
/* 806D444C  98 04 00 00 */	stb r0, 0(r4)
lbl_806D4450:
/* 806D4450  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806D4454  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806D4458  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806D445C  7C 08 03 A6 */	mtlr r0
/* 806D4460  38 21 00 20 */	addi r1, r1, 0x20
/* 806D4464  4E 80 00 20 */	blr 
