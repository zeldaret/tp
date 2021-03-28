lbl_80CB46C4:
/* 80CB46C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CB46C8  7C 08 02 A6 */	mflr r0
/* 80CB46CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CB46D0  39 61 00 30 */	addi r11, r1, 0x30
/* 80CB46D4  4B 6A DB 08 */	b _savegpr_29
/* 80CB46D8  7C 7E 1B 78 */	mr r30, r3
/* 80CB46DC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CB46E0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CB46E4  40 82 00 98 */	bne lbl_80CB477C
/* 80CB46E8  7F C0 F3 79 */	or. r0, r30, r30
/* 80CB46EC  41 82 00 84 */	beq lbl_80CB4770
/* 80CB46F0  7C 1F 03 78 */	mr r31, r0
/* 80CB46F4  4B 3C 3F 30 */	b __ct__16dBgS_MoveBgActorFv
/* 80CB46F8  3C 60 80 CB */	lis r3, __vt__10daPoTbox_c@ha
/* 80CB46FC  38 03 50 E0 */	addi r0, r3, __vt__10daPoTbox_c@l
/* 80CB4700  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 80CB4704  3B BF 05 B8 */	addi r29, r31, 0x5b8
/* 80CB4708  3C 60 80 CB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80CB470C  38 03 50 D4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80CB4710  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80CB4714  7F A3 EB 78 */	mr r3, r29
/* 80CB4718  38 80 00 00 */	li r4, 0
/* 80CB471C  4B 67 3C E0 */	b init__12J3DFrameCtrlFs
/* 80CB4720  38 00 00 00 */	li r0, 0
/* 80CB4724  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80CB4728  3B BF 05 D4 */	addi r29, r31, 0x5d4
/* 80CB472C  3C 60 80 CB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80CB4730  38 03 50 D4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80CB4734  90 1F 05 D4 */	stw r0, 0x5d4(r31)
/* 80CB4738  7F A3 EB 78 */	mr r3, r29
/* 80CB473C  38 80 00 00 */	li r4, 0
/* 80CB4740  4B 67 3C BC */	b init__12J3DFrameCtrlFs
/* 80CB4744  38 00 00 00 */	li r0, 0
/* 80CB4748  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80CB474C  3B BF 05 EC */	addi r29, r31, 0x5ec
/* 80CB4750  3C 60 80 CB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80CB4754  38 03 50 D4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80CB4758  90 1F 05 EC */	stw r0, 0x5ec(r31)
/* 80CB475C  7F A3 EB 78 */	mr r3, r29
/* 80CB4760  38 80 00 00 */	li r4, 0
/* 80CB4764  4B 67 3C 98 */	b init__12J3DFrameCtrlFs
/* 80CB4768  38 00 00 00 */	li r0, 0
/* 80CB476C  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80CB4770:
/* 80CB4770  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CB4774  60 00 00 08 */	ori r0, r0, 8
/* 80CB4778  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CB477C:
/* 80CB477C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CB4780  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80CB4784  98 1E 06 06 */	stb r0, 0x606(r30)
/* 80CB4788  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80CB478C  88 1E 06 06 */	lbz r0, 0x606(r30)
/* 80CB4790  54 00 10 3A */	slwi r0, r0, 2
/* 80CB4794  3C 80 80 CB */	lis r4, l_type@ha
/* 80CB4798  38 84 50 0C */	addi r4, r4, l_type@l
/* 80CB479C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CB47A0  4B 37 87 1C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CB47A4  7C 7F 1B 78 */	mr r31, r3
/* 80CB47A8  2C 1F 00 04 */	cmpwi r31, 4
/* 80CB47AC  40 82 01 8C */	bne lbl_80CB4938
/* 80CB47B0  88 1E 06 06 */	lbz r0, 0x606(r30)
/* 80CB47B4  54 00 10 3A */	slwi r0, r0, 2
/* 80CB47B8  7F C3 F3 78 */	mr r3, r30
/* 80CB47BC  3C 80 80 CB */	lis r4, l_type@ha
/* 80CB47C0  38 84 50 0C */	addi r4, r4, l_type@l
/* 80CB47C4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CB47C8  3C A0 80 CB */	lis r5, l_dzbIdx@ha
/* 80CB47CC  38 A5 50 1C */	addi r5, r5, l_dzbIdx@l
/* 80CB47D0  7C A5 00 2E */	lwzx r5, r5, r0
/* 80CB47D4  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CB47D8  38 C6 5A 24 */	addi r6, r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80CB47DC  38 E0 6E A0 */	li r7, 0x6ea0
/* 80CB47E0  39 00 00 00 */	li r8, 0
/* 80CB47E4  4B 3C 3F D8 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CB47E8  2C 03 00 05 */	cmpwi r3, 5
/* 80CB47EC  40 82 00 0C */	bne lbl_80CB47F8
/* 80CB47F0  38 60 00 05 */	li r3, 5
/* 80CB47F4  48 00 01 48 */	b lbl_80CB493C
lbl_80CB47F8:
/* 80CB47F8  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CB47FC  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB4800  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CB4804  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CB4808  80 83 00 04 */	lwz r4, 4(r3)
/* 80CB480C  7F C3 F3 78 */	mr r3, r30
/* 80CB4810  4B 36 5D 68 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CB4814  38 00 00 00 */	li r0, 0
/* 80CB4818  98 1E 06 05 */	stb r0, 0x605(r30)
/* 80CB481C  88 1E 06 06 */	lbz r0, 0x606(r30)
/* 80CB4820  28 00 00 00 */	cmplwi r0, 0
/* 80CB4824  40 82 01 04 */	bne lbl_80CB4928
/* 80CB4828  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CB482C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CB4830  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB4834  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB4838  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CB483C  7C 05 07 74 */	extsb r5, r0
/* 80CB4840  4B 38 0B 20 */	b isSwitch__10dSv_info_cCFii
/* 80CB4844  98 7E 06 07 */	stb r3, 0x607(r30)
/* 80CB4848  88 1E 06 07 */	lbz r0, 0x607(r30)
/* 80CB484C  28 00 00 00 */	cmplwi r0, 0
/* 80CB4850  41 82 00 CC */	beq lbl_80CB491C
/* 80CB4854  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80CB4858  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB485C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CB4860  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80CB4864  80 83 00 04 */	lwz r4, 4(r3)
/* 80CB4868  7F C3 F3 78 */	mr r3, r30
/* 80CB486C  4B 36 5D 0C */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CB4870  38 00 00 01 */	li r0, 1
/* 80CB4874  98 1E 06 05 */	stb r0, 0x605(r30)
/* 80CB4878  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 80CB487C  3C 60 80 CB */	lis r3, lit_3835@ha
/* 80CB4880  C8 43 4F D0 */	lfd f2, lit_3835@l(r3)
/* 80CB4884  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CB4888  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CB488C  3C 80 43 30 */	lis r4, 0x4330
/* 80CB4890  90 81 00 08 */	stw r4, 8(r1)
/* 80CB4894  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CB4898  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CB489C  3C 60 80 CB */	lis r3, lit_3724@ha
/* 80CB48A0  C0 23 4F C8 */	lfs f1, lit_3724@l(r3)
/* 80CB48A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CB48A8  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80CB48AC  A8 1E 05 F4 */	lha r0, 0x5f4(r30)
/* 80CB48B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CB48B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB48B8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CB48BC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80CB48C0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CB48C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CB48C8  D0 1E 05 FC */	stfs f0, 0x5fc(r30)
/* 80CB48CC  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80CB48D0  28 04 00 00 */	cmplwi r4, 0
/* 80CB48D4  41 82 00 14 */	beq lbl_80CB48E8
/* 80CB48D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB48DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB48E0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CB48E4  4B 3B F9 6C */	b Release__4cBgSFP9dBgW_Base
lbl_80CB48E8:
/* 80CB48E8  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 80CB48EC  28 04 00 00 */	cmplwi r4, 0
/* 80CB48F0  41 82 00 20 */	beq lbl_80CB4910
/* 80CB48F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB48F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB48FC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CB4900  7F C5 F3 78 */	mr r5, r30
/* 80CB4904  4B 3C 01 04 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CB4908  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80CB490C  4B 3C 70 B4 */	b Move__4dBgWFv
lbl_80CB4910:
/* 80CB4910  7F C3 F3 78 */	mr r3, r30
/* 80CB4914  48 00 03 41 */	bl init_modeOpenEnd__10daPoTbox_cFv
/* 80CB4918  48 00 00 18 */	b lbl_80CB4930
lbl_80CB491C:
/* 80CB491C  7F C3 F3 78 */	mr r3, r30
/* 80CB4920  48 00 01 89 */	bl init_modeWait__10daPoTbox_cFv
/* 80CB4924  48 00 00 0C */	b lbl_80CB4930
lbl_80CB4928:
/* 80CB4928  7F C3 F3 78 */	mr r3, r30
/* 80CB492C  48 00 03 59 */	bl init_modeEnd__10daPoTbox_cFv
lbl_80CB4930:
/* 80CB4930  7F C3 F3 78 */	mr r3, r30
/* 80CB4934  4B FF F9 95 */	bl setBaseMtx__10daPoTbox_cFv
lbl_80CB4938:
/* 80CB4938  7F E3 FB 78 */	mr r3, r31
lbl_80CB493C:
/* 80CB493C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CB4940  4B 6A D8 E8 */	b _restgpr_29
/* 80CB4944  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CB4948  7C 08 03 A6 */	mtlr r0
/* 80CB494C  38 21 00 30 */	addi r1, r1, 0x30
/* 80CB4950  4E 80 00 20 */	blr 
