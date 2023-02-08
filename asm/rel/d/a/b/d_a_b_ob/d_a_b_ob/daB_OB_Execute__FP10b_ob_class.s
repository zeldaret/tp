lbl_80618650:
/* 80618650  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80618654  7C 08 02 A6 */	mflr r0
/* 80618658  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8061865C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80618660  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80618664  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80618668  4B D4 9B 59 */	bl _savegpr_22
/* 8061866C  7C 7F 1B 78 */	mr r31, r3
/* 80618670  3C 60 80 62 */	lis r3, cNullVec__6Z2Calc@ha /* 0x8061B0A4@ha */
/* 80618674  3B A3 B0 A4 */	addi r29, r3, cNullVec__6Z2Calc@l /* 0x8061B0A4@l */
/* 80618678  3C 60 80 62 */	lis r3, lit_3772@ha /* 0x8061AD84@ha */
/* 8061867C  3B C3 AD 84 */	addi r30, r3, lit_3772@l /* 0x8061AD84@l */
/* 80618680  4B 9F FC 29 */	bl cDmrNowMidnaTalk__Fv
/* 80618684  2C 03 00 00 */	cmpwi r3, 0
/* 80618688  41 82 00 0C */	beq lbl_80618694
/* 8061868C  38 60 00 01 */	li r3, 1
/* 80618690  48 00 0D 04 */	b lbl_80619394
lbl_80618694:
/* 80618694  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80618698  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8061869C  83 5B 5D AC */	lwz r26, 0x5dac(r27)
/* 806186A0  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 806186A4  38 83 0C 98 */	addi r4, r3, struct_80450C98+0x0@l /* 0x80450C98@l */
/* 806186A8  88 64 00 00 */	lbz r3, 0(r4)
/* 806186AC  28 03 00 00 */	cmplwi r3, 0
/* 806186B0  41 82 00 0C */	beq lbl_806186BC
/* 806186B4  38 03 FF FF */	addi r0, r3, -1
/* 806186B8  98 04 00 00 */	stb r0, 0(r4)
lbl_806186BC:
/* 806186BC  A8 7F 47 50 */	lha r3, 0x4750(r31)
/* 806186C0  38 03 00 01 */	addi r0, r3, 1
/* 806186C4  B0 1F 47 50 */	sth r0, 0x4750(r31)
/* 806186C8  7F E3 FB 78 */	mr r3, r31
/* 806186CC  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 806186D0  4B A0 20 41 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806186D4  B0 7F 47 6C */	sth r3, 0x476c(r31)
/* 806186D8  7F E3 FB 78 */	mr r3, r31
/* 806186DC  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 806186E0  4B A0 20 59 */	bl fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806186E4  7C 03 00 D0 */	neg r0, r3
/* 806186E8  B0 1F 47 6E */	sth r0, 0x476e(r31)
/* 806186EC  38 60 00 00 */	li r3, 0
/* 806186F0  38 00 00 06 */	li r0, 6
/* 806186F4  7C 09 03 A6 */	mtctr r0
lbl_806186F8:
/* 806186F8  38 A3 47 78 */	addi r5, r3, 0x4778
/* 806186FC  7C 9F 2A AE */	lhax r4, r31, r5
/* 80618700  2C 04 00 00 */	cmpwi r4, 0
/* 80618704  41 82 00 0C */	beq lbl_80618710
/* 80618708  38 04 FF FF */	addi r0, r4, -1
/* 8061870C  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80618710:
/* 80618710  38 63 00 02 */	addi r3, r3, 2
/* 80618714  42 00 FF E4 */	bdnz lbl_806186F8
/* 80618718  A8 7F 47 84 */	lha r3, 0x4784(r31)
/* 8061871C  2C 03 00 00 */	cmpwi r3, 0
/* 80618720  41 82 00 0C */	beq lbl_8061872C
/* 80618724  38 03 FF FF */	addi r0, r3, -1
/* 80618728  B0 1F 47 84 */	sth r0, 0x4784(r31)
lbl_8061872C:
/* 8061872C  A8 7F 47 94 */	lha r3, 0x4794(r31)
/* 80618730  2C 03 00 00 */	cmpwi r3, 0
/* 80618734  41 82 00 0C */	beq lbl_80618740
/* 80618738  38 03 FF FF */	addi r0, r3, -1
/* 8061873C  B0 1F 47 94 */	sth r0, 0x4794(r31)
lbl_80618740:
/* 80618740  88 1F 47 4D */	lbz r0, 0x474d(r31)
/* 80618744  7C 00 07 75 */	extsb. r0, r0
/* 80618748  41 82 01 08 */	beq lbl_80618850
/* 8061874C  38 00 00 3C */	li r0, 0x3c
/* 80618750  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80618754  7F E3 FB 78 */	mr r3, r31
/* 80618758  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 8061875C  4B A0 20 85 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80618760  D0 3F 47 70 */	stfs f1, 0x4770(r31)
/* 80618764  7F E3 FB 78 */	mr r3, r31
/* 80618768  4B FF A7 6D */	bl fish_damage_check__FP10b_ob_class
/* 8061876C  7F E3 FB 78 */	mr r3, r31
/* 80618770  4B FF C4 01 */	bl fish_move__FP10b_ob_class
/* 80618774  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 80618778  7C 00 07 75 */	extsb. r0, r0
/* 8061877C  41 82 00 18 */	beq lbl_80618794
/* 80618780  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80618784  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80618788  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 8061878C  4B C5 72 F5 */	bl cLib_addCalc0__FPfff
/* 80618790  48 00 00 0C */	b lbl_8061879C
lbl_80618794:
/* 80618794  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80618798  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
lbl_8061879C:
/* 8061879C  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 806187A0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 806187A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806187A8  40 81 00 5C */	ble lbl_80618804
/* 806187AC  3C 60 80 62 */	lis r3, l_HIO@ha /* 0x8061B514@ha */
/* 806187B0  38 A3 B5 14 */	addi r5, r3, l_HIO@l /* 0x8061B514@l */
/* 806187B4  A8 05 00 14 */	lha r0, 0x14(r5)
/* 806187B8  98 01 00 2C */	stb r0, 0x2c(r1)
/* 806187BC  A8 05 00 16 */	lha r0, 0x16(r5)
/* 806187C0  98 01 00 2D */	stb r0, 0x2d(r1)
/* 806187C4  A8 05 00 18 */	lha r0, 0x18(r5)
/* 806187C8  98 01 00 2E */	stb r0, 0x2e(r1)
/* 806187CC  38 00 00 FF */	li r0, 0xff
/* 806187D0  98 01 00 2F */	stb r0, 0x2f(r1)
/* 806187D4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806187D8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806187DC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806187E0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806187E4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806187E8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806187EC  38 61 00 3C */	addi r3, r1, 0x3c
/* 806187F0  38 81 00 2C */	addi r4, r1, 0x2c
/* 806187F4  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 806187F8  EC 20 00 72 */	fmuls f1, f0, f1
/* 806187FC  38 A0 00 00 */	li r5, 0
/* 80618800  4B B9 15 61 */	bl dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_80618804:
/* 80618804  38 60 00 09 */	li r3, 9
/* 80618808  38 80 FF FF */	li r4, -1
/* 8061880C  4B A1 53 59 */	bl dComIfGs_isOneZoneSwitch__Fii
/* 80618810  2C 03 00 00 */	cmpwi r3, 0
/* 80618814  40 82 00 3C */	bne lbl_80618850
/* 80618818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8061881C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80618820  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80618824  28 00 00 00 */	cmplwi r0, 0
/* 80618828  40 82 00 28 */	bne lbl_80618850
/* 8061882C  A8 7F 5D 3C */	lha r3, 0x5d3c(r31)
/* 80618830  38 03 00 01 */	addi r0, r3, 1
/* 80618834  B0 1F 5D 3C */	sth r0, 0x5d3c(r31)
/* 80618838  A8 1F 5D 3C */	lha r0, 0x5d3c(r31)
/* 8061883C  2C 00 02 58 */	cmpwi r0, 0x258
/* 80618840  40 82 00 10 */	bne lbl_80618850
/* 80618844  38 60 00 0B */	li r3, 0xb
/* 80618848  38 80 FF FF */	li r4, -1
/* 8061884C  4B A1 52 51 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_80618850:
/* 80618850  88 1F 47 4C */	lbz r0, 0x474c(r31)
/* 80618854  7C 00 07 75 */	extsb. r0, r0
/* 80618858  41 82 04 34 */	beq lbl_80618C8C
/* 8061885C  A8 1F 47 52 */	lha r0, 0x4752(r31)
/* 80618860  2C 00 00 00 */	cmpwi r0, 0
/* 80618864  40 82 00 5C */	bne lbl_806188C0
/* 80618868  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 8061886C  C0 1E 02 EC */	lfs f0, 0x2ec(r30)
/* 80618870  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80618874  40 81 00 40 */	ble lbl_806188B4
/* 80618878  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8061887C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80618880  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80618884  28 00 00 00 */	cmplwi r0, 0
/* 80618888  40 82 00 10 */	bne lbl_80618898
/* 8061888C  A8 7F 5D 3C */	lha r3, 0x5d3c(r31)
/* 80618890  38 03 00 01 */	addi r0, r3, 1
/* 80618894  B0 1F 5D 3C */	sth r0, 0x5d3c(r31)
lbl_80618898:
/* 80618898  A8 1F 5D 3C */	lha r0, 0x5d3c(r31)
/* 8061889C  2C 00 01 2C */	cmpwi r0, 0x12c
/* 806188A0  40 82 00 A0 */	bne lbl_80618940
/* 806188A4  38 60 00 04 */	li r3, 4
/* 806188A8  38 80 FF FF */	li r4, -1
/* 806188AC  4B A1 51 F1 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 806188B0  48 00 00 90 */	b lbl_80618940
lbl_806188B4:
/* 806188B4  38 00 00 00 */	li r0, 0
/* 806188B8  B0 1F 5D 3C */	sth r0, 0x5d3c(r31)
/* 806188BC  48 00 00 84 */	b lbl_80618940
lbl_806188C0:
/* 806188C0  38 60 00 05 */	li r3, 5
/* 806188C4  38 80 FF FF */	li r4, -1
/* 806188C8  4B A1 52 9D */	bl dComIfGs_isOneZoneSwitch__Fii
/* 806188CC  2C 03 00 00 */	cmpwi r3, 0
/* 806188D0  41 82 00 70 */	beq lbl_80618940
/* 806188D4  38 60 00 07 */	li r3, 7
/* 806188D8  38 80 FF FF */	li r4, -1
/* 806188DC  4B A1 52 89 */	bl dComIfGs_isOneZoneSwitch__Fii
/* 806188E0  2C 03 00 00 */	cmpwi r3, 0
/* 806188E4  40 82 00 5C */	bne lbl_80618940
/* 806188E8  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 806188EC  C0 1E 02 F0 */	lfs f0, 0x2f0(r30)
/* 806188F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806188F4  40 81 00 1C */	ble lbl_80618910
/* 806188F8  38 60 00 06 */	li r3, 6
/* 806188FC  38 80 FF FF */	li r4, -1
/* 80618900  4B A1 51 9D */	bl dComIfGs_onOneZoneSwitch__Fii
/* 80618904  38 00 00 00 */	li r0, 0
/* 80618908  B0 1F 5D 3C */	sth r0, 0x5d3c(r31)
/* 8061890C  48 00 00 34 */	b lbl_80618940
lbl_80618910:
/* 80618910  38 60 00 06 */	li r3, 6
/* 80618914  38 80 FF FF */	li r4, -1
/* 80618918  4B A1 51 E9 */	bl dComIfGs_offOneZoneSwitch__Fii
/* 8061891C  A8 7F 5D 3C */	lha r3, 0x5d3c(r31)
/* 80618920  38 03 00 01 */	addi r0, r3, 1
/* 80618924  B0 1F 5D 3C */	sth r0, 0x5d3c(r31)
/* 80618928  A8 1F 5D 3C */	lha r0, 0x5d3c(r31)
/* 8061892C  2C 00 02 58 */	cmpwi r0, 0x258
/* 80618930  40 82 00 10 */	bne lbl_80618940
/* 80618934  38 60 00 0A */	li r3, 0xa
/* 80618938  38 80 FF FF */	li r4, -1
/* 8061893C  4B A1 51 61 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_80618940:
/* 80618940  38 00 00 04 */	li r0, 4
/* 80618944  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80618948  7F E3 FB 78 */	mr r3, r31
/* 8061894C  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80618950  4B A0 20 15 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80618954  D0 3F 47 70 */	stfs f1, 0x4770(r31)
/* 80618958  7F E3 FB 78 */	mr r3, r31
/* 8061895C  4B FF A3 6D */	bl core_damage_check__FP10b_ob_class
/* 80618960  7F E3 FB 78 */	mr r3, r31
/* 80618964  4B FF 9E F9 */	bl core_action__FP10b_ob_class
/* 80618968  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8061896C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80618970  38 A0 00 02 */	li r5, 2
/* 80618974  38 C0 04 00 */	li r6, 0x400
/* 80618978  4B C5 7C 91 */	bl cLib_addCalcAngleS2__FPssss
/* 8061897C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80618980  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80618984  38 A0 00 02 */	li r5, 2
/* 80618988  38 C0 04 00 */	li r6, 0x400
/* 8061898C  4B C5 7C 7D */	bl cLib_addCalcAngleS2__FPssss
/* 80618990  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80618994  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80618998  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8061899C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806189A0  C0 1F 47 9C */	lfs f0, 0x479c(r31)
/* 806189A4  EC 42 00 2A */	fadds f2, f2, f0
/* 806189A8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 806189AC  4B D2 DF 3D */	bl PSMTXTrans
/* 806189B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806189B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806189B8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806189BC  4B 9F 3A 79 */	bl mDoMtx_YrotM__FPA4_fs
/* 806189C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806189C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806189C8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 806189CC  4B 9F 39 D1 */	bl mDoMtx_XrotM__FPA4_fs
/* 806189D0  3C 60 80 62 */	lis r3, l_HIO@ha /* 0x8061B514@ha */
/* 806189D4  3B 63 B5 14 */	addi r27, r3, l_HIO@l /* 0x8061B514@l */
/* 806189D8  C0 3B 00 08 */	lfs f1, 8(r27)
/* 806189DC  FC 40 08 90 */	fmr f2, f1
/* 806189E0  FC 60 08 90 */	fmr f3, f1
/* 806189E4  4B 9F 44 55 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806189E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806189EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806189F0  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 806189F4  4B 9F 3A D9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806189F8  C0 3E 02 F4 */	lfs f1, 0x2f4(r30)
/* 806189FC  C0 5E 02 F8 */	lfs f2, 0x2f8(r30)
/* 80618A00  FC 60 08 90 */	fmr f3, f1
/* 80618A04  4B 9F 44 35 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80618A08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80618A0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80618A10  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 80618A14  7C 00 00 D0 */	neg r0, r0
/* 80618A18  7C 04 07 34 */	extsh r4, r0
/* 80618A1C  4B 9F 3A B1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80618A20  A8 1F 47 50 */	lha r0, 0x4750(r31)
/* 80618A24  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80618A28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80618A2C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80618A30  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80618A34  7C 03 04 2E */	lfsx f0, r3, r0
/* 80618A38  C0 3E 01 74 */	lfs f1, 0x174(r30)
/* 80618A3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80618A40  EC 01 00 2A */	fadds f0, f1, f0
/* 80618A44  D0 1F 47 40 */	stfs f0, 0x4740(r31)
/* 80618A48  C0 1F 47 40 */	lfs f0, 0x4740(r31)
/* 80618A4C  FC 00 00 1E */	fctiwz f0, f0
/* 80618A50  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80618A54  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80618A58  7C 00 07 34 */	extsh r0, r0
/* 80618A5C  C8 3E 00 18 */	lfd f1, 0x18(r30)
/* 80618A60  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80618A64  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80618A68  3C 00 43 30 */	lis r0, 0x4330
/* 80618A6C  90 01 00 68 */	stw r0, 0x68(r1)
/* 80618A70  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80618A74  EC 00 08 28 */	fsubs f0, f0, f1
/* 80618A78  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80618A7C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80618A80  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80618A84  4B 9F 87 69 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80618A88  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80618A8C  80 83 00 04 */	lwz r4, 4(r3)
/* 80618A90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80618A94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80618A98  38 84 00 24 */	addi r4, r4, 0x24
/* 80618A9C  4B D2 DA 15 */	bl PSMTXCopy
/* 80618AA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80618AA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80618AA8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80618AAC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80618AB0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80618AB4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80618AB8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80618ABC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80618AC0  D0 3F 05 38 */	stfs f1, 0x538(r31)
/* 80618AC4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80618AC8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80618ACC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80618AD0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80618AD4  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80618AD8  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80618ADC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80618AE0  4C 41 13 82 */	cror 2, 1, 2
/* 80618AE4  40 82 00 38 */	bne lbl_80618B1C
/* 80618AE8  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80618AEC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80618AF0  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80618AF4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80618AF8  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80618AFC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80618B00  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80618B04  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80618B08  EC 01 00 2A */	fadds f0, f1, f0
/* 80618B0C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80618B10  38 00 00 01 */	li r0, 1
/* 80618B14  98 1F 47 45 */	stb r0, 0x4745(r31)
/* 80618B18  48 00 00 0C */	b lbl_80618B24
lbl_80618B1C:
/* 80618B1C  38 00 00 00 */	li r0, 0
/* 80618B20  98 1F 47 45 */	stb r0, 0x4745(r31)
lbl_80618B24:
/* 80618B24  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80618B28  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80618B2C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80618B30  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80618B34  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80618B38  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80618B3C  A8 1F 47 84 */	lha r0, 0x4784(r31)
/* 80618B40  2C 00 00 00 */	cmpwi r0, 0
/* 80618B44  41 82 00 10 */	beq lbl_80618B54
/* 80618B48  C0 1E 02 FC */	lfs f0, 0x2fc(r30)
/* 80618B4C  EC 01 00 2A */	fadds f0, f1, f0
/* 80618B50  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_80618B54:
/* 80618B54  38 7F 49 2C */	addi r3, r31, 0x492c
/* 80618B58  38 81 00 48 */	addi r4, r1, 0x48
/* 80618B5C  4B C5 6A ED */	bl SetC__8cM3dGSphFRC4cXyz
/* 80618B60  38 7F 49 2C */	addi r3, r31, 0x492c
/* 80618B64  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80618B68  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80618B6C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80618B70  4B C5 6B 99 */	bl SetR__8cM3dGSphFf
/* 80618B74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80618B78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80618B7C  3B 43 23 3C */	addi r26, r3, 0x233c
/* 80618B80  7F 43 D3 78 */	mr r3, r26
/* 80618B84  38 9F 48 08 */	addi r4, r31, 0x4808
/* 80618B88  4B C4 C0 21 */	bl Set__4cCcSFP8cCcD_Obj
/* 80618B8C  80 1F 48 08 */	lwz r0, 0x4808(r31)
/* 80618B90  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80618B94  90 1F 48 08 */	stw r0, 0x4808(r31)
/* 80618B98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80618B9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80618BA0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80618BA4  28 00 00 00 */	cmplwi r0, 0
/* 80618BA8  40 82 00 20 */	bne lbl_80618BC8
/* 80618BAC  80 1F 48 34 */	lwz r0, 0x4834(r31)
/* 80618BB0  60 00 00 01 */	ori r0, r0, 1
/* 80618BB4  90 1F 48 34 */	stw r0, 0x4834(r31)
/* 80618BB8  80 1F 4B 08 */	lwz r0, 0x4b08(r31)
/* 80618BBC  60 00 00 01 */	ori r0, r0, 1
/* 80618BC0  90 1F 4B 08 */	stw r0, 0x4b08(r31)
/* 80618BC4  48 00 00 1C */	b lbl_80618BE0
lbl_80618BC8:
/* 80618BC8  80 1F 48 34 */	lwz r0, 0x4834(r31)
/* 80618BCC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80618BD0  90 1F 48 34 */	stw r0, 0x4834(r31)
/* 80618BD4  80 1F 4B 08 */	lwz r0, 0x4b08(r31)
/* 80618BD8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80618BDC  90 1F 4B 08 */	stw r0, 0x4b08(r31)
lbl_80618BE0:
/* 80618BE0  88 1F 47 4C */	lbz r0, 0x474c(r31)
/* 80618BE4  7C 00 07 75 */	extsb. r0, r0
/* 80618BE8  41 82 00 A4 */	beq lbl_80618C8C
/* 80618BEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80618BF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80618BF4  C0 3F 04 A8 */	lfs f1, 0x4a8(r31)
/* 80618BF8  C0 5F 04 AC */	lfs f2, 0x4ac(r31)
/* 80618BFC  C0 1E 03 00 */	lfs f0, 0x300(r30)
/* 80618C00  EC 42 00 28 */	fsubs f2, f2, f0
/* 80618C04  C0 7F 04 B0 */	lfs f3, 0x4b0(r31)
/* 80618C08  4B D2 DC E1 */	bl PSMTXTrans
/* 80618C0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80618C10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80618C14  38 80 C0 00 */	li r4, -16384
/* 80618C18  4B 9F 37 85 */	bl mDoMtx_XrotM__FPA4_fs
/* 80618C1C  3C 60 80 62 */	lis r3, l_HIO@ha /* 0x8061B514@ha */
/* 80618C20  38 63 B5 14 */	addi r3, r3, l_HIO@l /* 0x8061B514@l */
/* 80618C24  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80618C28  FC 40 08 90 */	fmr f2, f1
/* 80618C2C  FC 60 08 90 */	fmr f3, f1
/* 80618C30  4B 9F 42 09 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80618C34  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80618C38  38 80 00 00 */	li r4, 0
/* 80618C3C  38 A0 00 00 */	li r5, 0
/* 80618C40  38 C0 00 00 */	li r6, 0
/* 80618C44  4B 9F 79 85 */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 80618C48  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80618C4C  80 83 00 04 */	lwz r4, 4(r3)
/* 80618C50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80618C54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80618C58  38 84 00 24 */	addi r4, r4, 0x24
/* 80618C5C  4B D2 D8 55 */	bl PSMTXCopy
/* 80618C60  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80618C64  4B 9F 7A 49 */	bl modelCalc__14mDoExt_McaMorfFv
/* 80618C68  38 7F 4C 00 */	addi r3, r31, 0x4c00
/* 80618C6C  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80618C70  4B C5 69 D9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80618C74  38 7F 4C 00 */	addi r3, r31, 0x4c00
/* 80618C78  C0 3E 03 04 */	lfs f1, 0x304(r30)
/* 80618C7C  4B C5 6A 8D */	bl SetR__8cM3dGSphFf
/* 80618C80  7F 43 D3 78 */	mr r3, r26
/* 80618C84  38 9F 4A DC */	addi r4, r31, 0x4adc
/* 80618C88  4B C4 BF 21 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80618C8C:
/* 80618C8C  80 1F 47 34 */	lwz r0, 0x4734(r31)
/* 80618C90  2C 00 00 12 */	cmpwi r0, 0x12
/* 80618C94  40 82 00 EC */	bne lbl_80618D80
/* 80618C98  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80618C9C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80618CA0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80618CA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80618CA8  4C 41 13 82 */	cror 2, 1, 2
/* 80618CAC  40 82 00 D4 */	bne lbl_80618D80
/* 80618CB0  83 43 00 04 */	lwz r26, 4(r3)
/* 80618CB4  3B 20 00 00 */	li r25, 0
/* 80618CB8  3B 00 00 00 */	li r24, 0
/* 80618CBC  3A E0 00 00 */	li r23, 0
/* 80618CC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80618CC4  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80618CC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80618CCC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80618CD0  3B BD 01 D0 */	addi r29, r29, 0x1d0
lbl_80618CD4:
/* 80618CD4  38 00 00 01 */	li r0, 1
/* 80618CD8  2C 19 00 02 */	cmpwi r25, 2
/* 80618CDC  41 80 00 08 */	blt lbl_80618CE4
/* 80618CE0  38 00 00 13 */	li r0, 0x13
lbl_80618CE4:
/* 80618CE4  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 80618CE8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80618CEC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80618CF0  7C 63 02 14 */	add r3, r3, r0
/* 80618CF4  7F 64 DB 78 */	mr r4, r27
/* 80618CF8  4B D2 D7 B9 */	bl PSMTXCopy
/* 80618CFC  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 80618D00  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80618D04  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80618D08  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80618D0C  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 80618D10  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80618D14  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80618D18  38 00 00 FF */	li r0, 0xff
/* 80618D1C  90 01 00 08 */	stw r0, 8(r1)
/* 80618D20  38 80 00 00 */	li r4, 0
/* 80618D24  90 81 00 0C */	stw r4, 0xc(r1)
/* 80618D28  38 00 FF FF */	li r0, -1
/* 80618D2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80618D30  90 81 00 14 */	stw r4, 0x14(r1)
/* 80618D34  90 81 00 18 */	stw r4, 0x18(r1)
/* 80618D38  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80618D3C  3A D7 5D 24 */	addi r22, r23, 0x5d24
/* 80618D40  7C 9F B0 2E */	lwzx r4, r31, r22
/* 80618D44  38 A0 00 00 */	li r5, 0
/* 80618D48  7C DD C2 2E */	lhzx r6, r29, r24
/* 80618D4C  38 E1 00 48 */	addi r7, r1, 0x48
/* 80618D50  39 00 00 00 */	li r8, 0
/* 80618D54  39 20 00 00 */	li r9, 0
/* 80618D58  39 40 00 00 */	li r10, 0
/* 80618D5C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80618D60  4B A3 47 6D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80618D64  7C 7F B1 2E */	stwx r3, r31, r22
/* 80618D68  3B 39 00 01 */	addi r25, r25, 1
/* 80618D6C  2C 19 00 05 */	cmpwi r25, 5
/* 80618D70  3B 18 00 02 */	addi r24, r24, 2
/* 80618D74  3A F7 00 04 */	addi r23, r23, 4
/* 80618D78  41 80 FF 5C */	blt lbl_80618CD4
/* 80618D7C  48 00 01 90 */	b lbl_80618F0C
lbl_80618D80:
/* 80618D80  2C 00 00 15 */	cmpwi r0, 0x15
/* 80618D84  40 82 00 C8 */	bne lbl_80618E4C
/* 80618D88  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80618D8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80618D90  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80618D94  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80618D98  38 63 03 90 */	addi r3, r3, 0x390
/* 80618D9C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80618DA0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80618DA4  4B D2 D7 0D */	bl PSMTXCopy
/* 80618DA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80618DAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80618DB0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80618DB4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80618DB8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80618DBC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80618DC0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80618DC4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80618DC8  3B 60 00 00 */	li r27, 0
/* 80618DCC  3B 00 00 00 */	li r24, 0
/* 80618DD0  3B 20 00 00 */	li r25, 0
/* 80618DD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80618DD8  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80618DDC  3A FD 01 DC */	addi r23, r29, 0x1dc
lbl_80618DE0:
/* 80618DE0  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80618DE4  38 00 00 FF */	li r0, 0xff
/* 80618DE8  90 01 00 08 */	stw r0, 8(r1)
/* 80618DEC  38 80 00 00 */	li r4, 0
/* 80618DF0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80618DF4  38 00 FF FF */	li r0, -1
/* 80618DF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80618DFC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80618E00  90 81 00 18 */	stw r4, 0x18(r1)
/* 80618E04  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80618E08  3A D9 5D 24 */	addi r22, r25, 0x5d24
/* 80618E0C  7C 9F B0 2E */	lwzx r4, r31, r22
/* 80618E10  38 A0 00 00 */	li r5, 0
/* 80618E14  7C D7 C2 2E */	lhzx r6, r23, r24
/* 80618E18  38 E1 00 48 */	addi r7, r1, 0x48
/* 80618E1C  39 00 00 00 */	li r8, 0
/* 80618E20  39 20 00 00 */	li r9, 0
/* 80618E24  39 40 00 00 */	li r10, 0
/* 80618E28  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80618E2C  4B A3 46 A1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80618E30  7C 7F B1 2E */	stwx r3, r31, r22
/* 80618E34  3B 7B 00 01 */	addi r27, r27, 1
/* 80618E38  2C 1B 00 03 */	cmpwi r27, 3
/* 80618E3C  3B 18 00 02 */	addi r24, r24, 2
/* 80618E40  3B 39 00 04 */	addi r25, r25, 4
/* 80618E44  41 80 FF 9C */	blt lbl_80618DE0
/* 80618E48  48 00 00 C4 */	b lbl_80618F0C
lbl_80618E4C:
/* 80618E4C  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80618E50  40 82 00 BC */	bne lbl_80618F0C
/* 80618E54  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80618E58  83 43 00 04 */	lwz r26, 4(r3)
/* 80618E5C  3B 20 00 00 */	li r25, 0
/* 80618E60  3B 60 00 00 */	li r27, 0
/* 80618E64  3B 00 00 00 */	li r24, 0
/* 80618E68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80618E6C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80618E70  3A FD 01 E4 */	addi r23, r29, 0x1e4
lbl_80618E74:
/* 80618E74  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80618E78  38 00 00 FF */	li r0, 0xff
/* 80618E7C  90 01 00 08 */	stw r0, 8(r1)
/* 80618E80  38 80 00 00 */	li r4, 0
/* 80618E84  90 81 00 0C */	stw r4, 0xc(r1)
/* 80618E88  38 00 FF FF */	li r0, -1
/* 80618E8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80618E90  90 81 00 14 */	stw r4, 0x14(r1)
/* 80618E94  90 81 00 18 */	stw r4, 0x18(r1)
/* 80618E98  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80618E9C  3A D8 5D 24 */	addi r22, r24, 0x5d24
/* 80618EA0  7C 9F B0 2E */	lwzx r4, r31, r22
/* 80618EA4  38 A0 00 00 */	li r5, 0
/* 80618EA8  7C D7 DA 2E */	lhzx r6, r23, r27
/* 80618EAC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80618EB0  39 00 00 00 */	li r8, 0
/* 80618EB4  39 20 00 00 */	li r9, 0
/* 80618EB8  39 40 00 00 */	li r10, 0
/* 80618EBC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80618EC0  4B A3 46 0D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80618EC4  7C 7F B1 2E */	stwx r3, r31, r22
/* 80618EC8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80618ECC  38 63 02 10 */	addi r3, r3, 0x210
/* 80618ED0  7C 9F B0 2E */	lwzx r4, r31, r22
/* 80618ED4  4B A3 2A 45 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80618ED8  7C 65 1B 79 */	or. r5, r3, r3
/* 80618EDC  41 82 00 1C */	beq lbl_80618EF8
/* 80618EE0  80 7A 00 84 */	lwz r3, 0x84(r26)
/* 80618EE4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80618EE8  38 63 03 90 */	addi r3, r3, 0x390
/* 80618EEC  38 85 00 68 */	addi r4, r5, 0x68
/* 80618EF0  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80618EF4  4B C6 78 ED */	bl func_802807E0
lbl_80618EF8:
/* 80618EF8  3B 39 00 01 */	addi r25, r25, 1
/* 80618EFC  2C 19 00 04 */	cmpwi r25, 4
/* 80618F00  3B 7B 00 02 */	addi r27, r27, 2
/* 80618F04  3B 18 00 04 */	addi r24, r24, 4
/* 80618F08  41 80 FF 6C */	blt lbl_80618E74
lbl_80618F0C:
/* 80618F0C  7F E3 FB 78 */	mr r3, r31
/* 80618F10  4B FF CB 01 */	bl demo_camera__FP10b_ob_class
/* 80618F14  C3 FE 00 0C */	lfs f31, 0xc(r30)
/* 80618F18  80 1F 5D D8 */	lwz r0, 0x5dd8(r31)
/* 80618F1C  2C 00 00 00 */	cmpwi r0, 0
/* 80618F20  40 82 00 18 */	bne lbl_80618F38
/* 80618F24  38 60 00 00 */	li r3, 0
/* 80618F28  38 80 00 01 */	li r4, 1
/* 80618F2C  C0 3F 5D DC */	lfs f1, 0x5ddc(r31)
/* 80618F30  4B B8 F8 DD */	bl dKy_custom_colset__FUcUcf
/* 80618F34  48 00 00 78 */	b lbl_80618FAC
lbl_80618F38:
/* 80618F38  2C 00 00 01 */	cmpwi r0, 1
/* 80618F3C  40 82 00 1C */	bne lbl_80618F58
/* 80618F40  38 60 00 00 */	li r3, 0
/* 80618F44  38 80 00 01 */	li r4, 1
/* 80618F48  C0 3F 5D DC */	lfs f1, 0x5ddc(r31)
/* 80618F4C  4B B8 F8 C1 */	bl dKy_custom_colset__FUcUcf
/* 80618F50  C3 FE 00 00 */	lfs f31, 0(r30)
/* 80618F54  48 00 00 58 */	b lbl_80618FAC
lbl_80618F58:
/* 80618F58  2C 00 00 02 */	cmpwi r0, 2
/* 80618F5C  40 82 00 18 */	bne lbl_80618F74
/* 80618F60  38 60 00 02 */	li r3, 2
/* 80618F64  38 80 00 01 */	li r4, 1
/* 80618F68  C0 3F 5D DC */	lfs f1, 0x5ddc(r31)
/* 80618F6C  4B B8 F8 A1 */	bl dKy_custom_colset__FUcUcf
/* 80618F70  48 00 00 3C */	b lbl_80618FAC
lbl_80618F74:
/* 80618F74  2C 00 00 03 */	cmpwi r0, 3
/* 80618F78  40 82 00 1C */	bne lbl_80618F94
/* 80618F7C  38 60 00 02 */	li r3, 2
/* 80618F80  38 80 00 03 */	li r4, 3
/* 80618F84  C0 3F 5D DC */	lfs f1, 0x5ddc(r31)
/* 80618F88  4B B8 F8 85 */	bl dKy_custom_colset__FUcUcf
/* 80618F8C  C3 FE 00 00 */	lfs f31, 0(r30)
/* 80618F90  48 00 00 1C */	b lbl_80618FAC
lbl_80618F94:
/* 80618F94  2C 00 00 04 */	cmpwi r0, 4
/* 80618F98  40 82 00 14 */	bne lbl_80618FAC
/* 80618F9C  38 60 00 04 */	li r3, 4
/* 80618FA0  38 80 00 04 */	li r4, 4
/* 80618FA4  FC 20 F8 90 */	fmr f1, f31
/* 80618FA8  4B B8 F8 65 */	bl dKy_custom_colset__FUcUcf
lbl_80618FAC:
/* 80618FAC  38 7F 5D DC */	addi r3, r31, 0x5ddc
/* 80618FB0  FC 20 F8 90 */	fmr f1, f31
/* 80618FB4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80618FB8  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 80618FBC  4B C5 6A 81 */	bl cLib_addCalc2__FPffff
/* 80618FC0  88 7F 5D 18 */	lbz r3, 0x5d18(r31)
/* 80618FC4  28 03 00 00 */	cmplwi r3, 0
/* 80618FC8  41 82 00 9C */	beq lbl_80619064
/* 80618FCC  38 03 FF FF */	addi r0, r3, -1
/* 80618FD0  98 1F 5D 18 */	stb r0, 0x5d18(r31)
/* 80618FD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80618FD8  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80618FDC  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80618FE0  38 00 00 FF */	li r0, 0xff
/* 80618FE4  90 01 00 08 */	stw r0, 8(r1)
/* 80618FE8  38 80 00 00 */	li r4, 0
/* 80618FEC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80618FF0  38 00 FF FF */	li r0, -1
/* 80618FF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80618FF8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80618FFC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80619000  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80619004  80 9F 5D 38 */	lwz r4, 0x5d38(r31)
/* 80619008  38 A0 00 00 */	li r5, 0
/* 8061900C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008809@ha */
/* 80619010  38 C6 88 09 */	addi r6, r6, 0x8809 /* 0x00008809@l */
/* 80619014  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80619018  39 00 00 00 */	li r8, 0
/* 8061901C  39 20 00 00 */	li r9, 0
/* 80619020  39 40 00 00 */	li r10, 0
/* 80619024  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80619028  4B A3 44 A5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8061902C  90 7F 5D 38 */	stw r3, 0x5d38(r31)
/* 80619030  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80619034  38 63 02 10 */	addi r3, r3, 0x210
/* 80619038  80 9F 5D 38 */	lwz r4, 0x5d38(r31)
/* 8061903C  4B A3 28 DD */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80619040  7C 65 1B 79 */	or. r5, r3, r3
/* 80619044  41 82 00 20 */	beq lbl_80619064
/* 80619048  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8061904C  80 63 00 04 */	lwz r3, 4(r3)
/* 80619050  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80619054  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80619058  38 85 00 68 */	addi r4, r5, 0x68
/* 8061905C  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80619060  4B C6 77 81 */	bl func_802807E0
lbl_80619064:
/* 80619064  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80619068  80 63 00 04 */	lwz r3, 4(r3)
/* 8061906C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80619070  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80619074  38 63 03 90 */	addi r3, r3, 0x390
/* 80619078  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061907C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80619080  4B D2 D4 31 */	bl PSMTXCopy
/* 80619084  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80619088  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061908C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80619090  D0 1F 5B E4 */	stfs f0, 0x5be4(r31)
/* 80619094  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80619098  D0 1F 5B E8 */	stfs f0, 0x5be8(r31)
/* 8061909C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 806190A0  D0 1F 5B EC */	stfs f0, 0x5bec(r31)
/* 806190A4  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806190A8  80 63 00 04 */	lwz r3, 4(r3)
/* 806190AC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806190B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806190B4  38 63 00 30 */	addi r3, r3, 0x30
/* 806190B8  7F A4 EB 78 */	mr r4, r29
/* 806190BC  4B D2 D3 F5 */	bl PSMTXCopy
/* 806190C0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806190C4  D0 1F 5B F0 */	stfs f0, 0x5bf0(r31)
/* 806190C8  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 806190CC  D0 1F 5B F4 */	stfs f0, 0x5bf4(r31)
/* 806190D0  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 806190D4  D0 1F 5B F8 */	stfs f0, 0x5bf8(r31)
/* 806190D8  80 7F 08 B0 */	lwz r3, 0x8b0(r31)
/* 806190DC  80 63 00 04 */	lwz r3, 4(r3)
/* 806190E0  38 63 00 24 */	addi r3, r3, 0x24
/* 806190E4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806190E8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806190EC  4B D2 D3 C5 */	bl PSMTXCopy
/* 806190F0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806190F4  D0 1F 5B FC */	stfs f0, 0x5bfc(r31)
/* 806190F8  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 806190FC  D0 1F 5C 00 */	stfs f0, 0x5c00(r31)
/* 80619100  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80619104  D0 1F 5C 04 */	stfs f0, 0x5c04(r31)
/* 80619108  80 7F 0D 18 */	lwz r3, 0xd18(r31)
/* 8061910C  80 63 00 04 */	lwz r3, 4(r3)
/* 80619110  38 63 00 24 */	addi r3, r3, 0x24
/* 80619114  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80619118  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061911C  4B D2 D3 95 */	bl PSMTXCopy
/* 80619120  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80619124  D0 1F 5C 08 */	stfs f0, 0x5c08(r31)
/* 80619128  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8061912C  D0 1F 5C 0C */	stfs f0, 0x5c0c(r31)
/* 80619130  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80619134  D0 1F 5C 10 */	stfs f0, 0x5c10(r31)
/* 80619138  80 7F 20 30 */	lwz r3, 0x2030(r31)
/* 8061913C  80 63 00 04 */	lwz r3, 4(r3)
/* 80619140  38 63 00 24 */	addi r3, r3, 0x24
/* 80619144  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80619148  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061914C  4B D2 D3 65 */	bl PSMTXCopy
/* 80619150  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80619154  D0 1F 5C 14 */	stfs f0, 0x5c14(r31)
/* 80619158  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8061915C  D0 1F 5C 18 */	stfs f0, 0x5c18(r31)
/* 80619160  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80619164  D0 1F 5C 1C */	stfs f0, 0x5c1c(r31)
/* 80619168  3B 20 00 00 */	li r25, 0
/* 8061916C  3B 40 00 00 */	li r26, 0
/* 80619170  3B 60 00 00 */	li r27, 0
lbl_80619174:
/* 80619174  88 1F 47 4C */	lbz r0, 0x474c(r31)
/* 80619178  7C 00 07 75 */	extsb. r0, r0
/* 8061917C  41 82 01 D8 */	beq lbl_80619354
/* 80619180  38 1B 4F 64 */	addi r0, r27, 0x4f64
/* 80619184  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80619188  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061918C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80619190  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80619194  38 81 00 24 */	addi r4, r1, 0x24
/* 80619198  4B A0 06 61 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8061919C  28 03 00 00 */	cmplwi r3, 0
/* 806191A0  41 82 01 B4 */	beq lbl_80619354
/* 806191A4  80 63 05 B4 */	lwz r3, 0x5b4(r3)
/* 806191A8  80 63 00 04 */	lwz r3, 4(r3)
/* 806191AC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806191B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806191B4  38 63 04 B0 */	addi r3, r3, 0x4b0
/* 806191B8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806191BC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806191C0  4B D2 D2 F1 */	bl PSMTXCopy
/* 806191C4  7C 7F D2 14 */	add r3, r31, r26
/* 806191C8  C0 03 5C 20 */	lfs f0, 0x5c20(r3)
/* 806191CC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806191D0  C0 03 5C 24 */	lfs f0, 0x5c24(r3)
/* 806191D4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806191D8  C0 03 5C 28 */	lfs f0, 0x5c28(r3)
/* 806191DC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806191E0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806191E4  38 19 00 05 */	addi r0, r25, 5
/* 806191E8  1C 60 00 0C */	mulli r3, r0, 0xc
/* 806191EC  38 83 5B E4 */	addi r4, r3, 0x5be4
/* 806191F0  7C 9F 22 14 */	add r4, r31, r4
/* 806191F4  D0 04 00 00 */	stfs f0, 0(r4)
/* 806191F8  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 806191FC  D0 04 00 04 */	stfs f0, 4(r4)
/* 80619200  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80619204  D0 04 00 08 */	stfs f0, 8(r4)
/* 80619208  38 61 00 30 */	addi r3, r1, 0x30
/* 8061920C  38 A1 00 54 */	addi r5, r1, 0x54
/* 80619210  4B C4 D9 25 */	bl __mi__4cXyzCFRC3Vec
/* 80619214  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80619218  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8061921C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80619220  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80619224  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80619228  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8061922C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070347@ha */
/* 80619230  38 03 03 47 */	addi r0, r3, 0x0347 /* 0x00070347@l */
/* 80619234  90 01 00 28 */	stw r0, 0x28(r1)
/* 80619238  38 61 00 54 */	addi r3, r1, 0x54
/* 8061923C  4B D2 DE FD */	bl PSVECSquareMag
/* 80619240  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80619244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80619248  40 81 00 58 */	ble lbl_806192A0
/* 8061924C  FC 00 08 34 */	frsqrte f0, f1
/* 80619250  C8 9E 00 20 */	lfd f4, 0x20(r30)
/* 80619254  FC 44 00 32 */	fmul f2, f4, f0
/* 80619258  C8 7E 00 28 */	lfd f3, 0x28(r30)
/* 8061925C  FC 00 00 32 */	fmul f0, f0, f0
/* 80619260  FC 01 00 32 */	fmul f0, f1, f0
/* 80619264  FC 03 00 28 */	fsub f0, f3, f0
/* 80619268  FC 02 00 32 */	fmul f0, f2, f0
/* 8061926C  FC 44 00 32 */	fmul f2, f4, f0
/* 80619270  FC 00 00 32 */	fmul f0, f0, f0
/* 80619274  FC 01 00 32 */	fmul f0, f1, f0
/* 80619278  FC 03 00 28 */	fsub f0, f3, f0
/* 8061927C  FC 02 00 32 */	fmul f0, f2, f0
/* 80619280  FC 44 00 32 */	fmul f2, f4, f0
/* 80619284  FC 00 00 32 */	fmul f0, f0, f0
/* 80619288  FC 01 00 32 */	fmul f0, f1, f0
/* 8061928C  FC 03 00 28 */	fsub f0, f3, f0
/* 80619290  FC 02 00 32 */	fmul f0, f2, f0
/* 80619294  FF E1 00 32 */	fmul f31, f1, f0
/* 80619298  FF E0 F8 18 */	frsp f31, f31
/* 8061929C  48 00 00 90 */	b lbl_8061932C
lbl_806192A0:
/* 806192A0  C8 1E 00 30 */	lfd f0, 0x30(r30)
/* 806192A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806192A8  40 80 00 10 */	bge lbl_806192B8
/* 806192AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806192B0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806192B4  48 00 00 78 */	b lbl_8061932C
lbl_806192B8:
/* 806192B8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806192BC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806192C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806192C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 806192C8  7C 03 00 00 */	cmpw r3, r0
/* 806192CC  41 82 00 14 */	beq lbl_806192E0
/* 806192D0  40 80 00 40 */	bge lbl_80619310
/* 806192D4  2C 03 00 00 */	cmpwi r3, 0
/* 806192D8  41 82 00 20 */	beq lbl_806192F8
/* 806192DC  48 00 00 34 */	b lbl_80619310
lbl_806192E0:
/* 806192E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806192E4  41 82 00 0C */	beq lbl_806192F0
/* 806192E8  38 00 00 01 */	li r0, 1
/* 806192EC  48 00 00 28 */	b lbl_80619314
lbl_806192F0:
/* 806192F0  38 00 00 02 */	li r0, 2
/* 806192F4  48 00 00 20 */	b lbl_80619314
lbl_806192F8:
/* 806192F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806192FC  41 82 00 0C */	beq lbl_80619308
/* 80619300  38 00 00 05 */	li r0, 5
/* 80619304  48 00 00 10 */	b lbl_80619314
lbl_80619308:
/* 80619308  38 00 00 03 */	li r0, 3
/* 8061930C  48 00 00 08 */	b lbl_80619314
lbl_80619310:
/* 80619310  38 00 00 04 */	li r0, 4
lbl_80619314:
/* 80619314  2C 00 00 01 */	cmpwi r0, 1
/* 80619318  40 82 00 10 */	bne lbl_80619328
/* 8061931C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80619320  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80619324  48 00 00 08 */	b lbl_8061932C
lbl_80619328:
/* 80619328  FF E0 08 90 */	fmr f31, f1
lbl_8061932C:
/* 8061932C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80619330  7C 03 07 74 */	extsb r3, r0
/* 80619334  4B A1 3D 39 */	bl dComIfGp_getReverb__Fi
/* 80619338  7C 67 1B 78 */	mr r7, r3
/* 8061933C  38 7F 59 E0 */	addi r3, r31, 0x59e0
/* 80619340  38 81 00 28 */	addi r4, r1, 0x28
/* 80619344  57 25 06 3E */	clrlwi r5, r25, 0x18
/* 80619348  FC 20 F8 90 */	fmr f1, f31
/* 8061934C  38 C0 00 00 */	li r6, 0
/* 80619350  4B CA 99 85 */	bl startTentacleSoundLevel__12Z2CreatureOIF10JAISoundIDUcfUlSc
lbl_80619354:
/* 80619354  3B 39 00 01 */	addi r25, r25, 1
/* 80619358  2C 19 00 08 */	cmpwi r25, 8
/* 8061935C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80619360  3B 7B 00 04 */	addi r27, r27, 4
/* 80619364  41 80 FE 10 */	blt lbl_80619174
/* 80619368  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8061936C  7C 03 07 74 */	extsb r3, r0
/* 80619370  4B A1 3C FD */	bl dComIfGp_getReverb__Fi
/* 80619374  7C 65 1B 78 */	mr r5, r3
/* 80619378  38 7F 59 E0 */	addi r3, r31, 0x59e0
/* 8061937C  38 80 00 00 */	li r4, 0
/* 80619380  81 9F 59 E0 */	lwz r12, 0x59e0(r31)
/* 80619384  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80619388  7D 89 03 A6 */	mtctr r12
/* 8061938C  4E 80 04 21 */	bctrl 
/* 80619390  38 60 00 01 */	li r3, 1
lbl_80619394:
/* 80619394  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80619398  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8061939C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806193A0  4B D4 8E 6D */	bl _restgpr_22
/* 806193A4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 806193A8  7C 08 03 A6 */	mtlr r0
/* 806193AC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 806193B0  4E 80 00 20 */	blr 
