lbl_8095F2C4:
/* 8095F2C4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8095F2C8  7C 08 02 A6 */	mflr r0
/* 8095F2CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8095F2D0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8095F2D4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8095F2D8  39 61 00 60 */	addi r11, r1, 0x60
/* 8095F2DC  4B A0 2E F8 */	b _savegpr_27
/* 8095F2E0  7C 7D 1B 78 */	mr r29, r3
/* 8095F2E4  3C 80 80 96 */	lis r4, cNullVec__6Z2Calc@ha
/* 8095F2E8  3B C4 24 18 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 8095F2EC  3C 80 80 96 */	lis r4, m__17daNpcAshB_Param_c@ha
/* 8095F2F0  3B E4 20 E4 */	addi r31, r4, m__17daNpcAshB_Param_c@l
/* 8095F2F4  A0 03 0D E8 */	lhz r0, 0xde8(r3)
/* 8095F2F8  2C 00 00 02 */	cmpwi r0, 2
/* 8095F2FC  41 82 00 74 */	beq lbl_8095F370
/* 8095F300  40 80 09 4C */	bge lbl_8095FC4C
/* 8095F304  2C 00 00 00 */	cmpwi r0, 0
/* 8095F308  41 82 00 0C */	beq lbl_8095F314
/* 8095F30C  48 00 09 40 */	b lbl_8095FC4C
/* 8095F310  48 00 09 3C */	b lbl_8095FC4C
lbl_8095F314:
/* 8095F314  38 80 00 06 */	li r4, 6
/* 8095F318  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 8095F31C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8095F320  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095F324  7D 89 03 A6 */	mtctr r12
/* 8095F328  4E 80 04 21 */	bctrl 
/* 8095F32C  7F A3 EB 78 */	mr r3, r29
/* 8095F330  38 80 00 00 */	li r4, 0
/* 8095F334  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 8095F338  38 A0 00 00 */	li r5, 0
/* 8095F33C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095F340  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095F344  7D 89 03 A6 */	mtctr r12
/* 8095F348  4E 80 04 21 */	bctrl 
/* 8095F34C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 8095F350  B0 1D 0D EA */	sth r0, 0xdea(r29)
/* 8095F354  38 00 00 00 */	li r0, 0
/* 8095F358  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 8095F35C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8095F360  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8095F364  38 00 00 02 */	li r0, 2
/* 8095F368  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 8095F36C  48 00 08 E0 */	b lbl_8095FC4C
lbl_8095F370:
/* 8095F370  88 1D 0D EE */	lbz r0, 0xdee(r29)
/* 8095F374  28 00 00 00 */	cmplwi r0, 0
/* 8095F378  41 82 02 34 */	beq lbl_8095F5AC
/* 8095F37C  A8 1D 0D E6 */	lha r0, 0xde6(r29)
/* 8095F380  2C 00 00 02 */	cmpwi r0, 2
/* 8095F384  41 82 00 0C */	beq lbl_8095F390
/* 8095F388  38 00 00 02 */	li r0, 2
/* 8095F38C  B0 1D 0D E6 */	sth r0, 0xde6(r29)
lbl_8095F390:
/* 8095F390  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 8095F394  AB 7D 0D EA */	lha r27, 0xdea(r29)
/* 8095F398  7C 00 D8 00 */	cmpw r0, r27
/* 8095F39C  40 82 00 5C */	bne lbl_8095F3F8
/* 8095F3A0  C0 5F 02 A8 */	lfs f2, 0x2a8(r31)
/* 8095F3A4  38 7F 00 00 */	addi r3, r31, 0
/* 8095F3A8  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8095F3AC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8095F3B0  EC 01 00 2A */	fadds f0, f1, f0
/* 8095F3B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8095F3B8  FC 00 00 1E */	fctiwz f0, f0
/* 8095F3BC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8095F3C0  83 61 00 34 */	lwz r27, 0x34(r1)
/* 8095F3C4  7F A3 EB 78 */	mr r3, r29
/* 8095F3C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8095F3CC  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 8095F3D0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095F3D4  4B 6B B3 C8 */	b fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8095F3D8  7F 60 07 34 */	extsh r0, r27
/* 8095F3DC  7C 03 00 00 */	cmpw r3, r0
/* 8095F3E0  40 81 01 9C */	ble lbl_8095F57C
/* 8095F3E4  7F A3 EB 78 */	mr r3, r29
/* 8095F3E8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095F3EC  4B 6B B3 24 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8095F3F0  B0 7D 0D EA */	sth r3, 0xdea(r29)
/* 8095F3F4  48 00 01 88 */	b lbl_8095F57C
lbl_8095F3F8:
/* 8095F3F8  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 8095F3FC  2C 03 00 00 */	cmpwi r3, 0
/* 8095F400  40 82 00 D0 */	bne lbl_8095F4D0
/* 8095F404  C0 5F 02 AC */	lfs f2, 0x2ac(r31)
/* 8095F408  7C 00 D8 50 */	subf r0, r0, r27
/* 8095F40C  7C 00 07 34 */	extsh r0, r0
/* 8095F410  C8 3F 02 C8 */	lfd f1, 0x2c8(r31)
/* 8095F414  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8095F418  90 01 00 34 */	stw r0, 0x34(r1)
/* 8095F41C  3C 00 43 30 */	lis r0, 0x4330
/* 8095F420  90 01 00 30 */	stw r0, 0x30(r1)
/* 8095F424  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8095F428  EC 00 08 28 */	fsubs f0, f0, f1
/* 8095F42C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8095F430  FC 00 02 10 */	fabs f0, f0
/* 8095F434  FC 00 00 18 */	frsp f0, f0
/* 8095F438  FC 00 00 1E */	fctiwz f0, f0
/* 8095F43C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8095F440  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8095F444  2C 00 00 28 */	cmpwi r0, 0x28
/* 8095F448  40 81 00 40 */	ble lbl_8095F488
/* 8095F44C  7F A3 EB 78 */	mr r3, r29
/* 8095F450  38 80 00 06 */	li r4, 6
/* 8095F454  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 8095F458  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095F45C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095F460  7D 89 03 A6 */	mtctr r12
/* 8095F464  4E 80 04 21 */	bctrl 
/* 8095F468  7F A3 EB 78 */	mr r3, r29
/* 8095F46C  38 80 00 0A */	li r4, 0xa
/* 8095F470  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 8095F474  38 A0 00 00 */	li r5, 0
/* 8095F478  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095F47C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095F480  7D 89 03 A6 */	mtctr r12
/* 8095F484  4E 80 04 21 */	bctrl 
lbl_8095F488:
/* 8095F488  B3 7D 09 96 */	sth r27, 0x996(r29)
/* 8095F48C  38 00 00 00 */	li r0, 0
/* 8095F490  90 1D 09 68 */	stw r0, 0x968(r29)
/* 8095F494  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 8095F498  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 8095F49C  7C 03 00 00 */	cmpw r3, r0
/* 8095F4A0  40 82 00 10 */	bne lbl_8095F4B0
/* 8095F4A4  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 8095F4A8  38 03 00 01 */	addi r0, r3, 1
/* 8095F4AC  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_8095F4B0:
/* 8095F4B0  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 8095F4B4  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8095F4B8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095F4BC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8095F4C0  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 8095F4C4  38 03 00 01 */	addi r0, r3, 1
/* 8095F4C8  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 8095F4CC  48 00 00 60 */	b lbl_8095F52C
lbl_8095F4D0:
/* 8095F4D0  2C 03 00 01 */	cmpwi r3, 1
/* 8095F4D4  40 82 00 58 */	bne lbl_8095F52C
/* 8095F4D8  7F A3 EB 78 */	mr r3, r29
/* 8095F4DC  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 8095F4E0  C0 3F 02 B0 */	lfs f1, 0x2b0(r31)
/* 8095F4E4  38 A0 00 00 */	li r5, 0
/* 8095F4E8  4B 7F 4A 0C */	b turn__8daNpcF_cFsfi
/* 8095F4EC  2C 03 00 00 */	cmpwi r3, 0
/* 8095F4F0  41 82 00 2C */	beq lbl_8095F51C
/* 8095F4F4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095F4F8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8095F4FC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095F500  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 8095F504  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095F508  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 8095F50C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 8095F510  38 03 00 01 */	addi r0, r3, 1
/* 8095F514  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 8095F518  48 00 00 14 */	b lbl_8095F52C
lbl_8095F51C:
/* 8095F51C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095F520  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8095F524  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095F528  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_8095F52C:
/* 8095F52C  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 8095F530  2C 00 00 01 */	cmpwi r0, 1
/* 8095F534  40 81 00 48 */	ble lbl_8095F57C
/* 8095F538  7F A3 EB 78 */	mr r3, r29
/* 8095F53C  38 80 00 06 */	li r4, 6
/* 8095F540  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 8095F544  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095F548  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095F54C  7D 89 03 A6 */	mtctr r12
/* 8095F550  4E 80 04 21 */	bctrl 
/* 8095F554  7F A3 EB 78 */	mr r3, r29
/* 8095F558  38 80 00 00 */	li r4, 0
/* 8095F55C  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 8095F560  38 A0 00 00 */	li r5, 0
/* 8095F564  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095F568  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095F56C  7D 89 03 A6 */	mtctr r12
/* 8095F570  4E 80 04 21 */	bctrl 
/* 8095F574  38 00 00 00 */	li r0, 0
/* 8095F578  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_8095F57C:
/* 8095F57C  7F A3 EB 78 */	mr r3, r29
/* 8095F580  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8095F584  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8095F588  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8095F58C  4B 6B B3 D8 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8095F590  38 7F 00 00 */	addi r3, r31, 0
/* 8095F594  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 8095F598  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8095F59C  40 81 03 44 */	ble lbl_8095F8E0
/* 8095F5A0  38 00 00 00 */	li r0, 0
/* 8095F5A4  98 1D 0D EE */	stb r0, 0xdee(r29)
/* 8095F5A8  48 00 03 38 */	b lbl_8095F8E0
lbl_8095F5AC:
/* 8095F5AC  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 8095F5B0  4B 7F 11 3C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 8095F5B4  28 03 00 00 */	cmplwi r3, 0
/* 8095F5B8  41 82 00 B0 */	beq lbl_8095F668
/* 8095F5BC  7F A3 EB 78 */	mr r3, r29
/* 8095F5C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8095F5C4  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 8095F5C8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095F5CC  38 BF 00 00 */	addi r5, r31, 0
/* 8095F5D0  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8095F5D4  4B 7F 44 1C */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 8095F5D8  2C 03 00 00 */	cmpwi r3, 0
/* 8095F5DC  40 82 00 14 */	bne lbl_8095F5F0
/* 8095F5E0  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 8095F5E4  4B 7F 10 FC */	b remove__18daNpcF_ActorMngr_cFv
/* 8095F5E8  3B 60 00 00 */	li r27, 0
/* 8095F5EC  48 00 00 68 */	b lbl_8095F654
lbl_8095F5F0:
/* 8095F5F0  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 8095F5F4  4B 7F 10 F8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 8095F5F8  28 03 00 00 */	cmplwi r3, 0
/* 8095F5FC  40 82 00 20 */	bne lbl_8095F61C
/* 8095F600  7F A3 EB 78 */	mr r3, r29
/* 8095F604  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095F608  7F A5 EB 78 */	mr r5, r29
/* 8095F60C  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 8095F610  4B 7F 45 CC */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 8095F614  7C 7B 1B 78 */	mr r27, r3
/* 8095F618  48 00 00 1C */	b lbl_8095F634
lbl_8095F61C:
/* 8095F61C  7F A3 EB 78 */	mr r3, r29
/* 8095F620  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095F624  7F A5 EB 78 */	mr r5, r29
/* 8095F628  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 8095F62C  4B 7F 45 B0 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 8095F630  7C 7B 1B 78 */	mr r27, r3
lbl_8095F634:
/* 8095F634  2C 1B 00 00 */	cmpwi r27, 0
/* 8095F638  41 82 00 14 */	beq lbl_8095F64C
/* 8095F63C  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 8095F640  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095F644  4B 7F 10 78 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 8095F648  48 00 00 0C */	b lbl_8095F654
lbl_8095F64C:
/* 8095F64C  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 8095F650  4B 7F 10 90 */	b remove__18daNpcF_ActorMngr_cFv
lbl_8095F654:
/* 8095F654  2C 1B 00 00 */	cmpwi r27, 0
/* 8095F658  40 82 00 B8 */	bne lbl_8095F710
/* 8095F65C  38 00 00 00 */	li r0, 0
/* 8095F660  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 8095F664  48 00 00 AC */	b lbl_8095F710
lbl_8095F668:
/* 8095F668  7F A3 EB 78 */	mr r3, r29
/* 8095F66C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8095F670  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 8095F674  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095F678  38 BF 00 00 */	addi r5, r31, 0
/* 8095F67C  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8095F680  4B 7F 43 70 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 8095F684  2C 03 00 00 */	cmpwi r3, 0
/* 8095F688  40 82 00 14 */	bne lbl_8095F69C
/* 8095F68C  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 8095F690  4B 7F 10 50 */	b remove__18daNpcF_ActorMngr_cFv
/* 8095F694  3B 60 00 00 */	li r27, 0
/* 8095F698  48 00 00 68 */	b lbl_8095F700
lbl_8095F69C:
/* 8095F69C  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 8095F6A0  4B 7F 10 4C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 8095F6A4  28 03 00 00 */	cmplwi r3, 0
/* 8095F6A8  40 82 00 20 */	bne lbl_8095F6C8
/* 8095F6AC  7F A3 EB 78 */	mr r3, r29
/* 8095F6B0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095F6B4  7F A5 EB 78 */	mr r5, r29
/* 8095F6B8  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 8095F6BC  4B 7F 45 20 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 8095F6C0  7C 7B 1B 78 */	mr r27, r3
/* 8095F6C4  48 00 00 1C */	b lbl_8095F6E0
lbl_8095F6C8:
/* 8095F6C8  7F A3 EB 78 */	mr r3, r29
/* 8095F6CC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095F6D0  7F A5 EB 78 */	mr r5, r29
/* 8095F6D4  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 8095F6D8  4B 7F 45 04 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 8095F6DC  7C 7B 1B 78 */	mr r27, r3
lbl_8095F6E0:
/* 8095F6E0  2C 1B 00 00 */	cmpwi r27, 0
/* 8095F6E4  41 82 00 14 */	beq lbl_8095F6F8
/* 8095F6E8  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 8095F6EC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8095F6F0  4B 7F 0F CC */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 8095F6F4  48 00 00 0C */	b lbl_8095F700
lbl_8095F6F8:
/* 8095F6F8  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 8095F6FC  4B 7F 0F E4 */	b remove__18daNpcF_ActorMngr_cFv
lbl_8095F700:
/* 8095F700  2C 1B 00 00 */	cmpwi r27, 0
/* 8095F704  41 82 00 0C */	beq lbl_8095F710
/* 8095F708  38 00 00 00 */	li r0, 0
/* 8095F70C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_8095F710:
/* 8095F710  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 8095F714  4B 7F 0F D8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 8095F718  28 03 00 00 */	cmplwi r3, 0
/* 8095F71C  41 82 00 1C */	beq lbl_8095F738
/* 8095F720  A8 1D 0D E6 */	lha r0, 0xde6(r29)
/* 8095F724  2C 00 00 02 */	cmpwi r0, 2
/* 8095F728  41 82 01 B8 */	beq lbl_8095F8E0
/* 8095F72C  38 00 00 02 */	li r0, 2
/* 8095F730  B0 1D 0D E6 */	sth r0, 0xde6(r29)
/* 8095F734  48 00 01 AC */	b lbl_8095F8E0
lbl_8095F738:
/* 8095F738  A8 1D 0D E6 */	lha r0, 0xde6(r29)
/* 8095F73C  2C 00 00 00 */	cmpwi r0, 0
/* 8095F740  41 82 00 0C */	beq lbl_8095F74C
/* 8095F744  38 00 00 00 */	li r0, 0
/* 8095F748  B0 1D 0D E6 */	sth r0, 0xde6(r29)
lbl_8095F74C:
/* 8095F74C  AB 7D 04 B6 */	lha r27, 0x4b6(r29)
/* 8095F750  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 8095F754  7C 1B 00 00 */	cmpw r27, r0
/* 8095F758  41 82 01 88 */	beq lbl_8095F8E0
/* 8095F75C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 8095F760  2C 03 00 00 */	cmpwi r3, 0
/* 8095F764  40 82 00 D0 */	bne lbl_8095F834
/* 8095F768  C0 5F 02 AC */	lfs f2, 0x2ac(r31)
/* 8095F76C  7C 00 D8 50 */	subf r0, r0, r27
/* 8095F770  7C 00 07 34 */	extsh r0, r0
/* 8095F774  C8 3F 02 C8 */	lfd f1, 0x2c8(r31)
/* 8095F778  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8095F77C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8095F780  3C 00 43 30 */	lis r0, 0x4330
/* 8095F784  90 01 00 38 */	stw r0, 0x38(r1)
/* 8095F788  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8095F78C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8095F790  EC 02 00 32 */	fmuls f0, f2, f0
/* 8095F794  FC 00 02 10 */	fabs f0, f0
/* 8095F798  FC 00 00 18 */	frsp f0, f0
/* 8095F79C  FC 00 00 1E */	fctiwz f0, f0
/* 8095F7A0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8095F7A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8095F7A8  2C 00 00 28 */	cmpwi r0, 0x28
/* 8095F7AC  40 81 00 40 */	ble lbl_8095F7EC
/* 8095F7B0  7F A3 EB 78 */	mr r3, r29
/* 8095F7B4  38 80 00 06 */	li r4, 6
/* 8095F7B8  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 8095F7BC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095F7C0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095F7C4  7D 89 03 A6 */	mtctr r12
/* 8095F7C8  4E 80 04 21 */	bctrl 
/* 8095F7CC  7F A3 EB 78 */	mr r3, r29
/* 8095F7D0  38 80 00 0A */	li r4, 0xa
/* 8095F7D4  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 8095F7D8  38 A0 00 00 */	li r5, 0
/* 8095F7DC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095F7E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095F7E4  7D 89 03 A6 */	mtctr r12
/* 8095F7E8  4E 80 04 21 */	bctrl 
lbl_8095F7EC:
/* 8095F7EC  B3 7D 09 96 */	sth r27, 0x996(r29)
/* 8095F7F0  38 00 00 00 */	li r0, 0
/* 8095F7F4  90 1D 09 68 */	stw r0, 0x968(r29)
/* 8095F7F8  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 8095F7FC  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 8095F800  7C 03 00 00 */	cmpw r3, r0
/* 8095F804  40 82 00 10 */	bne lbl_8095F814
/* 8095F808  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 8095F80C  38 03 00 01 */	addi r0, r3, 1
/* 8095F810  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_8095F814:
/* 8095F814  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 8095F818  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8095F81C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095F820  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8095F824  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 8095F828  38 03 00 01 */	addi r0, r3, 1
/* 8095F82C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 8095F830  48 00 00 60 */	b lbl_8095F890
lbl_8095F834:
/* 8095F834  2C 03 00 01 */	cmpwi r3, 1
/* 8095F838  40 82 00 58 */	bne lbl_8095F890
/* 8095F83C  7F A3 EB 78 */	mr r3, r29
/* 8095F840  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 8095F844  C0 3F 02 B0 */	lfs f1, 0x2b0(r31)
/* 8095F848  38 A0 00 00 */	li r5, 0
/* 8095F84C  4B 7F 46 A8 */	b turn__8daNpcF_cFsfi
/* 8095F850  2C 03 00 00 */	cmpwi r3, 0
/* 8095F854  41 82 00 2C */	beq lbl_8095F880
/* 8095F858  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095F85C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8095F860  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095F864  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 8095F868  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095F86C  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 8095F870  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 8095F874  38 03 00 01 */	addi r0, r3, 1
/* 8095F878  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 8095F87C  48 00 00 14 */	b lbl_8095F890
lbl_8095F880:
/* 8095F880  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095F884  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8095F888  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8095F88C  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_8095F890:
/* 8095F890  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 8095F894  2C 00 00 01 */	cmpwi r0, 1
/* 8095F898  40 81 00 48 */	ble lbl_8095F8E0
/* 8095F89C  7F A3 EB 78 */	mr r3, r29
/* 8095F8A0  38 80 00 06 */	li r4, 6
/* 8095F8A4  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 8095F8A8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095F8AC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095F8B0  7D 89 03 A6 */	mtctr r12
/* 8095F8B4  4E 80 04 21 */	bctrl 
/* 8095F8B8  7F A3 EB 78 */	mr r3, r29
/* 8095F8BC  38 80 00 00 */	li r4, 0
/* 8095F8C0  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 8095F8C4  38 A0 00 00 */	li r5, 0
/* 8095F8C8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095F8CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095F8D0  7D 89 03 A6 */	mtctr r12
/* 8095F8D4  4E 80 04 21 */	bctrl 
/* 8095F8D8  38 00 00 00 */	li r0, 0
/* 8095F8DC  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_8095F8E0:
/* 8095F8E0  38 60 01 4F */	li r3, 0x14f
/* 8095F8E4  4B 7F 5D 50 */	b daNpcF_chkEvtBit__FUl
/* 8095F8E8  2C 03 00 00 */	cmpwi r3, 0
/* 8095F8EC  40 82 00 78 */	bne lbl_8095F964
/* 8095F8F0  88 1D 0D ED */	lbz r0, 0xded(r29)
/* 8095F8F4  28 00 00 00 */	cmplwi r0, 0
/* 8095F8F8  40 82 00 6C */	bne lbl_8095F964
/* 8095F8FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8095F900  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8095F904  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8095F908  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8095F90C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8095F910  40 82 00 54 */	bne lbl_8095F964
/* 8095F914  C8 3F 02 B8 */	lfd f1, 0x2b8(r31)
/* 8095F918  C8 5F 02 C0 */	lfd f2, 0x2c0(r31)
/* 8095F91C  4B A0 CE 64 */	b pow
/* 8095F920  FF E0 08 18 */	frsp f31, f1
/* 8095F924  7F A3 EB 78 */	mr r3, r29
/* 8095F928  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8095F92C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8095F930  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8095F934  4B 6B B1 60 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8095F938  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8095F93C  4C 40 13 82 */	cror 2, 0, 2
/* 8095F940  40 82 00 24 */	bne lbl_8095F964
/* 8095F944  38 60 00 0B */	li r3, 0xb
/* 8095F948  4B 7F 5D EC */	b daNpcF_offTmpBit__FUl
/* 8095F94C  38 60 00 0C */	li r3, 0xc
/* 8095F950  4B 7F 5D E4 */	b daNpcF_offTmpBit__FUl
/* 8095F954  38 60 00 0D */	li r3, 0xd
/* 8095F958  4B 7F 5D DC */	b daNpcF_offTmpBit__FUl
/* 8095F95C  38 00 00 01 */	li r0, 1
/* 8095F960  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
lbl_8095F964:
/* 8095F964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8095F968  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8095F96C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8095F970  28 00 00 00 */	cmplwi r0, 0
/* 8095F974  41 82 02 78 */	beq lbl_8095FBEC
/* 8095F978  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 8095F97C  28 00 00 01 */	cmplwi r0, 1
/* 8095F980  40 82 01 C4 */	bne lbl_8095FB44
/* 8095F984  3B 83 4E C8 */	addi r28, r3, 0x4ec8
/* 8095F988  38 00 00 00 */	li r0, 0
/* 8095F98C  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 8095F990  28 04 00 01 */	cmplwi r4, 1
/* 8095F994  41 82 00 0C */	beq lbl_8095F9A0
/* 8095F998  28 04 00 02 */	cmplwi r4, 2
/* 8095F99C  40 82 00 08 */	bne lbl_8095F9A4
lbl_8095F9A0:
/* 8095F9A0  38 00 00 01 */	li r0, 1
lbl_8095F9A4:
/* 8095F9A4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8095F9A8  41 82 01 10 */	beq lbl_8095FAB8
/* 8095F9AC  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 8095F9B0  7F 63 DB 78 */	mr r3, r27
/* 8095F9B4  4B 6E 8E 3C */	b ChkPresentEnd__16dEvent_manager_cFv
/* 8095F9B8  2C 03 00 00 */	cmpwi r3, 0
/* 8095F9BC  40 82 00 0C */	bne lbl_8095F9C8
/* 8095F9C0  38 60 00 01 */	li r3, 1
/* 8095F9C4  48 00 02 8C */	b lbl_8095FC50
lbl_8095F9C8:
/* 8095F9C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8095F9CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8095F9D0  88 03 4F B6 */	lbz r0, 0x4fb6(r3)
/* 8095F9D4  28 00 00 91 */	cmplwi r0, 0x91
/* 8095F9D8  40 82 00 98 */	bne lbl_8095FA70
/* 8095F9DC  38 00 01 F8 */	li r0, 0x1f8
/* 8095F9E0  B0 1D 0D E4 */	sth r0, 0xde4(r29)
/* 8095F9E4  80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 8095F9E8  80 1E 01 DC */	lwz r0, 0x1dc(r30)
/* 8095F9EC  90 61 00 20 */	stw r3, 0x20(r1)
/* 8095F9F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095F9F4  80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 8095F9F8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8095F9FC  38 00 00 03 */	li r0, 3
/* 8095FA00  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 8095FA04  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 8095FA08  4B A0 26 10 */	b __ptmf_test
/* 8095FA0C  2C 03 00 00 */	cmpwi r3, 0
/* 8095FA10  41 82 00 18 */	beq lbl_8095FA28
/* 8095FA14  7F A3 EB 78 */	mr r3, r29
/* 8095FA18  38 80 00 00 */	li r4, 0
/* 8095FA1C  39 9D 0D C4 */	addi r12, r29, 0xdc4
/* 8095FA20  4B A0 26 64 */	b __ptmf_scall
/* 8095FA24  60 00 00 00 */	nop 
lbl_8095FA28:
/* 8095FA28  38 00 00 00 */	li r0, 0
/* 8095FA2C  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 8095FA30  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8095FA34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8095FA38  90 7D 0D C4 */	stw r3, 0xdc4(r29)
/* 8095FA3C  90 1D 0D C8 */	stw r0, 0xdc8(r29)
/* 8095FA40  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8095FA44  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 8095FA48  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 8095FA4C  4B A0 25 CC */	b __ptmf_test
/* 8095FA50  2C 03 00 00 */	cmpwi r3, 0
/* 8095FA54  41 82 01 F8 */	beq lbl_8095FC4C
/* 8095FA58  7F A3 EB 78 */	mr r3, r29
/* 8095FA5C  38 80 00 00 */	li r4, 0
/* 8095FA60  39 9D 0D C4 */	addi r12, r29, 0xdc4
/* 8095FA64  4B A0 26 20 */	b __ptmf_scall
/* 8095FA68  60 00 00 00 */	nop 
/* 8095FA6C  48 00 01 E0 */	b lbl_8095FC4C
lbl_8095FA70:
/* 8095FA70  7F 63 DB 78 */	mr r3, r27
/* 8095FA74  7F A4 EB 78 */	mr r4, r29
/* 8095FA78  3C A0 80 96 */	lis r5, struct_809623E8+0x0@ha
/* 8095FA7C  38 A5 23 E8 */	addi r5, r5, struct_809623E8+0x0@l
/* 8095FA80  38 A5 00 11 */	addi r5, r5, 0x11
/* 8095FA84  38 C0 00 FF */	li r6, 0xff
/* 8095FA88  4B 6E 7C D0 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8095FA8C  7C 7B 1B 78 */	mr r27, r3
/* 8095FA90  7F 83 E3 78 */	mr r3, r28
/* 8095FA94  7F A4 EB 78 */	mr r4, r29
/* 8095FA98  4B 6E 2A 80 */	b reset__14dEvt_control_cFPv
/* 8095FA9C  7F A3 EB 78 */	mr r3, r29
/* 8095FAA0  7F 64 DB 78 */	mr r4, r27
/* 8095FAA4  38 A0 00 01 */	li r5, 1
/* 8095FAA8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8095FAAC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8095FAB0  4B 6B BB 34 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 8095FAB4  48 00 01 98 */	b lbl_8095FC4C
lbl_8095FAB8:
/* 8095FAB8  80 7E 01 E4 */	lwz r3, 0x1e4(r30)
/* 8095FABC  80 1E 01 E8 */	lwz r0, 0x1e8(r30)
/* 8095FAC0  90 61 00 14 */	stw r3, 0x14(r1)
/* 8095FAC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8095FAC8  80 1E 01 EC */	lwz r0, 0x1ec(r30)
/* 8095FACC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8095FAD0  38 00 00 03 */	li r0, 3
/* 8095FAD4  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 8095FAD8  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 8095FADC  4B A0 25 3C */	b __ptmf_test
/* 8095FAE0  2C 03 00 00 */	cmpwi r3, 0
/* 8095FAE4  41 82 00 18 */	beq lbl_8095FAFC
/* 8095FAE8  7F A3 EB 78 */	mr r3, r29
/* 8095FAEC  38 80 00 00 */	li r4, 0
/* 8095FAF0  39 9D 0D C4 */	addi r12, r29, 0xdc4
/* 8095FAF4  4B A0 25 90 */	b __ptmf_scall
/* 8095FAF8  60 00 00 00 */	nop 
lbl_8095FAFC:
/* 8095FAFC  38 00 00 00 */	li r0, 0
/* 8095FB00  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 8095FB04  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8095FB08  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8095FB0C  90 7D 0D C4 */	stw r3, 0xdc4(r29)
/* 8095FB10  90 1D 0D C8 */	stw r0, 0xdc8(r29)
/* 8095FB14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8095FB18  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 8095FB1C  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 8095FB20  4B A0 24 F8 */	b __ptmf_test
/* 8095FB24  2C 03 00 00 */	cmpwi r3, 0
/* 8095FB28  41 82 01 24 */	beq lbl_8095FC4C
/* 8095FB2C  7F A3 EB 78 */	mr r3, r29
/* 8095FB30  38 80 00 00 */	li r4, 0
/* 8095FB34  39 9D 0D C4 */	addi r12, r29, 0xdc4
/* 8095FB38  4B A0 25 4C */	b __ptmf_scall
/* 8095FB3C  60 00 00 00 */	nop 
/* 8095FB40  48 00 01 0C */	b lbl_8095FC4C
lbl_8095FB44:
/* 8095FB44  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8095FB48  80 9E 01 88 */	lwz r4, 0x188(r30)
/* 8095FB4C  38 A0 00 00 */	li r5, 0
/* 8095FB50  38 C0 00 00 */	li r6, 0
/* 8095FB54  4B 6E 7F C8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8095FB58  2C 03 FF FF */	cmpwi r3, -1
/* 8095FB5C  41 82 00 F0 */	beq lbl_8095FC4C
/* 8095FB60  80 7E 01 F0 */	lwz r3, 0x1f0(r30)
/* 8095FB64  80 1E 01 F4 */	lwz r0, 0x1f4(r30)
/* 8095FB68  90 61 00 08 */	stw r3, 8(r1)
/* 8095FB6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8095FB70  80 1E 01 F8 */	lwz r0, 0x1f8(r30)
/* 8095FB74  90 01 00 10 */	stw r0, 0x10(r1)
/* 8095FB78  38 00 00 03 */	li r0, 3
/* 8095FB7C  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 8095FB80  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 8095FB84  4B A0 24 94 */	b __ptmf_test
/* 8095FB88  2C 03 00 00 */	cmpwi r3, 0
/* 8095FB8C  41 82 00 18 */	beq lbl_8095FBA4
/* 8095FB90  7F A3 EB 78 */	mr r3, r29
/* 8095FB94  38 80 00 00 */	li r4, 0
/* 8095FB98  39 9D 0D C4 */	addi r12, r29, 0xdc4
/* 8095FB9C  4B A0 24 E8 */	b __ptmf_scall
/* 8095FBA0  60 00 00 00 */	nop 
lbl_8095FBA4:
/* 8095FBA4  38 00 00 00 */	li r0, 0
/* 8095FBA8  B0 1D 0D E8 */	sth r0, 0xde8(r29)
/* 8095FBAC  80 61 00 08 */	lwz r3, 8(r1)
/* 8095FBB0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8095FBB4  90 7D 0D C4 */	stw r3, 0xdc4(r29)
/* 8095FBB8  90 1D 0D C8 */	stw r0, 0xdc8(r29)
/* 8095FBBC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8095FBC0  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 8095FBC4  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 8095FBC8  4B A0 24 50 */	b __ptmf_test
/* 8095FBCC  2C 03 00 00 */	cmpwi r3, 0
/* 8095FBD0  41 82 00 7C */	beq lbl_8095FC4C
/* 8095FBD4  7F A3 EB 78 */	mr r3, r29
/* 8095FBD8  38 80 00 00 */	li r4, 0
/* 8095FBDC  39 9D 0D C4 */	addi r12, r29, 0xdc4
/* 8095FBE0  4B A0 24 A4 */	b __ptmf_scall
/* 8095FBE4  60 00 00 00 */	nop 
/* 8095FBE8  48 00 00 64 */	b lbl_8095FC4C
lbl_8095FBEC:
/* 8095FBEC  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 8095FBF0  28 00 00 00 */	cmplwi r0, 0
/* 8095FBF4  41 82 00 0C */	beq lbl_8095FC00
/* 8095FBF8  80 1E 01 7C */	lwz r0, 0x17c(r30)
/* 8095FBFC  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_8095FC00:
/* 8095FC00  7F A3 EB 78 */	mr r3, r29
/* 8095FC04  88 9D 0D EC */	lbz r4, 0xdec(r29)
/* 8095FC08  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 8095FC0C  54 00 10 3A */	slwi r0, r0, 2
/* 8095FC10  38 BE 01 80 */	addi r5, r30, 0x180
/* 8095FC14  7C A5 00 2E */	lwzx r5, r5, r0
/* 8095FC18  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8095FC1C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8095FC20  38 E0 00 28 */	li r7, 0x28
/* 8095FC24  39 00 00 FF */	li r8, 0xff
/* 8095FC28  39 20 00 01 */	li r9, 1
/* 8095FC2C  4B 7F 3C 50 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
/* 8095FC30  38 60 01 4F */	li r3, 0x14f
/* 8095FC34  4B 7F 5A 00 */	b daNpcF_chkEvtBit__FUl
/* 8095FC38  2C 03 00 00 */	cmpwi r3, 0
/* 8095FC3C  41 82 00 10 */	beq lbl_8095FC4C
/* 8095FC40  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 8095FC44  60 00 00 20 */	ori r0, r0, 0x20
/* 8095FC48  B0 1D 00 FA */	sth r0, 0xfa(r29)
lbl_8095FC4C:
/* 8095FC4C  38 60 00 01 */	li r3, 1
lbl_8095FC50:
/* 8095FC50  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8095FC54  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8095FC58  39 61 00 60 */	addi r11, r1, 0x60
/* 8095FC5C  4B A0 25 C4 */	b _restgpr_27
/* 8095FC60  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8095FC64  7C 08 03 A6 */	mtlr r0
/* 8095FC68  38 21 00 70 */	addi r1, r1, 0x70
/* 8095FC6C  4E 80 00 20 */	blr 
