lbl_80C936A8:
/* 80C936A8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C936AC  7C 08 02 A6 */	mflr r0
/* 80C936B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C936B4  39 61 00 50 */	addi r11, r1, 0x50
/* 80C936B8  4B 6C EB 24 */	b _savegpr_29
/* 80C936BC  7C 7E 1B 78 */	mr r30, r3
/* 80C936C0  3C 60 80 C9 */	lis r3, l_bmd@ha
/* 80C936C4  3B E3 3D 88 */	addi r31, r3, l_bmd@l
/* 80C936C8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C936CC  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80C936D0  28 00 00 01 */	cmplwi r0, 1
/* 80C936D4  40 82 00 60 */	bne lbl_80C93734
/* 80C936D8  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80C936DC  3C 03 00 01 */	addis r0, r3, 1
/* 80C936E0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C936E4  41 82 00 50 */	beq lbl_80C93734
/* 80C936E8  90 61 00 08 */	stw r3, 8(r1)
/* 80C936EC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80C936F0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80C936F4  38 81 00 08 */	addi r4, r1, 8
/* 80C936F8  4B 38 61 00 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C936FC  28 03 00 00 */	cmplwi r3, 0
/* 80C93700  41 82 00 34 */	beq lbl_80C93734
/* 80C93704  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C93708  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C9370C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C93710  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C93714  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C93718  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C9371C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C93720  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80C93724  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C93728  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80C9372C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C93730  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
lbl_80C93734:
/* 80C93734  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 80C93738  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 80C9373C  28 00 00 02 */	cmplwi r0, 2
/* 80C93740  41 82 00 38 */	beq lbl_80C93778
/* 80C93744  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80C93748  3B A0 00 01 */	li r29, 1
/* 80C9374C  28 04 00 FF */	cmplwi r4, 0xff
/* 80C93750  41 82 00 24 */	beq lbl_80C93774
/* 80C93754  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C93758  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9375C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C93760  7C 05 07 74 */	extsb r5, r0
/* 80C93764  4B 3A 1B FC */	b isSwitch__10dSv_info_cCFii
/* 80C93768  2C 03 00 00 */	cmpwi r3, 0
/* 80C9376C  40 82 00 08 */	bne lbl_80C93774
/* 80C93770  3B A0 00 00 */	li r29, 0
lbl_80C93774:
/* 80C93774  9B BE 07 00 */	stb r29, 0x700(r30)
lbl_80C93778:
/* 80C93778  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80C9377C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C93780  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80C93784  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C93788  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80C9378C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C93790  88 1E 07 00 */	lbz r0, 0x700(r30)
/* 80C93794  28 00 00 00 */	cmplwi r0, 0
/* 80C93798  41 82 00 24 */	beq lbl_80C937BC
/* 80C9379C  C0 3E 04 F0 */	lfs f1, 0x4f0(r30)
/* 80C937A0  88 1E 07 02 */	lbz r0, 0x702(r30)
/* 80C937A4  54 00 10 3A */	slwi r0, r0, 2
/* 80C937A8  38 7F 00 20 */	addi r3, r31, 0x20
/* 80C937AC  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C937B0  FC 00 00 50 */	fneg f0, f0
/* 80C937B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C937B8  48 00 00 08 */	b lbl_80C937C0
lbl_80C937BC:
/* 80C937BC  C0 3F 00 30 */	lfs f1, 0x30(r31)
lbl_80C937C0:
/* 80C937C0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C937C4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C937C8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80C937CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C937D0  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 80C937D4  4B 37 95 90 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C937D8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80C937DC  4B 37 97 68 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C937E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C937E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C937E8  38 81 00 28 */	addi r4, r1, 0x28
/* 80C937EC  7C 85 23 78 */	mr r5, r4
/* 80C937F0  4B 6B 35 7C */	b PSMTXMultVec
/* 80C937F4  38 7E 06 E0 */	addi r3, r30, 0x6e0
/* 80C937F8  38 81 00 28 */	addi r4, r1, 0x28
/* 80C937FC  38 A1 00 34 */	addi r5, r1, 0x34
/* 80C93800  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80C93804  88 1E 07 02 */	lbz r0, 0x702(r30)
/* 80C93808  54 00 10 3A */	slwi r0, r0, 2
/* 80C9380C  38 DF 00 28 */	addi r6, r31, 0x28
/* 80C93810  7C 06 04 2E */	lfsx f0, r6, r0
/* 80C93814  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C93818  4B 5D B7 E8 */	b Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 80C9381C  38 61 00 10 */	addi r3, r1, 0x10
/* 80C93820  38 81 00 34 */	addi r4, r1, 0x34
/* 80C93824  38 A1 00 28 */	addi r5, r1, 0x28
/* 80C93828  4B 5D 33 0C */	b __mi__4cXyzCFRC3Vec
/* 80C9382C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80C93830  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C93834  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80C93838  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C9383C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C93840  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C93844  D0 5E 06 40 */	stfs f2, 0x640(r30)
/* 80C93848  D0 3E 06 44 */	stfs f1, 0x644(r30)
/* 80C9384C  D0 1E 06 48 */	stfs f0, 0x648(r30)
/* 80C93850  7F C3 F3 78 */	mr r3, r30
/* 80C93854  4B FF F7 C1 */	bl setBaseMtx__12daObjMHole_cFv
/* 80C93858  88 1E 07 00 */	lbz r0, 0x700(r30)
/* 80C9385C  28 00 00 00 */	cmplwi r0, 0
/* 80C93860  41 82 00 2C */	beq lbl_80C9388C
/* 80C93864  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C93868  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9386C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C93870  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 80C93874  4B 5D 13 34 */	b Set__4cCcSFP8cCcD_Obj
/* 80C93878  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C9387C  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80C93880  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C93884  7F C3 F3 78 */	mr r3, r30
/* 80C93888  48 00 00 A1 */	bl effectSet__12daObjMHole_cFv
lbl_80C9388C:
/* 80C9388C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C93890  4B 37 9B 98 */	b play__14mDoExt_baseAnmFv
/* 80C93894  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C93898  4B 37 9B 90 */	b play__14mDoExt_baseAnmFv
/* 80C9389C  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80C938A0  4B 37 9B 88 */	b play__14mDoExt_baseAnmFv
/* 80C938A4  80 1E 07 04 */	lwz r0, 0x704(r30)
/* 80C938A8  28 00 00 00 */	cmplwi r0, 0
/* 80C938AC  41 82 00 30 */	beq lbl_80C938DC
/* 80C938B0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080199@ha */
/* 80C938B4  38 03 01 99 */	addi r0, r3, 0x0199 /* 0x00080199@l */
/* 80C938B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C938BC  38 7E 07 14 */	addi r3, r30, 0x714
/* 80C938C0  38 81 00 0C */	addi r4, r1, 0xc
/* 80C938C4  38 A0 00 00 */	li r5, 0
/* 80C938C8  38 C0 FF FF */	li r6, -1
/* 80C938CC  81 9E 07 24 */	lwz r12, 0x724(r30)
/* 80C938D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80C938D4  7D 89 03 A6 */	mtctr r12
/* 80C938D8  4E 80 04 21 */	bctrl 
lbl_80C938DC:
/* 80C938DC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C938E0  7C 03 07 74 */	extsb r3, r0
/* 80C938E4  4B 39 97 88 */	b dComIfGp_getReverb__Fi
/* 80C938E8  7C 65 1B 78 */	mr r5, r3
/* 80C938EC  38 7E 07 14 */	addi r3, r30, 0x714
/* 80C938F0  38 80 00 00 */	li r4, 0
/* 80C938F4  81 9E 07 24 */	lwz r12, 0x724(r30)
/* 80C938F8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C938FC  7D 89 03 A6 */	mtctr r12
/* 80C93900  4E 80 04 21 */	bctrl 
/* 80C93904  88 1E 07 00 */	lbz r0, 0x700(r30)
/* 80C93908  98 1E 07 01 */	stb r0, 0x701(r30)
/* 80C9390C  38 60 00 01 */	li r3, 1
/* 80C93910  39 61 00 50 */	addi r11, r1, 0x50
/* 80C93914  4B 6C E9 14 */	b _restgpr_29
/* 80C93918  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C9391C  7C 08 03 A6 */	mtlr r0
/* 80C93920  38 21 00 50 */	addi r1, r1, 0x50
/* 80C93924  4E 80 00 20 */	blr 
