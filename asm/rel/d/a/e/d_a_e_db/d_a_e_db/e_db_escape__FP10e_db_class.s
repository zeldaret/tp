lbl_8069E504:
/* 8069E504  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8069E508  7C 08 02 A6 */	mflr r0
/* 8069E50C  90 01 01 14 */	stw r0, 0x114(r1)
/* 8069E510  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8069E514  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 8069E518  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 8069E51C  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 8069E520  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8069E524  4B CC 3C A1 */	bl _savegpr_23
/* 8069E528  7C 7C 1B 78 */	mr r28, r3
/* 8069E52C  3C 60 80 6A */	lis r3, lit_3902@ha /* 0x806A190C@ha */
/* 8069E530  3B C3 19 0C */	addi r30, r3, lit_3902@l /* 0x806A190C@l */
/* 8069E534  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069E538  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069E53C  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 8069E540  38 00 00 00 */	li r0, 0
/* 8069E544  90 1C 10 10 */	stw r0, 0x1010(r28)
/* 8069E548  38 61 00 5C */	addi r3, r1, 0x5c
/* 8069E54C  4B 9D 92 65 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 8069E550  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8069E554  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8069E558  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8069E55C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8069E560  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8069E564  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8069E568  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8069E56C  EC 01 00 2A */	fadds f0, f1, f0
/* 8069E570  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8069E574  38 61 00 5C */	addi r3, r1, 0x5c
/* 8069E578  38 81 00 50 */	addi r4, r1, 0x50
/* 8069E57C  4B BC 97 AD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8069E580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069E584  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069E588  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8069E58C  7F A3 EB 78 */	mr r3, r29
/* 8069E590  38 81 00 5C */	addi r4, r1, 0x5c
/* 8069E594  4B 9D 5F 0D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8069E598  FF E0 08 90 */	fmr f31, f1
/* 8069E59C  7F 83 E3 78 */	mr r3, r28
/* 8069E5A0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8069E5A4  4B 97 C2 3D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8069E5A8  FF C0 08 90 */	fmr f30, f1
/* 8069E5AC  3B 40 00 01 */	li r26, 1
/* 8069E5B0  3B 20 00 02 */	li r25, 2
/* 8069E5B4  3B 00 00 01 */	li r24, 1
/* 8069E5B8  A8 1C 06 6C */	lha r0, 0x66c(r28)
/* 8069E5BC  28 00 00 32 */	cmplwi r0, 0x32
/* 8069E5C0  41 81 0A 04 */	bgt lbl_8069EFC4
/* 8069E5C4  3C 60 80 6A */	lis r3, lit_5359@ha /* 0x806A1AC8@ha */
/* 8069E5C8  38 63 1A C8 */	addi r3, r3, lit_5359@l /* 0x806A1AC8@l */
/* 8069E5CC  54 00 10 3A */	slwi r0, r0, 2
/* 8069E5D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8069E5D4  7C 09 03 A6 */	mtctr r0
/* 8069E5D8  4E 80 04 20 */	bctr 
lbl_8069E5DC:
/* 8069E5DC  3B 20 00 01 */	li r25, 1
/* 8069E5E0  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8069E5E4  D0 1C 08 40 */	stfs f0, 0x840(r28)
/* 8069E5E8  80 1C 10 88 */	lwz r0, 0x1088(r28)
/* 8069E5EC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8069E5F0  41 82 09 D4 */	beq lbl_8069EFC4
/* 8069E5F4  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8069E5F8  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8069E5FC  38 00 00 01 */	li r0, 1
/* 8069E600  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 8069E604  7F 83 E3 78 */	mr r3, r28
/* 8069E608  38 80 00 0F */	li r4, 0xf
/* 8069E60C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8069E610  38 A0 00 02 */	li r5, 2
/* 8069E614  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069E618  4B FF C5 1D */	bl anm_init__FP10e_db_classifUcf
/* 8069E61C  38 7C 09 DC */	addi r3, r28, 0x9dc
/* 8069E620  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8069E624  4B 9E 64 55 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 8069E628  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8069E62C  4B BC 93 29 */	bl cM_rndF__Ff
/* 8069E630  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8069E634  EC 00 08 2A */	fadds f0, f0, f1
/* 8069E638  FC 00 00 1E */	fctiwz f0, f0
/* 8069E63C  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 8069E640  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8069E644  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 8069E648  38 7C 12 58 */	addi r3, r28, 0x1258
/* 8069E64C  38 9C 12 5C */	addi r4, r28, 0x125c
/* 8069E650  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8069E654  38 DC 04 E4 */	addi r6, r28, 0x4e4
/* 8069E658  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069E65C  38 FC 01 0C */	addi r7, r28, 0x10c
/* 8069E660  39 00 00 01 */	li r8, 1
/* 8069E664  4B 97 E9 BD */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 8069E668  48 00 09 5C */	b lbl_8069EFC4
lbl_8069E66C:
/* 8069E66C  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8069E670  A8 9C 06 84 */	lha r4, 0x684(r28)
/* 8069E674  38 A0 00 08 */	li r5, 8
/* 8069E678  38 C0 04 00 */	li r6, 0x400
/* 8069E67C  4B BD 1F 8D */	bl cLib_addCalcAngleS2__FPssss
/* 8069E680  A8 1C 06 94 */	lha r0, 0x694(r28)
/* 8069E684  2C 00 00 00 */	cmpwi r0, 0
/* 8069E688  40 82 00 1C */	bne lbl_8069E6A4
/* 8069E68C  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 8069E690  28 00 00 00 */	cmplwi r0, 0
/* 8069E694  40 82 00 10 */	bne lbl_8069E6A4
/* 8069E698  38 00 00 02 */	li r0, 2
/* 8069E69C  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 8069E6A0  48 00 09 24 */	b lbl_8069EFC4
lbl_8069E6A4:
/* 8069E6A4  A8 1C 06 96 */	lha r0, 0x696(r28)
/* 8069E6A8  2C 00 00 00 */	cmpwi r0, 0
/* 8069E6AC  40 82 09 18 */	bne lbl_8069EFC4
/* 8069E6B0  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 8069E6B4  A8 1C 06 84 */	lha r0, 0x684(r28)
/* 8069E6B8  7C 03 00 50 */	subf r0, r3, r0
/* 8069E6BC  7C 00 07 34 */	extsh r0, r0
/* 8069E6C0  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8069E6C4  40 80 09 00 */	bge lbl_8069EFC4
/* 8069E6C8  2C 00 F0 00 */	cmpwi r0, -4096
/* 8069E6CC  40 81 08 F8 */	ble lbl_8069EFC4
/* 8069E6D0  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 8069E6D4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8069E6D8  40 80 08 EC */	bge lbl_8069EFC4
/* 8069E6DC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8069E6E0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8069E6E4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069E6E8  40 82 08 DC */	bne lbl_8069EFC4
/* 8069E6EC  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8069E6F0  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 8069E6F4  40 82 08 D0 */	bne lbl_8069EFC4
/* 8069E6F8  38 00 00 0F */	li r0, 0xf
/* 8069E6FC  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 8069E700  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015D@ha */
/* 8069E704  38 03 01 5D */	addi r0, r3, 0x015D /* 0x0007015D@l */
/* 8069E708  90 01 00 28 */	stw r0, 0x28(r1)
/* 8069E70C  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8069E710  38 81 00 28 */	addi r4, r1, 0x28
/* 8069E714  38 A0 FF FF */	li r5, -1
/* 8069E718  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8069E71C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069E720  7D 89 03 A6 */	mtctr r12
/* 8069E724  4E 80 04 21 */	bctrl 
/* 8069E728  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069E72C  4B BC 92 29 */	bl cM_rndF__Ff
/* 8069E730  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8069E734  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069E738  40 80 00 10 */	bge lbl_8069E748
/* 8069E73C  38 00 40 00 */	li r0, 0x4000
/* 8069E740  B0 1C 08 60 */	sth r0, 0x860(r28)
/* 8069E744  48 00 00 0C */	b lbl_8069E750
lbl_8069E748:
/* 8069E748  38 00 C0 00 */	li r0, -16384
/* 8069E74C  B0 1C 08 60 */	sth r0, 0x860(r28)
lbl_8069E750:
/* 8069E750  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 8069E754  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8069E758  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8069E75C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8069E760  38 00 E0 00 */	li r0, -8192
/* 8069E764  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 8069E768  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070083@ha */
/* 8069E76C  38 03 00 83 */	addi r0, r3, 0x0083 /* 0x00070083@l */
/* 8069E770  90 01 00 24 */	stw r0, 0x24(r1)
/* 8069E774  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8069E778  38 81 00 24 */	addi r4, r1, 0x24
/* 8069E77C  38 A0 FF FF */	li r5, -1
/* 8069E780  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8069E784  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069E788  7D 89 03 A6 */	mtctr r12
/* 8069E78C  4E 80 04 21 */	bctrl 
/* 8069E790  48 00 08 34 */	b lbl_8069EFC4
lbl_8069E794:
/* 8069E794  38 61 00 38 */	addi r3, r1, 0x38
/* 8069E798  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 8069E79C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8069E7A0  4B BC 83 95 */	bl __mi__4cXyzCFRC3Vec
/* 8069E7A4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8069E7A8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8069E7AC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8069E7B0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8069E7B4  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8069E7B8  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8069E7BC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069E7C0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8069E7C4  4B BC 8E B1 */	bl cM_atan2s__Fff
/* 8069E7C8  7C 64 1B 78 */	mr r4, r3
/* 8069E7CC  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8069E7D0  38 A0 00 08 */	li r5, 8
/* 8069E7D4  38 C0 08 00 */	li r6, 0x800
/* 8069E7D8  4B BD 1E 31 */	bl cLib_addCalcAngleS2__FPssss
/* 8069E7DC  38 61 00 50 */	addi r3, r1, 0x50
/* 8069E7E0  4B CA 89 59 */	bl PSVECSquareMag
/* 8069E7E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069E7E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069E7EC  40 81 00 58 */	ble lbl_8069E844
/* 8069E7F0  FC 00 08 34 */	frsqrte f0, f1
/* 8069E7F4  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8069E7F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8069E7FC  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8069E800  FC 00 00 32 */	fmul f0, f0, f0
/* 8069E804  FC 01 00 32 */	fmul f0, f1, f0
/* 8069E808  FC 03 00 28 */	fsub f0, f3, f0
/* 8069E80C  FC 02 00 32 */	fmul f0, f2, f0
/* 8069E810  FC 44 00 32 */	fmul f2, f4, f0
/* 8069E814  FC 00 00 32 */	fmul f0, f0, f0
/* 8069E818  FC 01 00 32 */	fmul f0, f1, f0
/* 8069E81C  FC 03 00 28 */	fsub f0, f3, f0
/* 8069E820  FC 02 00 32 */	fmul f0, f2, f0
/* 8069E824  FC 44 00 32 */	fmul f2, f4, f0
/* 8069E828  FC 00 00 32 */	fmul f0, f0, f0
/* 8069E82C  FC 01 00 32 */	fmul f0, f1, f0
/* 8069E830  FC 03 00 28 */	fsub f0, f3, f0
/* 8069E834  FC 02 00 32 */	fmul f0, f2, f0
/* 8069E838  FC 21 00 32 */	fmul f1, f1, f0
/* 8069E83C  FC 20 08 18 */	frsp f1, f1
/* 8069E840  48 00 00 88 */	b lbl_8069E8C8
lbl_8069E844:
/* 8069E844  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8069E848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069E84C  40 80 00 10 */	bge lbl_8069E85C
/* 8069E850  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8069E854  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8069E858  48 00 00 70 */	b lbl_8069E8C8
lbl_8069E85C:
/* 8069E85C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8069E860  80 81 00 08 */	lwz r4, 8(r1)
/* 8069E864  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8069E868  3C 00 7F 80 */	lis r0, 0x7f80
/* 8069E86C  7C 03 00 00 */	cmpw r3, r0
/* 8069E870  41 82 00 14 */	beq lbl_8069E884
/* 8069E874  40 80 00 40 */	bge lbl_8069E8B4
/* 8069E878  2C 03 00 00 */	cmpwi r3, 0
/* 8069E87C  41 82 00 20 */	beq lbl_8069E89C
/* 8069E880  48 00 00 34 */	b lbl_8069E8B4
lbl_8069E884:
/* 8069E884  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069E888  41 82 00 0C */	beq lbl_8069E894
/* 8069E88C  38 00 00 01 */	li r0, 1
/* 8069E890  48 00 00 28 */	b lbl_8069E8B8
lbl_8069E894:
/* 8069E894  38 00 00 02 */	li r0, 2
/* 8069E898  48 00 00 20 */	b lbl_8069E8B8
lbl_8069E89C:
/* 8069E89C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069E8A0  41 82 00 0C */	beq lbl_8069E8AC
/* 8069E8A4  38 00 00 05 */	li r0, 5
/* 8069E8A8  48 00 00 10 */	b lbl_8069E8B8
lbl_8069E8AC:
/* 8069E8AC  38 00 00 03 */	li r0, 3
/* 8069E8B0  48 00 00 08 */	b lbl_8069E8B8
lbl_8069E8B4:
/* 8069E8B4  38 00 00 04 */	li r0, 4
lbl_8069E8B8:
/* 8069E8B8  2C 00 00 01 */	cmpwi r0, 1
/* 8069E8BC  40 82 00 0C */	bne lbl_8069E8C8
/* 8069E8C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8069E8C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8069E8C8:
/* 8069E8C8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8069E8CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069E8D0  40 80 06 F4 */	bge lbl_8069EFC4
/* 8069E8D4  38 00 00 03 */	li r0, 3
/* 8069E8D8  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 8069E8DC  38 00 00 19 */	li r0, 0x19
/* 8069E8E0  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 8069E8E4  7F 83 E3 78 */	mr r3, r28
/* 8069E8E8  38 80 00 13 */	li r4, 0x13
/* 8069E8EC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8069E8F0  38 A0 00 02 */	li r5, 2
/* 8069E8F4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069E8F8  4B FF C2 E9 */	bl leaf_anm_init__FP10e_db_classifUcf
/* 8069E8FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 8069E900  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 8069E904  90 01 00 20 */	stw r0, 0x20(r1)
/* 8069E908  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8069E90C  38 81 00 20 */	addi r4, r1, 0x20
/* 8069E910  38 A0 00 00 */	li r5, 0
/* 8069E914  38 C0 FF FF */	li r6, -1
/* 8069E918  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8069E91C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8069E920  7D 89 03 A6 */	mtctr r12
/* 8069E924  4E 80 04 21 */	bctrl 
/* 8069E928  48 00 06 9C */	b lbl_8069EFC4
lbl_8069E92C:
/* 8069E92C  3B 20 00 00 */	li r25, 0
/* 8069E930  38 7C 08 40 */	addi r3, r28, 0x840
/* 8069E934  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069E938  FC 40 08 90 */	fmr f2, f1
/* 8069E93C  4B BD 11 45 */	bl cLib_addCalc0__FPfff
/* 8069E940  C0 1C 04 F8 */	lfs f0, 0x4f8(r28)
/* 8069E944  FC 00 02 10 */	fabs f0, f0
/* 8069E948  FC 60 00 18 */	frsp f3, f0
/* 8069E94C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8069E950  C0 3C 04 A8 */	lfs f1, 0x4a8(r28)
/* 8069E954  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 8069E958  4B BD 10 E5 */	bl cLib_addCalc2__FPffff
/* 8069E95C  C0 1C 05 00 */	lfs f0, 0x500(r28)
/* 8069E960  FC 00 02 10 */	fabs f0, f0
/* 8069E964  FC 60 00 18 */	frsp f3, f0
/* 8069E968  38 7C 04 D8 */	addi r3, r28, 0x4d8
/* 8069E96C  C0 3C 04 B0 */	lfs f1, 0x4b0(r28)
/* 8069E970  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 8069E974  4B BD 10 C9 */	bl cLib_addCalc2__FPffff
/* 8069E978  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 8069E97C  38 80 C0 00 */	li r4, -16384
/* 8069E980  38 A0 00 04 */	li r5, 4
/* 8069E984  38 C0 04 00 */	li r6, 0x400
/* 8069E988  4B BD 1C 81 */	bl cLib_addCalcAngleS2__FPssss
/* 8069E98C  A8 1C 06 94 */	lha r0, 0x694(r28)
/* 8069E990  2C 00 00 00 */	cmpwi r0, 0
/* 8069E994  40 82 06 30 */	bne lbl_8069EFC4
/* 8069E998  38 00 00 01 */	li r0, 1
/* 8069E99C  B0 1C 06 6A */	sth r0, 0x66a(r28)
/* 8069E9A0  38 00 00 00 */	li r0, 0
/* 8069E9A4  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 8069E9A8  38 00 00 1E */	li r0, 0x1e
/* 8069E9AC  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 8069E9B0  38 00 00 2D */	li r0, 0x2d
/* 8069E9B4  90 1C 10 10 */	stw r0, 0x1010(r28)
/* 8069E9B8  48 00 06 0C */	b lbl_8069EFC4
lbl_8069E9BC:
/* 8069E9BC  7F 83 E3 78 */	mr r3, r28
/* 8069E9C0  38 80 00 0B */	li r4, 0xb
/* 8069E9C4  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 8069E9C8  38 A0 00 00 */	li r5, 0
/* 8069E9CC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069E9D0  4B FF C1 65 */	bl anm_init__FP10e_db_classifUcf
/* 8069E9D4  38 00 00 0B */	li r0, 0xb
/* 8069E9D8  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 8069E9DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070084@ha */
/* 8069E9E0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x00070084@l */
/* 8069E9E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8069E9E8  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8069E9EC  38 81 00 1C */	addi r4, r1, 0x1c
/* 8069E9F0  38 A0 FF FF */	li r5, -1
/* 8069E9F4  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8069E9F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069E9FC  7D 89 03 A6 */	mtctr r12
/* 8069EA00  4E 80 04 21 */	bctrl 
/* 8069EA04  48 00 05 C0 */	b lbl_8069EFC4
lbl_8069EA08:
/* 8069EA08  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 8069EA0C  38 80 00 01 */	li r4, 1
/* 8069EA10  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8069EA14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069EA18  40 82 00 18 */	bne lbl_8069EA30
/* 8069EA1C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8069EA20  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8069EA24  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8069EA28  41 82 00 08 */	beq lbl_8069EA30
/* 8069EA2C  38 80 00 00 */	li r4, 0
lbl_8069EA30:
/* 8069EA30  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8069EA34  41 82 05 90 */	beq lbl_8069EFC4
/* 8069EA38  38 00 00 01 */	li r0, 1
/* 8069EA3C  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 8069EA40  7F 83 E3 78 */	mr r3, r28
/* 8069EA44  38 80 00 0F */	li r4, 0xf
/* 8069EA48  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8069EA4C  38 A0 00 02 */	li r5, 2
/* 8069EA50  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069EA54  4B FF C0 E1 */	bl anm_init__FP10e_db_classifUcf
/* 8069EA58  48 00 05 6C */	b lbl_8069EFC4
lbl_8069EA5C:
/* 8069EA5C  3B 20 00 01 */	li r25, 1
/* 8069EA60  A8 1C 08 60 */	lha r0, 0x860(r28)
/* 8069EA64  2C 00 00 00 */	cmpwi r0, 0
/* 8069EA68  40 82 00 2C */	bne lbl_8069EA94
/* 8069EA6C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069EA70  4B BC 8E E5 */	bl cM_rndF__Ff
/* 8069EA74  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8069EA78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069EA7C  40 80 00 10 */	bge lbl_8069EA8C
/* 8069EA80  38 00 40 00 */	li r0, 0x4000
/* 8069EA84  B0 1C 08 60 */	sth r0, 0x860(r28)
/* 8069EA88  48 00 00 0C */	b lbl_8069EA94
lbl_8069EA8C:
/* 8069EA8C  38 00 C0 00 */	li r0, -16384
/* 8069EA90  B0 1C 08 60 */	sth r0, 0x860(r28)
lbl_8069EA94:
/* 8069EA94  80 1C 08 D0 */	lwz r0, 0x8d0(r28)
/* 8069EA98  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8069EA9C  90 1C 08 D0 */	stw r0, 0x8d0(r28)
/* 8069EAA0  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 8069EAA4  38 80 20 00 */	li r4, 0x2000
/* 8069EAA8  38 A0 00 02 */	li r5, 2
/* 8069EAAC  38 C0 04 00 */	li r6, 0x400
/* 8069EAB0  4B BD 1B 59 */	bl cLib_addCalcAngleS2__FPssss
/* 8069EAB4  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 8069EAB8  A8 9C 08 60 */	lha r4, 0x860(r28)
/* 8069EABC  38 A0 00 02 */	li r5, 2
/* 8069EAC0  38 C0 08 00 */	li r6, 0x800
/* 8069EAC4  4B BD 1B 45 */	bl cLib_addCalcAngleS2__FPssss
/* 8069EAC8  A8 1C 06 96 */	lha r0, 0x696(r28)
/* 8069EACC  2C 00 00 00 */	cmpwi r0, 0
/* 8069EAD0  40 82 00 98 */	bne lbl_8069EB68
/* 8069EAD4  38 00 00 02 */	li r0, 2
/* 8069EAD8  98 1C 0B 14 */	stb r0, 0xb14(r28)
/* 8069EADC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8069EAE0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8069EAE4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069EAE8  40 82 00 80 */	bne lbl_8069EB68
/* 8069EAEC  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8069EAF0  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 8069EAF4  40 82 00 74 */	bne lbl_8069EB68
/* 8069EAF8  38 7C 09 DC */	addi r3, r28, 0x9dc
/* 8069EAFC  4B 9E 57 C5 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8069EB00  28 03 00 00 */	cmplwi r3, 0
/* 8069EB04  41 82 00 64 */	beq lbl_8069EB68
/* 8069EB08  80 1C 0A 38 */	lwz r0, 0xa38(r28)
/* 8069EB0C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069EB10  40 82 00 58 */	bne lbl_8069EB68
/* 8069EB14  38 00 00 14 */	li r0, 0x14
/* 8069EB18  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 8069EB1C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8069EB20  D0 1C 06 8C */	stfs f0, 0x68c(r28)
/* 8069EB24  38 00 00 78 */	li r0, 0x78
/* 8069EB28  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 8069EB2C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8069EB30  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8069EB34  64 00 00 02 */	oris r0, r0, 2
/* 8069EB38  90 03 05 70 */	stw r0, 0x570(r3)
/* 8069EB3C  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 8069EB40  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8069EB44  7C 03 00 50 */	subf r0, r3, r0
/* 8069EB48  B0 1C 08 5E */	sth r0, 0x85e(r28)
/* 8069EB4C  7F 83 E3 78 */	mr r3, r28
/* 8069EB50  38 80 00 07 */	li r4, 7
/* 8069EB54  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 8069EB58  38 A0 00 02 */	li r5, 2
/* 8069EB5C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069EB60  4B FF BF D5 */	bl anm_init__FP10e_db_classifUcf
/* 8069EB64  48 00 04 60 */	b lbl_8069EFC4
lbl_8069EB68:
/* 8069EB68  80 1C 10 88 */	lwz r0, 0x1088(r28)
/* 8069EB6C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8069EB70  41 82 04 54 */	beq lbl_8069EFC4
/* 8069EB74  38 00 00 01 */	li r0, 1
/* 8069EB78  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 8069EB7C  38 00 00 1E */	li r0, 0x1e
/* 8069EB80  B0 1C 06 96 */	sth r0, 0x696(r28)
/* 8069EB84  7F 83 E3 78 */	mr r3, r28
/* 8069EB88  38 80 00 0F */	li r4, 0xf
/* 8069EB8C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8069EB90  38 A0 00 02 */	li r5, 2
/* 8069EB94  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069EB98  4B FF BF 9D */	bl anm_init__FP10e_db_classifUcf
/* 8069EB9C  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 8069EBA0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8069EBA4  38 7C 12 58 */	addi r3, r28, 0x1258
/* 8069EBA8  38 9C 12 5C */	addi r4, r28, 0x125c
/* 8069EBAC  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8069EBB0  38 DC 04 E4 */	addi r6, r28, 0x4e4
/* 8069EBB4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069EBB8  38 FC 01 0C */	addi r7, r28, 0x10c
/* 8069EBBC  39 00 00 01 */	li r8, 1
/* 8069EBC0  4B 97 E4 61 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 8069EBC4  48 00 04 00 */	b lbl_8069EFC4
lbl_8069EBC8:
/* 8069EBC8  38 00 00 01 */	li r0, 1
/* 8069EBCC  98 1C 08 51 */	stb r0, 0x851(r28)
/* 8069EBD0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015E@ha */
/* 8069EBD4  38 03 01 5E */	addi r0, r3, 0x015E /* 0x0007015E@l */
/* 8069EBD8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8069EBDC  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8069EBE0  38 81 00 18 */	addi r4, r1, 0x18
/* 8069EBE4  38 A0 FF FF */	li r5, -1
/* 8069EBE8  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8069EBEC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8069EBF0  7D 89 03 A6 */	mtctr r12
/* 8069EBF4  4E 80 04 21 */	bctrl 
/* 8069EBF8  3B 40 00 00 */	li r26, 0
/* 8069EBFC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8069EC00  4B AC 08 F1 */	bl setLookPos__9daPy_py_cFP4cXyz
/* 8069EC04  3B 20 00 00 */	li r25, 0
/* 8069EC08  80 1C 08 D0 */	lwz r0, 0x8d0(r28)
/* 8069EC0C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8069EC10  90 1C 08 D0 */	stw r0, 0x8d0(r28)
/* 8069EC14  38 7C 10 5C */	addi r3, r28, 0x105c
/* 8069EC18  7F A4 EB 78 */	mr r4, r29
/* 8069EC1C  4B 9D 7E 91 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8069EC20  80 1C 10 88 */	lwz r0, 0x1088(r28)
/* 8069EC24  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8069EC28  40 82 01 A8 */	bne lbl_8069EDD0
/* 8069EC2C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8069EC30  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8069EC34  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 8069EC38  41 82 01 98 */	beq lbl_8069EDD0
/* 8069EC3C  A8 1C 06 94 */	lha r0, 0x694(r28)
/* 8069EC40  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8069EC44  40 82 00 24 */	bne lbl_8069EC68
/* 8069EC48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069EC4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069EC50  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 8069EC54  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8069EC58  EC 01 00 2A */	fadds f0, f1, f0
/* 8069EC5C  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 8069EC60  38 00 00 00 */	li r0, 0
/* 8069EC64  98 03 5E B6 */	stb r0, 0x5eb6(r3)
lbl_8069EC68:
/* 8069EC68  A8 1C 06 68 */	lha r0, 0x668(r28)
/* 8069EC6C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8069EC70  40 82 00 2C */	bne lbl_8069EC9C
/* 8069EC74  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8069EC78  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8069EC7C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8069EC80  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8069EC84  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8069EC88  38 7D 4C 9C */	addi r3, r29, 0x4c9c
/* 8069EC8C  38 80 00 03 */	li r4, 3
/* 8069EC90  38 A0 00 1F */	li r5, 0x1f
/* 8069EC94  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8069EC98  4B 9D 0D 8D */	bl StartShock__12dVibration_cFii4cXyz
lbl_8069EC9C:
/* 8069EC9C  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 8069ECA0  A8 1C 08 5E */	lha r0, 0x85e(r28)
/* 8069ECA4  7C 03 02 14 */	add r0, r3, r0
/* 8069ECA8  7C 17 07 34 */	extsh r23, r0
/* 8069ECAC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069ECB0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069ECB4  80 63 00 00 */	lwz r3, 0(r3)
/* 8069ECB8  7E E4 BB 78 */	mr r4, r23
/* 8069ECBC  4B 96 D7 21 */	bl mDoMtx_YrotS__FPA4_fs
/* 8069ECC0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069ECC4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8069ECC8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8069ECCC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8069ECD0  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8069ECD4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8069ECD8  38 61 00 50 */	addi r3, r1, 0x50
/* 8069ECDC  38 9C 06 74 */	addi r4, r28, 0x674
/* 8069ECE0  4B BD 22 0D */	bl MtxPosition__FP4cXyzP4cXyz
/* 8069ECE4  38 7C 06 74 */	addi r3, r28, 0x674
/* 8069ECE8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8069ECEC  7C 65 1B 78 */	mr r5, r3
/* 8069ECF0  4B CA 83 A1 */	bl PSVECAdd
/* 8069ECF4  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8069ECF8  7E E4 BB 78 */	mr r4, r23
/* 8069ECFC  38 A0 00 02 */	li r5, 2
/* 8069ED00  38 C0 20 00 */	li r6, 0x2000
/* 8069ED04  4B BD 19 05 */	bl cLib_addCalcAngleS2__FPssss
/* 8069ED08  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8069ED0C  C0 3C 06 74 */	lfs f1, 0x674(r28)
/* 8069ED10  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069ED14  C0 7C 06 8C */	lfs f3, 0x68c(r28)
/* 8069ED18  4B BD 0D 25 */	bl cLib_addCalc2__FPffff
/* 8069ED1C  38 7C 04 D8 */	addi r3, r28, 0x4d8
/* 8069ED20  C0 3C 06 7C */	lfs f1, 0x67c(r28)
/* 8069ED24  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069ED28  C0 7C 06 8C */	lfs f3, 0x68c(r28)
/* 8069ED2C  4B BD 0D 11 */	bl cLib_addCalc2__FPffff
/* 8069ED30  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 8069ED34  C0 3C 06 78 */	lfs f1, 0x678(r28)
/* 8069ED38  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069ED3C  C0 7C 06 8C */	lfs f3, 0x68c(r28)
/* 8069ED40  4B BD 0C FD */	bl cLib_addCalc2__FPffff
/* 8069ED44  38 7C 06 8C */	addi r3, r28, 0x68c
/* 8069ED48  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 8069ED4C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069ED50  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8069ED54  4B BD 0C E9 */	bl cLib_addCalc2__FPffff
/* 8069ED58  A8 1C 06 68 */	lha r0, 0x668(r28)
/* 8069ED5C  1C 00 2E E0 */	mulli r0, r0, 0x2ee0
/* 8069ED60  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069ED64  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8069ED68  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8069ED6C  7C 43 04 2E */	lfsx f2, r3, r0
/* 8069ED70  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 8069ED74  A8 1C 08 60 */	lha r0, 0x860(r28)
/* 8069ED78  C8 3E 00 A0 */	lfd f1, 0xa0(r30)
/* 8069ED7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8069ED80  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8069ED84  3C 00 43 30 */	lis r0, 0x4330
/* 8069ED88  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 8069ED8C  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 8069ED90  EC 20 08 28 */	fsubs f1, f0, f1
/* 8069ED94  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 8069ED98  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8069ED9C  EC 01 00 2A */	fadds f0, f1, f0
/* 8069EDA0  FC 00 00 1E */	fctiwz f0, f0
/* 8069EDA4  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 8069EDA8  80 81 00 BC */	lwz r4, 0xbc(r1)
/* 8069EDAC  38 A0 00 02 */	li r5, 2
/* 8069EDB0  38 C0 20 00 */	li r6, 0x2000
/* 8069EDB4  4B BD 18 55 */	bl cLib_addCalcAngleS2__FPssss
/* 8069EDB8  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 8069EDBC  38 80 00 00 */	li r4, 0
/* 8069EDC0  38 A0 00 02 */	li r5, 2
/* 8069EDC4  38 C0 08 00 */	li r6, 0x800
/* 8069EDC8  4B BD 18 41 */	bl cLib_addCalcAngleS2__FPssss
/* 8069EDCC  48 00 01 F8 */	b lbl_8069EFC4
lbl_8069EDD0:
/* 8069EDD0  38 00 00 15 */	li r0, 0x15
/* 8069EDD4  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 8069EDD8  38 00 00 1E */	li r0, 0x1e
/* 8069EDDC  B0 1C 06 96 */	sth r0, 0x696(r28)
/* 8069EDE0  7F 83 E3 78 */	mr r3, r28
/* 8069EDE4  38 80 00 10 */	li r4, 0x10
/* 8069EDE8  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 8069EDEC  38 A0 00 00 */	li r5, 0
/* 8069EDF0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069EDF4  4B FF BD 41 */	bl anm_init__FP10e_db_classifUcf
/* 8069EDF8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015F@ha */
/* 8069EDFC  38 03 01 5F */	addi r0, r3, 0x015F /* 0x0007015F@l */
/* 8069EE00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8069EE04  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8069EE08  38 81 00 14 */	addi r4, r1, 0x14
/* 8069EE0C  38 A0 FF FF */	li r5, -1
/* 8069EE10  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8069EE14  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069EE18  7D 89 03 A6 */	mtctr r12
/* 8069EE1C  4E 80 04 21 */	bctrl 
/* 8069EE20  80 1C 10 88 */	lwz r0, 0x1088(r28)
/* 8069EE24  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8069EE28  41 82 00 10 */	beq lbl_8069EE38
/* 8069EE2C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069EE30  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8069EE34  48 00 00 0C */	b lbl_8069EE40
lbl_8069EE38:
/* 8069EE38  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8069EE3C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_8069EE40:
/* 8069EE40  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8069EE44  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8069EE48  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8069EE4C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8069EE50  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 8069EE54  90 03 05 70 */	stw r0, 0x570(r3)
/* 8069EE58  3B 20 00 01 */	li r25, 1
/* 8069EE5C  48 00 01 68 */	b lbl_8069EFC4
lbl_8069EE60:
/* 8069EE60  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 8069EE64  38 80 00 01 */	li r4, 1
/* 8069EE68  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8069EE6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069EE70  40 82 00 18 */	bne lbl_8069EE88
/* 8069EE74  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8069EE78  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8069EE7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8069EE80  41 82 00 08 */	beq lbl_8069EE88
/* 8069EE84  38 80 00 00 */	li r4, 0
lbl_8069EE88:
/* 8069EE88  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8069EE8C  41 82 01 38 */	beq lbl_8069EFC4
/* 8069EE90  7F 83 E3 78 */	mr r3, r28
/* 8069EE94  38 80 00 0F */	li r4, 0xf
/* 8069EE98  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8069EE9C  38 A0 00 02 */	li r5, 2
/* 8069EEA0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069EEA4  4B FF BC 91 */	bl anm_init__FP10e_db_classifUcf
/* 8069EEA8  38 00 00 01 */	li r0, 1
/* 8069EEAC  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 8069EEB0  48 00 01 14 */	b lbl_8069EFC4
lbl_8069EEB4:
/* 8069EEB4  3B 00 00 00 */	li r24, 0
/* 8069EEB8  3B 20 00 00 */	li r25, 0
/* 8069EEBC  3B 40 00 00 */	li r26, 0
/* 8069EEC0  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 8069EEC4  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8069EEC8  EC 20 F8 2A */	fadds f1, f0, f31
/* 8069EECC  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 8069EED0  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8069EED4  4B BD 0B 69 */	bl cLib_addCalc2__FPffff
/* 8069EED8  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 8069EEDC  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 8069EEE0  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 8069EEE4  4B BD 0B 9D */	bl cLib_addCalc0__FPfff
/* 8069EEE8  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8069EEEC  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 8069EEF0  EC 01 00 2A */	fadds f0, f1, f0
/* 8069EEF4  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8069EEF8  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 8069EEFC  A8 9C 08 60 */	lha r4, 0x860(r28)
/* 8069EF00  38 A0 00 02 */	li r5, 2
/* 8069EF04  38 C0 08 00 */	li r6, 0x800
/* 8069EF08  4B BD 17 01 */	bl cLib_addCalcAngleS2__FPssss
/* 8069EF0C  38 7C 08 4E */	addi r3, r28, 0x84e
/* 8069EF10  38 80 00 00 */	li r4, 0
/* 8069EF14  38 A0 00 01 */	li r5, 1
/* 8069EF18  38 C0 00 96 */	li r6, 0x96
/* 8069EF1C  4B BD 16 ED */	bl cLib_addCalcAngleS2__FPssss
/* 8069EF20  A8 1C 06 68 */	lha r0, 0x668(r28)
/* 8069EF24  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 8069EF28  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069EF2C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8069EF30  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8069EF34  7C 23 04 2E */	lfsx f1, r3, r0
/* 8069EF38  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 8069EF3C  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 8069EF40  EC 00 00 72 */	fmuls f0, f0, f1
/* 8069EF44  FC 00 00 1E */	fctiwz f0, f0
/* 8069EF48  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 8069EF4C  80 81 00 BC */	lwz r4, 0xbc(r1)
/* 8069EF50  38 A0 00 02 */	li r5, 2
/* 8069EF54  38 C0 08 00 */	li r6, 0x800
/* 8069EF58  4B BD 16 B1 */	bl cLib_addCalcAngleS2__FPssss
/* 8069EF5C  A8 1C 06 94 */	lha r0, 0x694(r28)
/* 8069EF60  2C 00 00 00 */	cmpwi r0, 0
/* 8069EF64  40 82 00 60 */	bne lbl_8069EFC4
/* 8069EF68  7F 83 E3 78 */	mr r3, r28
/* 8069EF6C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8069EF70  38 A0 00 09 */	li r5, 9
/* 8069EF74  38 C0 00 00 */	li r6, 0
/* 8069EF78  38 E0 00 08 */	li r7, 8
/* 8069EF7C  4B 97 DB 5D */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8069EF80  7F 83 E3 78 */	mr r3, r28
/* 8069EF84  4B 97 AC F9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8069EF88  A0 9C 04 94 */	lhz r4, 0x494(r28)
/* 8069EF8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069EF90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069EF94  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 8069EF98  7C 05 07 74 */	extsb r5, r0
/* 8069EF9C  4B 99 66 A9 */	bl onActor__10dSv_info_cFii
/* 8069EFA0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8069EFA4  54 04 46 3E */	srwi r4, r0, 0x18
/* 8069EFA8  28 04 00 FF */	cmplwi r4, 0xff
/* 8069EFAC  41 82 00 18 */	beq lbl_8069EFC4
/* 8069EFB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069EFB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069EFB8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8069EFBC  7C 05 07 74 */	extsb r5, r0
/* 8069EFC0  4B 99 62 41 */	bl onSwitch__10dSv_info_cFii
lbl_8069EFC4:
/* 8069EFC4  7F 20 07 75 */	extsb. r0, r25
/* 8069EFC8  41 82 02 08 */	beq lbl_8069F1D0
/* 8069EFCC  7F 20 07 74 */	extsb r0, r25
/* 8069EFD0  2C 00 00 02 */	cmpwi r0, 2
/* 8069EFD4  40 82 00 98 */	bne lbl_8069F06C
/* 8069EFD8  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 8069EFDC  38 80 00 00 */	li r4, 0
/* 8069EFE0  38 A0 00 02 */	li r5, 2
/* 8069EFE4  38 C0 08 00 */	li r6, 0x800
/* 8069EFE8  4B BD 16 21 */	bl cLib_addCalcAngleS2__FPssss
/* 8069EFEC  38 7C 04 E8 */	addi r3, r28, 0x4e8
/* 8069EFF0  38 80 00 00 */	li r4, 0
/* 8069EFF4  38 A0 00 02 */	li r5, 2
/* 8069EFF8  38 C0 08 00 */	li r6, 0x800
/* 8069EFFC  4B BD 16 0D */	bl cLib_addCalcAngleS2__FPssss
/* 8069F000  A8 1C 06 96 */	lha r0, 0x696(r28)
/* 8069F004  2C 00 00 0A */	cmpwi r0, 0xa
/* 8069F008  40 80 00 18 */	bge lbl_8069F020
/* 8069F00C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 8069F010  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 8069F014  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069F018  FC 60 10 90 */	fmr f3, f2
/* 8069F01C  4B BD 0A 21 */	bl cLib_addCalc2__FPffff
lbl_8069F020:
/* 8069F020  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 8069F024  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8069F028  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 8069F02C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8069F030  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8069F034  EC 01 00 24 */	fdivs f0, f1, f0
/* 8069F038  FC 00 00 1E */	fctiwz f0, f0
/* 8069F03C  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 8069F040  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 8069F044  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069F048  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8069F04C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8069F050  7C 23 04 2E */	lfsx f1, r3, r0
/* 8069F054  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 8069F058  EC 00 00 72 */	fmuls f0, f0, f1
/* 8069F05C  FC 00 00 1E */	fctiwz f0, f0
/* 8069F060  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 8069F064  80 81 00 B4 */	lwz r4, 0xb4(r1)
/* 8069F068  48 00 00 08 */	b lbl_8069F070
lbl_8069F06C:
/* 8069F06C  38 80 00 00 */	li r4, 0
lbl_8069F070:
/* 8069F070  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069F074  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069F078  80 63 00 00 */	lwz r3, 0(r3)
/* 8069F07C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8069F080  7C 04 02 14 */	add r0, r4, r0
/* 8069F084  7C 04 07 34 */	extsh r4, r0
/* 8069F088  4B 96 D3 55 */	bl mDoMtx_YrotS__FPA4_fs
/* 8069F08C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069F090  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8069F094  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8069F098  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 8069F09C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8069F0A0  38 61 00 50 */	addi r3, r1, 0x50
/* 8069F0A4  38 81 00 44 */	addi r4, r1, 0x44
/* 8069F0A8  4B BD 1E 45 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8069F0AC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8069F0B0  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 8069F0B4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8069F0B8  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 8069F0BC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8069F0C0  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 8069F0C4  7C 65 1B 78 */	mr r5, r3
/* 8069F0C8  4B CA 7F C9 */	bl PSVECAdd
/* 8069F0CC  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 8069F0D0  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8069F0D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069F0D8  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8069F0DC  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 8069F0E0  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 8069F0E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069F0E8  40 80 00 08 */	bge lbl_8069F0F0
/* 8069F0EC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_8069F0F0:
/* 8069F0F0  C0 3C 08 58 */	lfs f1, 0x858(r28)
/* 8069F0F4  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8069F0F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069F0FC  40 81 00 48 */	ble lbl_8069F144
/* 8069F100  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069F104  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8069F108  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8069F10C  FC 00 08 50 */	fneg f0, f1
/* 8069F110  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8069F114  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069F118  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069F11C  80 63 00 00 */	lwz r3, 0(r3)
/* 8069F120  A8 9C 08 5C */	lha r4, 0x85c(r28)
/* 8069F124  4B 96 D2 B9 */	bl mDoMtx_YrotS__FPA4_fs
/* 8069F128  38 61 00 50 */	addi r3, r1, 0x50
/* 8069F12C  38 81 00 44 */	addi r4, r1, 0x44
/* 8069F130  4B BD 1D BD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8069F134  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8069F138  38 81 00 44 */	addi r4, r1, 0x44
/* 8069F13C  7C 65 1B 78 */	mr r5, r3
/* 8069F140  4B CA 7F 51 */	bl PSVECAdd
lbl_8069F144:
/* 8069F144  34 7C 08 68 */	addic. r3, r28, 0x868
/* 8069F148  41 82 00 30 */	beq lbl_8069F178
/* 8069F14C  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 8069F150  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 8069F154  C0 03 00 00 */	lfs f0, 0(r3)
/* 8069F158  EC 02 00 32 */	fmuls f0, f2, f0
/* 8069F15C  EC 01 00 2A */	fadds f0, f1, f0
/* 8069F160  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8069F164  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 8069F168  C0 03 00 08 */	lfs f0, 8(r3)
/* 8069F16C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8069F170  EC 01 00 2A */	fadds f0, f1, f0
/* 8069F174  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_8069F178:
/* 8069F178  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8069F17C  C0 1C 06 90 */	lfs f0, 0x690(r28)
/* 8069F180  EC 21 00 32 */	fmuls f1, f1, f0
/* 8069F184  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x806A1DA8@ha */
/* 8069F188  38 63 1D A8 */	addi r3, r3, l_HIO@l /* 0x806A1DA8@l */
/* 8069F18C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8069F190  EF C1 00 32 */	fmuls f30, f1, f0
/* 8069F194  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8069F198  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8069F19C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8069F1A0  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 8069F1A4  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8069F1A8  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 8069F1AC  38 7C 10 5C */	addi r3, r28, 0x105c
/* 8069F1B0  7F A4 EB 78 */	mr r4, r29
/* 8069F1B4  4B 9D 78 F9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8069F1B8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8069F1BC  EC 00 F0 2A */	fadds f0, f0, f30
/* 8069F1C0  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8069F1C4  C0 1C 04 C0 */	lfs f0, 0x4c0(r28)
/* 8069F1C8  EC 00 F0 2A */	fadds f0, f0, f30
/* 8069F1CC  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
lbl_8069F1D0:
/* 8069F1D0  7F 00 07 75 */	extsb. r0, r24
/* 8069F1D4  41 82 01 10 */	beq lbl_8069F2E4
/* 8069F1D8  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8069F1DC  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 8069F1E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069F1E4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8069F1E8  40 80 00 FC */	bge lbl_8069F2E4
/* 8069F1EC  38 00 00 32 */	li r0, 0x32
/* 8069F1F0  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 8069F1F4  7F 83 E3 78 */	mr r3, r28
/* 8069F1F8  38 80 00 0E */	li r4, 0xe
/* 8069F1FC  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 8069F200  38 A0 00 00 */	li r5, 0
/* 8069F204  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8069F208  4B FF B9 2D */	bl anm_init__FP10e_db_classifUcf
/* 8069F20C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070086@ha */
/* 8069F210  38 03 00 86 */	addi r0, r3, 0x0086 /* 0x00070086@l */
/* 8069F214  90 01 00 10 */	stw r0, 0x10(r1)
/* 8069F218  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8069F21C  38 81 00 10 */	addi r4, r1, 0x10
/* 8069F220  38 A0 FF FF */	li r5, -1
/* 8069F224  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8069F228  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069F22C  7D 89 03 A6 */	mtctr r12
/* 8069F230  4E 80 04 21 */	bctrl 
/* 8069F234  38 00 00 01 */	li r0, 1
/* 8069F238  98 1C 08 52 */	stb r0, 0x852(r28)
/* 8069F23C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8069F240  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8069F244  64 00 01 00 */	oris r0, r0, 0x100
/* 8069F248  90 03 05 88 */	stw r0, 0x588(r3)
/* 8069F24C  38 00 00 C8 */	li r0, 0xc8
/* 8069F250  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 8069F254  38 00 00 50 */	li r0, 0x50
/* 8069F258  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 8069F25C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8069F260  4B BC 86 F5 */	bl cM_rndF__Ff
/* 8069F264  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8069F268  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069F26C  40 80 00 10 */	bge lbl_8069F27C
/* 8069F270  38 00 40 00 */	li r0, 0x4000
/* 8069F274  B0 1C 08 60 */	sth r0, 0x860(r28)
/* 8069F278  48 00 00 0C */	b lbl_8069F284
lbl_8069F27C:
/* 8069F27C  38 00 C0 00 */	li r0, -16384
/* 8069F280  B0 1C 08 60 */	sth r0, 0x860(r28)
lbl_8069F284:
/* 8069F284  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 8069F288  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8069F28C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069F290  40 80 00 10 */	bge lbl_8069F2A0
/* 8069F294  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 8069F298  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8069F29C  48 00 00 0C */	b lbl_8069F2A8
lbl_8069F2A0:
/* 8069F2A0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8069F2A4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_8069F2A8:
/* 8069F2A8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8069F2AC  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 8069F2B0  38 80 00 00 */	li r4, 0
/* 8069F2B4  4B 98 05 C9 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 8069F2B8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 8069F2BC  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 8069F2C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8069F2C4  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 8069F2C8  38 81 00 0C */	addi r4, r1, 0xc
/* 8069F2CC  38 A0 00 00 */	li r5, 0
/* 8069F2D0  38 C0 FF FF */	li r6, -1
/* 8069F2D4  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 8069F2D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8069F2DC  7D 89 03 A6 */	mtctr r12
/* 8069F2E0  4E 80 04 21 */	bctrl 
lbl_8069F2E4:
/* 8069F2E4  C0 3C 04 AC */	lfs f1, 0x4ac(r28)
/* 8069F2E8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8069F2EC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8069F2F0  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 8069F2F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069F2F8  40 81 00 30 */	ble lbl_8069F328
/* 8069F2FC  7F 83 E3 78 */	mr r3, r28
/* 8069F300  4B 97 A9 7D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8069F304  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8069F308  54 04 46 3E */	srwi r4, r0, 0x18
/* 8069F30C  28 04 00 FF */	cmplwi r4, 0xff
/* 8069F310  41 82 00 18 */	beq lbl_8069F328
/* 8069F314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069F318  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069F31C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8069F320  7C 05 07 74 */	extsb r5, r0
/* 8069F324  4B 99 5E DD */	bl onSwitch__10dSv_info_cFii
lbl_8069F328:
/* 8069F328  38 61 00 5C */	addi r3, r1, 0x5c
/* 8069F32C  38 80 FF FF */	li r4, -1
/* 8069F330  4B 9D 85 19 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 8069F334  7F 43 D3 78 */	mr r3, r26
/* 8069F338  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 8069F33C  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8069F340  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 8069F344  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 8069F348  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8069F34C  4B CC 2E C5 */	bl _restgpr_23
/* 8069F350  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8069F354  7C 08 03 A6 */	mtlr r0
/* 8069F358  38 21 01 10 */	addi r1, r1, 0x110
/* 8069F35C  4E 80 00 20 */	blr 
