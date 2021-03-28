lbl_806C48EC:
/* 806C48EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806C48F0  7C 08 02 A6 */	mflr r0
/* 806C48F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806C48F8  39 61 00 40 */	addi r11, r1, 0x40
/* 806C48FC  4B C9 D8 E0 */	b _savegpr_29
/* 806C4900  7C 7E 1B 78 */	mr r30, r3
/* 806C4904  3C 80 80 6C */	lis r4, lit_3906@ha
/* 806C4908  3B E4 74 E8 */	addi r31, r4, lit_3906@l
/* 806C490C  A8 03 06 A0 */	lha r0, 0x6a0(r3)
/* 806C4910  2C 00 00 02 */	cmpwi r0, 2
/* 806C4914  41 82 01 88 */	beq lbl_806C4A9C
/* 806C4918  40 80 00 14 */	bge lbl_806C492C
/* 806C491C  2C 00 00 00 */	cmpwi r0, 0
/* 806C4920  41 82 00 18 */	beq lbl_806C4938
/* 806C4924  40 80 00 70 */	bge lbl_806C4994
/* 806C4928  48 00 01 74 */	b lbl_806C4A9C
lbl_806C492C:
/* 806C492C  2C 00 00 04 */	cmpwi r0, 4
/* 806C4930  40 80 01 6C */	bge lbl_806C4A9C
/* 806C4934  48 00 00 A4 */	b lbl_806C49D8
lbl_806C4938:
/* 806C4938  38 80 00 16 */	li r4, 0x16
/* 806C493C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806C4940  38 A0 00 00 */	li r5, 0
/* 806C4944  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C4948  4B FF D4 A5 */	bl body_anm_init__FP10e_gb_classifUcf
/* 806C494C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015C@ha */
/* 806C4950  38 03 01 5C */	addi r0, r3, 0x015C /* 0x0007015C@l */
/* 806C4954  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C4958  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806C495C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806C4960  80 63 00 00 */	lwz r3, 0(r3)
/* 806C4964  38 81 00 0C */	addi r4, r1, 0xc
/* 806C4968  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 806C496C  38 C0 00 00 */	li r6, 0
/* 806C4970  38 E0 00 00 */	li r7, 0
/* 806C4974  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C4978  FC 40 08 90 */	fmr f2, f1
/* 806C497C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 806C4980  FC 80 18 90 */	fmr f4, f3
/* 806C4984  39 00 00 00 */	li r8, 0
/* 806C4988  4B BE 6F FC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806C498C  38 00 00 01 */	li r0, 1
/* 806C4990  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
lbl_806C4994:
/* 806C4994  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806C4998  38 80 00 01 */	li r4, 1
/* 806C499C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806C49A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C49A4  40 82 00 18 */	bne lbl_806C49BC
/* 806C49A8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806C49AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806C49B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C49B4  41 82 00 08 */	beq lbl_806C49BC
/* 806C49B8  38 80 00 00 */	li r4, 0
lbl_806C49BC:
/* 806C49BC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806C49C0  41 82 00 DC */	beq lbl_806C4A9C
/* 806C49C4  38 00 00 03 */	li r0, 3
/* 806C49C8  B0 1E 06 A0 */	sth r0, 0x6a0(r30)
/* 806C49CC  38 00 00 28 */	li r0, 0x28
/* 806C49D0  B0 1E 06 C4 */	sth r0, 0x6c4(r30)
/* 806C49D4  48 00 00 C8 */	b lbl_806C4A9C
lbl_806C49D8:
/* 806C49D8  A8 1E 06 C4 */	lha r0, 0x6c4(r30)
/* 806C49DC  2C 00 00 14 */	cmpwi r0, 0x14
/* 806C49E0  40 82 00 20 */	bne lbl_806C4A00
/* 806C49E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C49E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806C49EC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 806C49F0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 806C49F4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806C49F8  7C 05 07 74 */	extsb r5, r0
/* 806C49FC  4B 97 08 04 */	b onSwitch__10dSv_info_cFii
lbl_806C4A00:
/* 806C4A00  A8 1E 06 C4 */	lha r0, 0x6c4(r30)
/* 806C4A04  2C 00 00 00 */	cmpwi r0, 0
/* 806C4A08  40 82 00 94 */	bne lbl_806C4A9C
/* 806C4A0C  38 00 02 19 */	li r0, 0x219
/* 806C4A10  B0 01 00 08 */	sth r0, 8(r1)
/* 806C4A14  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 806C4A18  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 806C4A1C  38 81 00 08 */	addi r4, r1, 8
/* 806C4A20  4B 95 4D D8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 806C4A24  7C 60 1B 78 */	mr r0, r3
/* 806C4A28  7C 1D 03 79 */	or. r29, r0, r0
/* 806C4A2C  C0 5E 04 A8 */	lfs f2, 0x4a8(r30)
/* 806C4A30  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 806C4A34  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 806C4A38  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806C4A3C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 806C4A40  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806C4A44  41 82 00 38 */	beq lbl_806C4A7C
/* 806C4A48  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 806C4A4C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806C4A50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806C4A54  38 81 00 10 */	addi r4, r1, 0x10
/* 806C4A58  48 00 2A 61 */	bl setPos__7daKey_cF4cXyz
/* 806C4A5C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 806C4A60  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806C4A64  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 806C4A68  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806C4A6C  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 806C4A70  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806C4A74  7F A3 EB 78 */	mr r3, r29
/* 806C4A78  48 61 5F 34 */	b actionWaitInit__7daKey_cFv
lbl_806C4A7C:
/* 806C4A7C  7F C3 F3 78 */	mr r3, r30
/* 806C4A80  38 81 00 1C */	addi r4, r1, 0x1c
/* 806C4A84  38 A0 00 14 */	li r5, 0x14
/* 806C4A88  38 C0 00 00 */	li r6, 0
/* 806C4A8C  88 FE 05 64 */	lbz r7, 0x564(r30)
/* 806C4A90  4B 95 80 48 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806C4A94  7F C3 F3 78 */	mr r3, r30
/* 806C4A98  4B 95 51 E4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_806C4A9C:
/* 806C4A9C  39 61 00 40 */	addi r11, r1, 0x40
/* 806C4AA0  4B C9 D7 88 */	b _restgpr_29
/* 806C4AA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806C4AA8  7C 08 03 A6 */	mtlr r0
/* 806C4AAC  38 21 00 40 */	addi r1, r1, 0x40
/* 806C4AB0  4E 80 00 20 */	blr 
