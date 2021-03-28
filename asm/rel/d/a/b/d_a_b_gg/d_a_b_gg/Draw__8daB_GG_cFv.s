lbl_805EB5E0:
/* 805EB5E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805EB5E4  7C 08 02 A6 */	mflr r0
/* 805EB5E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805EB5EC  39 61 00 40 */	addi r11, r1, 0x40
/* 805EB5F0  4B D7 6B E8 */	b _savegpr_28
/* 805EB5F4  7C 7D 1B 78 */	mr r29, r3
/* 805EB5F8  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805EB5FC  3B E3 D0 60 */	addi r31, r3, lit_3911@l
/* 805EB600  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805EB604  83 C3 00 04 */	lwz r30, 4(r3)
/* 805EB608  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805EB60C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805EB610  38 80 00 00 */	li r4, 0
/* 805EB614  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805EB618  38 DD 01 0C */	addi r6, r29, 0x10c
/* 805EB61C  4B BB 81 A8 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805EB620  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805EB624  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805EB628  80 9E 00 04 */	lwz r4, 4(r30)
/* 805EB62C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 805EB630  4B BB 97 70 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805EB634  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805EB638  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805EB63C  80 9D 0E 34 */	lwz r4, 0xe34(r29)
/* 805EB640  80 84 00 04 */	lwz r4, 4(r4)
/* 805EB644  38 BD 01 0C */	addi r5, r29, 0x10c
/* 805EB648  4B BB 97 58 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805EB64C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805EB650  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805EB654  80 9D 0E 38 */	lwz r4, 0xe38(r29)
/* 805EB658  80 84 00 04 */	lwz r4, 4(r4)
/* 805EB65C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 805EB660  4B BB 97 40 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805EB664  88 1D 06 90 */	lbz r0, 0x690(r29)
/* 805EB668  28 00 00 00 */	cmplwi r0, 0
/* 805EB66C  40 82 00 28 */	bne lbl_805EB694
/* 805EB670  88 1D 05 B1 */	lbz r0, 0x5b1(r29)
/* 805EB674  28 00 00 02 */	cmplwi r0, 2
/* 805EB678  41 82 00 1C */	beq lbl_805EB694
/* 805EB67C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805EB680  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805EB684  80 9D 0E 3C */	lwz r4, 0xe3c(r29)
/* 805EB688  80 84 00 04 */	lwz r4, 4(r4)
/* 805EB68C  38 BD 01 0C */	addi r5, r29, 0x10c
/* 805EB690  4B BB 97 10 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
lbl_805EB694:
/* 805EB694  88 1D 06 6C */	lbz r0, 0x66c(r29)
/* 805EB698  28 00 00 00 */	cmplwi r0, 0
/* 805EB69C  41 82 00 AC */	beq lbl_805EB748
/* 805EB6A0  80 7E 00 04 */	lwz r3, 4(r30)
/* 805EB6A4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 805EB6A8  83 83 00 00 */	lwz r28, 0(r3)
/* 805EB6AC  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805EB6B0  38 80 00 00 */	li r4, 0
/* 805EB6B4  81 83 00 00 */	lwz r12, 0(r3)
/* 805EB6B8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805EB6BC  7D 89 03 A6 */	mtctr r12
/* 805EB6C0  4E 80 04 21 */	bctrl 
/* 805EB6C4  C0 3F 03 30 */	lfs f1, 0x330(r31)
/* 805EB6C8  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 805EB6CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EB6D0  FC 00 00 1E */	fctiwz f0, f0
/* 805EB6D4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805EB6D8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805EB6DC  B0 03 00 00 */	sth r0, 0(r3)
/* 805EB6E0  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805EB6E4  38 80 00 00 */	li r4, 0
/* 805EB6E8  81 83 00 00 */	lwz r12, 0(r3)
/* 805EB6EC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805EB6F0  7D 89 03 A6 */	mtctr r12
/* 805EB6F4  4E 80 04 21 */	bctrl 
/* 805EB6F8  C0 3F 03 30 */	lfs f1, 0x330(r31)
/* 805EB6FC  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 805EB700  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EB704  FC 00 00 1E */	fctiwz f0, f0
/* 805EB708  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805EB70C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EB710  B0 03 00 02 */	sth r0, 2(r3)
/* 805EB714  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805EB718  38 80 00 00 */	li r4, 0
/* 805EB71C  81 83 00 00 */	lwz r12, 0(r3)
/* 805EB720  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 805EB724  7D 89 03 A6 */	mtctr r12
/* 805EB728  4E 80 04 21 */	bctrl 
/* 805EB72C  C0 3F 03 30 */	lfs f1, 0x330(r31)
/* 805EB730  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 805EB734  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EB738  FC 00 00 1E */	fctiwz f0, f0
/* 805EB73C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805EB740  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805EB744  B0 03 00 04 */	sth r0, 4(r3)
lbl_805EB748:
/* 805EB748  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805EB74C  4B A2 5A 74 */	b entryDL__16mDoExt_McaMorfSOFv
/* 805EB750  80 7D 0E 34 */	lwz r3, 0xe34(r29)
/* 805EB754  4B A2 25 70 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 805EB758  80 7D 0E 38 */	lwz r3, 0xe38(r29)
/* 805EB75C  4B A2 25 68 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 805EB760  88 1D 06 90 */	lbz r0, 0x690(r29)
/* 805EB764  28 00 00 00 */	cmplwi r0, 0
/* 805EB768  40 82 00 18 */	bne lbl_805EB780
/* 805EB76C  88 1D 05 B1 */	lbz r0, 0x5b1(r29)
/* 805EB770  28 00 00 02 */	cmplwi r0, 2
/* 805EB774  41 82 00 0C */	beq lbl_805EB780
/* 805EB778  80 7D 0E 3C */	lwz r3, 0xe3c(r29)
/* 805EB77C  4B A2 25 48 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_805EB780:
/* 805EB780  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 805EB784  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805EB788  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 805EB78C  EC 20 18 2A */	fadds f1, f0, f3
/* 805EB790  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805EB794  D0 01 00 08 */	stfs f0, 8(r1)
/* 805EB798  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805EB79C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805EB7A0  80 7D 0E 48 */	lwz r3, 0xe48(r29)
/* 805EB7A4  38 80 00 01 */	li r4, 1
/* 805EB7A8  7F C5 F3 78 */	mr r5, r30
/* 805EB7AC  38 C1 00 08 */	addi r6, r1, 8
/* 805EB7B0  C0 3F 02 CC */	lfs f1, 0x2cc(r31)
/* 805EB7B4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 805EB7B8  C0 9D 0F C8 */	lfs f4, 0xfc8(r29)
/* 805EB7BC  38 FD 10 20 */	addi r7, r29, 0x1020
/* 805EB7C0  39 1D 01 0C */	addi r8, r29, 0x10c
/* 805EB7C4  39 20 00 00 */	li r9, 0
/* 805EB7C8  C0 BF 00 08 */	lfs f5, 8(r31)
/* 805EB7CC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 805EB7D0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 805EB7D4  4B A4 31 3C */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 805EB7D8  90 7D 0E 48 */	stw r3, 0xe48(r29)
/* 805EB7DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EB7E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EB7E4  3B 83 61 C0 */	addi r28, r3, 0x61c0
/* 805EB7E8  7F 83 E3 78 */	mr r3, r28
/* 805EB7EC  80 9D 0E 48 */	lwz r4, 0xe48(r29)
/* 805EB7F0  80 BD 0E 34 */	lwz r5, 0xe34(r29)
/* 805EB7F4  4B A6 A7 28 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 805EB7F8  7F 83 E3 78 */	mr r3, r28
/* 805EB7FC  80 9D 0E 48 */	lwz r4, 0xe48(r29)
/* 805EB800  80 BD 0E 38 */	lwz r5, 0xe38(r29)
/* 805EB804  4B A6 A7 18 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 805EB808  88 1D 06 90 */	lbz r0, 0x690(r29)
/* 805EB80C  28 00 00 00 */	cmplwi r0, 0
/* 805EB810  40 82 00 20 */	bne lbl_805EB830
/* 805EB814  88 1D 05 B1 */	lbz r0, 0x5b1(r29)
/* 805EB818  28 00 00 02 */	cmplwi r0, 2
/* 805EB81C  41 82 00 14 */	beq lbl_805EB830
/* 805EB820  7F 83 E3 78 */	mr r3, r28
/* 805EB824  80 9D 0E 48 */	lwz r4, 0xe48(r29)
/* 805EB828  80 BD 0E 3C */	lwz r5, 0xe3c(r29)
/* 805EB82C  4B A6 A6 F0 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_805EB830:
/* 805EB830  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805EB834  2C 00 00 0D */	cmpwi r0, 0xd
/* 805EB838  40 82 00 48 */	bne lbl_805EB880
/* 805EB83C  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805EB840  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805EB844  C0 1F 03 34 */	lfs f0, 0x334(r31)
/* 805EB848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EB84C  40 81 00 34 */	ble lbl_805EB880
/* 805EB850  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 805EB854  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805EB858  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805EB85C  4B C8 4E E4 */	b cLib_chaseF__FPfff
/* 805EB860  C0 1D 05 AC */	lfs f0, 0x5ac(r29)
/* 805EB864  FC 00 00 1E */	fctiwz f0, f0
/* 805EB868  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805EB86C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805EB870  3C 60 80 45 */	lis r3, struct_80450BE4+0x1@ha
/* 805EB874  98 03 0B E5 */	stb r0, struct_80450BE4+0x1@l(r3)
/* 805EB878  4B A1 C8 00 */	b onBlure__13mDoGph_gInf_cFv
/* 805EB87C  48 00 00 10 */	b lbl_805EB88C
lbl_805EB880:
/* 805EB880  38 00 00 00 */	li r0, 0
/* 805EB884  3C 60 80 45 */	lis r3, struct_80450BE4+0x0@ha
/* 805EB888  98 03 0B E4 */	stb r0, struct_80450BE4+0x0@l(r3)
lbl_805EB88C:
/* 805EB88C  38 60 00 01 */	li r3, 1
/* 805EB890  39 61 00 40 */	addi r11, r1, 0x40
/* 805EB894  4B D7 69 90 */	b _restgpr_28
/* 805EB898  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805EB89C  7C 08 03 A6 */	mtlr r0
/* 805EB8A0  38 21 00 40 */	addi r1, r1, 0x40
/* 805EB8A4  4E 80 00 20 */	blr 
