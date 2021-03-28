lbl_8068F4C4:
/* 8068F4C4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8068F4C8  7C 08 02 A6 */	mflr r0
/* 8068F4CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8068F4D0  39 61 00 70 */	addi r11, r1, 0x70
/* 8068F4D4  4B CD 2D 00 */	b _savegpr_27
/* 8068F4D8  7C 7E 1B 78 */	mr r30, r3
/* 8068F4DC  3C 80 80 69 */	lis r4, lit_3788@ha
/* 8068F4E0  3B E4 0D D8 */	addi r31, r4, lit_3788@l
/* 8068F4E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8068F4E8  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 8068F4EC  83 BC 5D AC */	lwz r29, 0x5dac(r28)
/* 8068F4F0  38 00 00 00 */	li r0, 0
/* 8068F4F4  98 03 06 A8 */	stb r0, 0x6a8(r3)
/* 8068F4F8  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8068F4FC  4B 98 B4 68 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8068F500  D0 3E 06 80 */	stfs f1, 0x680(r30)
/* 8068F504  7F C3 F3 78 */	mr r3, r30
/* 8068F508  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8068F50C  4B 98 B2 04 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8068F510  B0 7E 06 84 */	sth r3, 0x684(r30)
/* 8068F514  7F C3 F3 78 */	mr r3, r30
/* 8068F518  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8068F51C  4B 98 B2 1C */	b fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8068F520  B0 7E 06 86 */	sth r3, 0x686(r30)
/* 8068F524  3C 60 80 69 */	lis r3, l_HIO@ha
/* 8068F528  38 63 10 A0 */	addi r3, r3, l_HIO@l
/* 8068F52C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8068F530  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 8068F534  7F C3 F3 78 */	mr r3, r30
/* 8068F538  4B FF FC D1 */	bl damage_check__FP10e_bs_class
/* 8068F53C  3B 80 00 01 */	li r28, 1
/* 8068F540  3B 60 00 00 */	li r27, 0
/* 8068F544  A8 1E 06 7E */	lha r0, 0x67e(r30)
/* 8068F548  2C 00 00 02 */	cmpwi r0, 2
/* 8068F54C  41 82 00 44 */	beq lbl_8068F590
/* 8068F550  40 80 00 14 */	bge lbl_8068F564
/* 8068F554  2C 00 00 00 */	cmpwi r0, 0
/* 8068F558  41 82 00 1C */	beq lbl_8068F574
/* 8068F55C  40 80 00 28 */	bge lbl_8068F584
/* 8068F560  48 00 00 58 */	b lbl_8068F5B8
lbl_8068F564:
/* 8068F564  2C 00 00 04 */	cmpwi r0, 4
/* 8068F568  41 82 00 48 */	beq lbl_8068F5B0
/* 8068F56C  40 80 00 4C */	bge lbl_8068F5B8
/* 8068F570  48 00 00 30 */	b lbl_8068F5A0
lbl_8068F574:
/* 8068F574  7F C3 F3 78 */	mr r3, r30
/* 8068F578  4B FF F1 91 */	bl e_bs_appear__FP10e_bs_class
/* 8068F57C  3B 80 00 00 */	li r28, 0
/* 8068F580  48 00 00 38 */	b lbl_8068F5B8
lbl_8068F584:
/* 8068F584  7F C3 F3 78 */	mr r3, r30
/* 8068F588  4B FF F3 3D */	bl e_bs_normal__FP10e_bs_class
/* 8068F58C  48 00 00 2C */	b lbl_8068F5B8
lbl_8068F590:
/* 8068F590  7F C3 F3 78 */	mr r3, r30
/* 8068F594  4B FF F5 BD */	bl e_bs_fight_run__FP10e_bs_class
/* 8068F598  3B 60 00 01 */	li r27, 1
/* 8068F59C  48 00 00 1C */	b lbl_8068F5B8
lbl_8068F5A0:
/* 8068F5A0  7F C3 F3 78 */	mr r3, r30
/* 8068F5A4  4B FF F9 E9 */	bl e_bs_attack__FP10e_bs_class
/* 8068F5A8  3B 60 00 01 */	li r27, 1
/* 8068F5AC  48 00 00 0C */	b lbl_8068F5B8
lbl_8068F5B0:
/* 8068F5B0  7F C3 F3 78 */	mr r3, r30
/* 8068F5B4  4B FF FB A9 */	bl e_bs_damage__FP10e_bs_class
lbl_8068F5B8:
/* 8068F5B8  7F 60 07 75 */	extsb. r0, r27
/* 8068F5BC  41 82 00 14 */	beq lbl_8068F5D0
/* 8068F5C0  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8068F5C4  38 80 00 01 */	li r4, 1
/* 8068F5C8  4B C3 25 B4 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 8068F5CC  48 00 00 10 */	b lbl_8068F5DC
lbl_8068F5D0:
/* 8068F5D0  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 8068F5D4  38 80 00 00 */	li r4, 0
/* 8068F5D8  4B C3 25 A4 */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_8068F5DC:
/* 8068F5DC  7F A3 EB 78 */	mr r3, r29
/* 8068F5E0  7F C4 F3 78 */	mr r4, r30
/* 8068F5E4  4B 98 D8 18 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8068F5E8  2C 03 00 00 */	cmpwi r3, 0
/* 8068F5EC  41 82 00 08 */	beq lbl_8068F5F4
/* 8068F5F0  3B 80 00 00 */	li r28, 0
lbl_8068F5F4:
/* 8068F5F4  7F 80 07 75 */	extsb. r0, r28
/* 8068F5F8  41 82 00 10 */	beq lbl_8068F608
/* 8068F5FC  38 00 00 04 */	li r0, 4
/* 8068F600  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8068F604  48 00 00 18 */	b lbl_8068F61C
lbl_8068F608:
/* 8068F608  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8068F60C  54 00 00 3E */	slwi r0, r0, 0
/* 8068F610  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8068F614  38 00 00 00 */	li r0, 0
/* 8068F618  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_8068F61C:
/* 8068F61C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8068F620  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8068F624  38 A0 00 02 */	li r5, 2
/* 8068F628  38 C0 20 00 */	li r6, 0x2000
/* 8068F62C  4B BE 0F DC */	b cLib_addCalcAngleS2__FPssss
/* 8068F630  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8068F634  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 8068F638  38 A0 00 02 */	li r5, 2
/* 8068F63C  38 C0 20 00 */	li r6, 0x2000
/* 8068F640  4B BE 0F C8 */	b cLib_addCalcAngleS2__FPssss
/* 8068F644  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8068F648  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8068F64C  80 63 00 00 */	lwz r3, 0(r3)
/* 8068F650  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8068F654  4B 97 CD 88 */	b mDoMtx_YrotS__FPA4_fs
/* 8068F658  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068F65C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8068F660  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8068F664  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8068F668  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8068F66C  38 61 00 44 */	addi r3, r1, 0x44
/* 8068F670  38 81 00 38 */	addi r4, r1, 0x38
/* 8068F674  4B BE 18 78 */	b MtxPosition__FP4cXyzP4cXyz
/* 8068F678  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8068F67C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 8068F680  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8068F684  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 8068F688  38 61 00 2C */	addi r3, r1, 0x2c
/* 8068F68C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8068F690  3C A0 80 69 */	lis r5, l_HIO@ha
/* 8068F694  3B 85 10 A0 */	addi r28, r5, l_HIO@l
/* 8068F698  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8068F69C  4B BD 74 E8 */	b __ml__4cXyzCFf
/* 8068F6A0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8068F6A4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8068F6A8  7C 65 1B 78 */	mr r5, r3
/* 8068F6AC  4B CB 79 E4 */	b PSVECAdd
/* 8068F6B0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8068F6B4  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 8068F6B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8068F6BC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8068F6C0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8068F6C4  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 8068F6C8  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8068F6CC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8068F6D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068F6D4  40 80 00 08 */	bge lbl_8068F6DC
/* 8068F6D8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_8068F6DC:
/* 8068F6DC  34 7E 08 F0 */	addic. r3, r30, 0x8f0
/* 8068F6E0  41 82 00 30 */	beq lbl_8068F710
/* 8068F6E4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8068F6E8  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 8068F6EC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8068F6F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8068F6F4  EC 01 00 2A */	fadds f0, f1, f0
/* 8068F6F8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8068F6FC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8068F700  C0 03 00 08 */	lfs f0, 8(r3)
/* 8068F704  EC 02 00 32 */	fmuls f0, f2, f0
/* 8068F708  EC 01 00 2A */	fadds f0, f1, f0
/* 8068F70C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_8068F710:
/* 8068F710  C0 3E 06 B8 */	lfs f1, 0x6b8(r30)
/* 8068F714  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8068F718  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068F71C  40 81 00 58 */	ble lbl_8068F774
/* 8068F720  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068F724  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8068F728  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8068F72C  FC 00 08 50 */	fneg f0, f1
/* 8068F730  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8068F734  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8068F738  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8068F73C  80 63 00 00 */	lwz r3, 0(r3)
/* 8068F740  A8 9E 06 BC */	lha r4, 0x6bc(r30)
/* 8068F744  4B 97 CC 98 */	b mDoMtx_YrotS__FPA4_fs
/* 8068F748  38 61 00 44 */	addi r3, r1, 0x44
/* 8068F74C  38 81 00 38 */	addi r4, r1, 0x38
/* 8068F750  4B BE 17 9C */	b MtxPosition__FP4cXyzP4cXyz
/* 8068F754  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8068F758  38 81 00 38 */	addi r4, r1, 0x38
/* 8068F75C  7C 65 1B 78 */	mr r5, r3
/* 8068F760  4B CB 79 30 */	b PSVECAdd
/* 8068F764  38 7E 06 B8 */	addi r3, r30, 0x6b8
/* 8068F768  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068F76C  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 8068F770  4B BE 03 10 */	b cLib_addCalc0__FPfff
lbl_8068F774:
/* 8068F774  38 7E 07 18 */	addi r3, r30, 0x718
/* 8068F778  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8068F77C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8068F780  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8068F784  4B 9E 73 28 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8068F788  88 7E 06 A8 */	lbz r3, 0x6a8(r30)
/* 8068F78C  7C 60 07 75 */	extsb. r0, r3
/* 8068F790  40 81 01 B4 */	ble lbl_8068F944
/* 8068F794  7C 60 07 74 */	extsb r0, r3
/* 8068F798  2C 00 00 05 */	cmpwi r0, 5
/* 8068F79C  40 82 00 40 */	bne lbl_8068F7DC
/* 8068F7A0  A8 1E 06 7C */	lha r0, 0x67c(r30)
/* 8068F7A4  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8068F7A8  40 82 01 90 */	bne lbl_8068F938
/* 8068F7AC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068F7B0  4B BD 81 A4 */	b cM_rndF__Ff
/* 8068F7B4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8068F7B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068F7BC  40 80 01 7C */	bge lbl_8068F938
/* 8068F7C0  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8068F7C4  4B BD 81 C8 */	b cM_rndFX__Ff
/* 8068F7C8  FC 00 08 1E */	fctiwz f0, f1
/* 8068F7CC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8068F7D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8068F7D4  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 8068F7D8  48 00 01 60 */	b lbl_8068F938
lbl_8068F7DC:
/* 8068F7DC  2C 00 00 01 */	cmpwi r0, 1
/* 8068F7E0  40 82 00 30 */	bne lbl_8068F810
/* 8068F7E4  38 61 00 20 */	addi r3, r1, 0x20
/* 8068F7E8  38 9D 05 38 */	addi r4, r29, 0x538
/* 8068F7EC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8068F7F0  4B BD 73 44 */	b __mi__4cXyzCFRC3Vec
/* 8068F7F4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8068F7F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8068F7FC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8068F800  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8068F804  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8068F808  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8068F80C  48 00 00 60 */	b lbl_8068F86C
lbl_8068F810:
/* 8068F810  2C 00 00 02 */	cmpwi r0, 2
/* 8068F814  40 82 00 30 */	bne lbl_8068F844
/* 8068F818  38 61 00 14 */	addi r3, r1, 0x14
/* 8068F81C  38 9E 06 C8 */	addi r4, r30, 0x6c8
/* 8068F820  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8068F824  4B BD 73 10 */	b __mi__4cXyzCFRC3Vec
/* 8068F828  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8068F82C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8068F830  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8068F834  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8068F838  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8068F83C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8068F840  48 00 00 2C */	b lbl_8068F86C
lbl_8068F844:
/* 8068F844  38 61 00 08 */	addi r3, r1, 8
/* 8068F848  38 9D 05 38 */	addi r4, r29, 0x538
/* 8068F84C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8068F850  4B BD 72 E4 */	b __mi__4cXyzCFRC3Vec
/* 8068F854  C0 01 00 08 */	lfs f0, 8(r1)
/* 8068F858  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8068F85C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8068F860  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8068F864  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8068F868  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_8068F86C:
/* 8068F86C  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8068F870  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8068F874  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8068F878  EC 01 00 32 */	fmuls f0, f1, f0
/* 8068F87C  EC 02 00 2A */	fadds f0, f2, f0
/* 8068F880  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8068F884  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8068F888  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8068F88C  4B BD 7D E8 */	b cM_atan2s__Fff
/* 8068F890  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8068F894  7C 00 18 50 */	subf r0, r0, r3
/* 8068F898  7C 1B 07 34 */	extsh r27, r0
/* 8068F89C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8068F8A0  EC 20 00 32 */	fmuls f1, f0, f0
/* 8068F8A4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8068F8A8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8068F8AC  EC 41 00 2A */	fadds f2, f1, f0
/* 8068F8B0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068F8B4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8068F8B8  40 81 00 0C */	ble lbl_8068F8C4
/* 8068F8BC  FC 00 10 34 */	frsqrte f0, f2
/* 8068F8C0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8068F8C4:
/* 8068F8C4  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8068F8C8  4B BD 7D AC */	b cM_atan2s__Fff
/* 8068F8CC  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 8068F8D0  7C 00 1A 14 */	add r0, r0, r3
/* 8068F8D4  7C 1C 07 34 */	extsh r28, r0
/* 8068F8D8  2C 1B 27 10 */	cmpwi r27, 0x2710
/* 8068F8DC  40 81 00 0C */	ble lbl_8068F8E8
/* 8068F8E0  3B 60 27 10 */	li r27, 0x2710
/* 8068F8E4  48 00 00 10 */	b lbl_8068F8F4
lbl_8068F8E8:
/* 8068F8E8  2C 1B D8 F0 */	cmpwi r27, -10000
/* 8068F8EC  40 80 00 08 */	bge lbl_8068F8F4
/* 8068F8F0  3B 60 D8 F0 */	li r27, -10000
lbl_8068F8F4:
/* 8068F8F4  2C 1C 27 10 */	cmpwi r28, 0x2710
/* 8068F8F8  40 81 00 0C */	ble lbl_8068F904
/* 8068F8FC  3B 80 27 10 */	li r28, 0x2710
/* 8068F900  48 00 00 10 */	b lbl_8068F910
lbl_8068F904:
/* 8068F904  2C 1C D8 F0 */	cmpwi r28, -10000
/* 8068F908  40 80 00 08 */	bge lbl_8068F910
/* 8068F90C  3B 80 D8 F0 */	li r28, -10000
lbl_8068F910:
/* 8068F910  38 7E 06 AA */	addi r3, r30, 0x6aa
/* 8068F914  7F 64 07 34 */	extsh r4, r27
/* 8068F918  38 A0 00 02 */	li r5, 2
/* 8068F91C  38 C0 10 00 */	li r6, 0x1000
/* 8068F920  4B BE 0C E8 */	b cLib_addCalcAngleS2__FPssss
/* 8068F924  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 8068F928  7F 84 07 34 */	extsh r4, r28
/* 8068F92C  38 A0 00 02 */	li r5, 2
/* 8068F930  38 C0 10 00 */	li r6, 0x1000
/* 8068F934  4B BE 0C D4 */	b cLib_addCalcAngleS2__FPssss
lbl_8068F938:
/* 8068F938  38 00 00 00 */	li r0, 0
/* 8068F93C  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
/* 8068F940  48 00 00 34 */	b lbl_8068F974
lbl_8068F944:
/* 8068F944  38 7E 06 AA */	addi r3, r30, 0x6aa
/* 8068F948  38 80 00 00 */	li r4, 0
/* 8068F94C  38 A0 00 02 */	li r5, 2
/* 8068F950  38 C0 10 00 */	li r6, 0x1000
/* 8068F954  4B BE 0C B4 */	b cLib_addCalcAngleS2__FPssss
/* 8068F958  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 8068F95C  38 80 00 00 */	li r4, 0
/* 8068F960  38 A0 00 02 */	li r5, 2
/* 8068F964  38 C0 10 00 */	li r6, 0x1000
/* 8068F968  4B BE 0C A0 */	b cLib_addCalcAngleS2__FPssss
/* 8068F96C  38 00 00 00 */	li r0, 0
/* 8068F970  B0 1E 06 B4 */	sth r0, 0x6b4(r30)
lbl_8068F974:
/* 8068F974  38 7E 06 B2 */	addi r3, r30, 0x6b2
/* 8068F978  A8 9E 06 B4 */	lha r4, 0x6b4(r30)
/* 8068F97C  38 A0 00 04 */	li r5, 4
/* 8068F980  38 C0 04 00 */	li r6, 0x400
/* 8068F984  4B BE 0C 84 */	b cLib_addCalcAngleS2__FPssss
/* 8068F988  88 1E 06 A8 */	lbz r0, 0x6a8(r30)
/* 8068F98C  7C 00 07 75 */	extsb. r0, r0
/* 8068F990  41 80 00 40 */	blt lbl_8068F9D0
/* 8068F994  A8 1E 06 7C */	lha r0, 0x67c(r30)
/* 8068F998  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 8068F99C  40 82 00 3C */	bne lbl_8068F9D8
/* 8068F9A0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8068F9A4  4B BD 7F B0 */	b cM_rndF__Ff
/* 8068F9A8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8068F9AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068F9B0  40 80 00 28 */	bge lbl_8068F9D8
/* 8068F9B4  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8068F9B8  4B BD 7F D4 */	b cM_rndFX__Ff
/* 8068F9BC  FC 00 08 1E */	fctiwz f0, f1
/* 8068F9C0  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8068F9C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8068F9C8  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8068F9CC  48 00 00 0C */	b lbl_8068F9D8
lbl_8068F9D0:
/* 8068F9D0  38 00 00 00 */	li r0, 0
/* 8068F9D4  B0 1E 06 AE */	sth r0, 0x6ae(r30)
lbl_8068F9D8:
/* 8068F9D8  38 7E 06 AC */	addi r3, r30, 0x6ac
/* 8068F9DC  A8 9E 06 AE */	lha r4, 0x6ae(r30)
/* 8068F9E0  38 A0 00 04 */	li r5, 4
/* 8068F9E4  38 C0 04 00 */	li r6, 0x400
/* 8068F9E8  4B BE 0C 20 */	b cLib_addCalcAngleS2__FPssss
/* 8068F9EC  39 61 00 70 */	addi r11, r1, 0x70
/* 8068F9F0  4B CD 28 30 */	b _restgpr_27
/* 8068F9F4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8068F9F8  7C 08 03 A6 */	mtlr r0
/* 8068F9FC  38 21 00 70 */	addi r1, r1, 0x70
/* 8068FA00  4E 80 00 20 */	blr 
