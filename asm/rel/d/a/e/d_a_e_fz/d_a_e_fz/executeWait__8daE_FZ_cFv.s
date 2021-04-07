lbl_806BF58C:
/* 806BF58C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806BF590  7C 08 02 A6 */	mflr r0
/* 806BF594  90 01 00 74 */	stw r0, 0x74(r1)
/* 806BF598  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 806BF59C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 806BF5A0  39 61 00 60 */	addi r11, r1, 0x60
/* 806BF5A4  4B CA 2C 39 */	bl _savegpr_29
/* 806BF5A8  7C 7E 1B 78 */	mr r30, r3
/* 806BF5AC  3C 80 80 6C */	lis r4, lit_3803@ha /* 0x806C1938@ha */
/* 806BF5B0  3B E4 19 38 */	addi r31, r4, lit_3803@l /* 0x806C1938@l */
/* 806BF5B4  3C 80 80 6C */	lis r4, l_HIO@ha /* 0x806C1BB0@ha */
/* 806BF5B8  38 84 1B B0 */	addi r4, r4, l_HIO@l /* 0x806C1BB0@l */
/* 806BF5BC  C3 E4 00 14 */	lfs f31, 0x14(r4)
/* 806BF5C0  80 03 06 F8 */	lwz r0, 0x6f8(r3)
/* 806BF5C4  2C 00 00 01 */	cmpwi r0, 1
/* 806BF5C8  41 82 01 38 */	beq lbl_806BF700
/* 806BF5CC  40 80 02 8C */	bge lbl_806BF858
/* 806BF5D0  2C 00 00 00 */	cmpwi r0, 0
/* 806BF5D4  40 80 00 08 */	bge lbl_806BF5DC
/* 806BF5D8  48 00 02 80 */	b lbl_806BF858
lbl_806BF5DC:
/* 806BF5DC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 806BF5E0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 806BF5E4  4B 95 D8 ED */	bl fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 806BF5E8  2C 03 00 00 */	cmpwi r3, 0
/* 806BF5EC  41 82 00 24 */	beq lbl_806BF610
/* 806BF5F0  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 806BF5F4  4B BA 83 99 */	bl cM_rndFX__Ff
/* 806BF5F8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 806BF5FC  EC 00 08 2A */	fadds f0, f0, f1
/* 806BF600  FC 00 00 1E */	fctiwz f0, f0
/* 806BF604  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806BF608  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 806BF60C  48 00 00 94 */	b lbl_806BF6A0
lbl_806BF610:
/* 806BF610  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806C1BB0@ha */
/* 806BF614  3B A3 1B B0 */	addi r29, r3, l_HIO@l /* 0x806C1BB0@l */
/* 806BF618  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 806BF61C  4B BA 83 71 */	bl cM_rndFX__Ff
/* 806BF620  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 806BF624  EC 00 08 2A */	fadds f0, f0, f1
/* 806BF628  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806BF62C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806BF630  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806BF634  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 806BF638  4B BA 83 55 */	bl cM_rndFX__Ff
/* 806BF63C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 806BF640  EC 00 08 2A */	fadds f0, f0, f1
/* 806BF644  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806BF648  38 61 00 14 */	addi r3, r1, 0x14
/* 806BF64C  38 81 00 20 */	addi r4, r1, 0x20
/* 806BF650  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806BF654  4B BA 74 E1 */	bl __mi__4cXyzCFRC3Vec
/* 806BF658  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806BF65C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806BF660  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806BF664  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806BF668  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806BF66C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806BF670  38 61 00 2C */	addi r3, r1, 0x2c
/* 806BF674  4B BA 7A B5 */	bl atan2sX_Z__4cXyzCFv
/* 806BF678  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806BF67C  7C 00 18 50 */	subf r0, r0, r3
/* 806BF680  7C 03 07 34 */	extsh r3, r0
/* 806BF684  2C 03 30 00 */	cmpwi r3, 0x3000
/* 806BF688  40 81 00 0C */	ble lbl_806BF694
/* 806BF68C  38 60 30 00 */	li r3, 0x3000
/* 806BF690  48 00 00 10 */	b lbl_806BF6A0
lbl_806BF694:
/* 806BF694  2C 03 D0 00 */	cmpwi r3, -12288
/* 806BF698  40 80 00 08 */	bge lbl_806BF6A0
/* 806BF69C  38 60 D0 00 */	li r3, -12288
lbl_806BF6A0:
/* 806BF6A0  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806BF6A4  7C 00 1A 14 */	add r0, r0, r3
/* 806BF6A8  B0 1E 07 06 */	sth r0, 0x706(r30)
/* 806BF6AC  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806C1BB0@ha */
/* 806BF6B0  38 63 1B B0 */	addi r3, r3, l_HIO@l /* 0x806C1BB0@l */
/* 806BF6B4  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 806BF6B8  4B BA 82 D5 */	bl cM_rndFX__Ff
/* 806BF6BC  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806C1BB0@ha */
/* 806BF6C0  38 63 1B B0 */	addi r3, r3, l_HIO@l /* 0x806C1BB0@l */
/* 806BF6C4  A8 03 00 06 */	lha r0, 6(r3)
/* 806BF6C8  C8 5F 00 78 */	lfd f2, 0x78(r31)
/* 806BF6CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806BF6D0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 806BF6D4  3C 00 43 30 */	lis r0, 0x4330
/* 806BF6D8  90 01 00 38 */	stw r0, 0x38(r1)
/* 806BF6DC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 806BF6E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 806BF6E4  EC 00 08 2A */	fadds f0, f0, f1
/* 806BF6E8  FC 00 00 1E */	fctiwz f0, f0
/* 806BF6EC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 806BF6F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806BF6F4  98 1E 07 10 */	stb r0, 0x710(r30)
/* 806BF6F8  38 00 00 01 */	li r0, 1
/* 806BF6FC  90 1E 06 F8 */	stw r0, 0x6f8(r30)
lbl_806BF700:
/* 806BF700  7F C3 F3 78 */	mr r3, r30
/* 806BF704  4B FF FD 41 */	bl way_gake_check__8daE_FZ_cFv
/* 806BF708  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BF70C  41 82 00 3C */	beq lbl_806BF748
/* 806BF710  38 61 00 08 */	addi r3, r1, 8
/* 806BF714  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806BF718  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 806BF71C  4B BA 74 19 */	bl __mi__4cXyzCFRC3Vec
/* 806BF720  C0 01 00 08 */	lfs f0, 8(r1)
/* 806BF724  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806BF728  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806BF72C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806BF730  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806BF734  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806BF738  38 61 00 20 */	addi r3, r1, 0x20
/* 806BF73C  4B BA 79 ED */	bl atan2sX_Z__4cXyzCFv
/* 806BF740  B0 7E 07 06 */	sth r3, 0x706(r30)
/* 806BF744  B0 7E 04 DE */	sth r3, 0x4de(r30)
lbl_806BF748:
/* 806BF748  88 1E 07 14 */	lbz r0, 0x714(r30)
/* 806BF74C  28 00 00 04 */	cmplwi r0, 4
/* 806BF750  40 82 00 3C */	bne lbl_806BF78C
/* 806BF754  38 00 00 0A */	li r0, 0xa
/* 806BF758  98 1E 07 10 */	stb r0, 0x710(r30)
/* 806BF75C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BF760  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806BF764  7F C3 F3 78 */	mr r3, r30
/* 806BF768  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BF76C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BF770  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806BF774  4B 95 AF 9D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BF778  B0 7E 07 06 */	sth r3, 0x706(r30)
/* 806BF77C  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 806BF780  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806C1BB0@ha */
/* 806BF784  38 63 1B B0 */	addi r3, r3, l_HIO@l /* 0x806C1BB0@l */
/* 806BF788  C3 E3 00 18 */	lfs f31, 0x18(r3)
lbl_806BF78C:
/* 806BF78C  80 1E 07 98 */	lwz r0, 0x798(r30)
/* 806BF790  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806BF794  41 82 00 5C */	beq lbl_806BF7F0
/* 806BF798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BF79C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BF7A0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806BF7A4  38 9E 08 5C */	addi r4, r30, 0x85c
/* 806BF7A8  4B 9B 56 A9 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 806BF7AC  2C 03 00 08 */	cmpwi r3, 8
/* 806BF7B0  40 82 00 40 */	bne lbl_806BF7F0
/* 806BF7B4  A8 7E 07 06 */	lha r3, 0x706(r30)
/* 806BF7B8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806BF7BC  7C 03 00 50 */	subf r0, r3, r0
/* 806BF7C0  7C 03 07 34 */	extsh r3, r0
/* 806BF7C4  4B CA 59 0D */	bl abs
/* 806BF7C8  2C 03 02 00 */	cmpwi r3, 0x200
/* 806BF7CC  40 80 00 3C */	bge lbl_806BF808
/* 806BF7D0  88 1E 07 10 */	lbz r0, 0x710(r30)
/* 806BF7D4  28 00 00 00 */	cmplwi r0, 0
/* 806BF7D8  40 82 00 30 */	bne lbl_806BF808
/* 806BF7DC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806BF7E0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806BF7E4  FC 40 08 90 */	fmr f2, f1
/* 806BF7E8  4B BB 02 99 */	bl cLib_addCalc0__FPfff
/* 806BF7EC  48 00 00 1C */	b lbl_806BF808
lbl_806BF7F0:
/* 806BF7F0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806BF7F4  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806BF7F8  3C 80 80 6C */	lis r4, l_HIO@ha /* 0x806C1BB0@ha */
/* 806BF7FC  38 84 1B B0 */	addi r4, r4, l_HIO@l /* 0x806C1BB0@l */
/* 806BF800  C0 44 00 2C */	lfs f2, 0x2c(r4)
/* 806BF804  4B BB 02 7D */	bl cLib_addCalc0__FPfff
lbl_806BF808:
/* 806BF808  88 1E 07 10 */	lbz r0, 0x710(r30)
/* 806BF80C  28 00 00 00 */	cmplwi r0, 0
/* 806BF810  40 82 00 48 */	bne lbl_806BF858
/* 806BF814  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806BF818  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806BF81C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BF820  40 80 00 38 */	bge lbl_806BF858
/* 806BF824  A8 7E 07 06 */	lha r3, 0x706(r30)
/* 806BF828  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806BF82C  7C 03 00 50 */	subf r0, r3, r0
/* 806BF830  7C 03 07 34 */	extsh r3, r0
/* 806BF834  4B CA 58 9D */	bl abs
/* 806BF838  2C 03 02 00 */	cmpwi r3, 0x200
/* 806BF83C  40 80 00 1C */	bge lbl_806BF858
/* 806BF840  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806BF844  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806BF848  7F C3 F3 78 */	mr r3, r30
/* 806BF84C  38 80 00 01 */	li r4, 1
/* 806BF850  38 A0 00 00 */	li r5, 0
/* 806BF854  4B FF F2 A5 */	bl setActionMode__8daE_FZ_cFii
lbl_806BF858:
/* 806BF858  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806BF85C  A8 9E 07 06 */	lha r4, 0x706(r30)
/* 806BF860  38 A0 00 08 */	li r5, 8
/* 806BF864  38 C0 05 00 */	li r6, 0x500
/* 806BF868  4B BB 0D A1 */	bl cLib_addCalcAngleS2__FPssss
/* 806BF86C  7F C3 F3 78 */	mr r3, r30
/* 806BF870  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BF874  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BF878  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806BF87C  4B 95 AF 65 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BF880  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 806BF884  4C 40 13 82 */	cror 2, 0, 2
/* 806BF888  40 82 00 40 */	bne lbl_806BF8C8
/* 806BF88C  7F C3 F3 78 */	mr r3, r30
/* 806BF890  4B FF FB B5 */	bl way_gake_check__8daE_FZ_cFv
/* 806BF894  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BF898  40 82 00 30 */	bne lbl_806BF8C8
/* 806BF89C  7F C3 F3 78 */	mr r3, r30
/* 806BF8A0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806BF8A4  4B 95 D5 59 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BF8A8  2C 03 00 00 */	cmpwi r3, 0
/* 806BF8AC  40 82 00 1C */	bne lbl_806BF8C8
/* 806BF8B0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806BF8B4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806BF8B8  7F C3 F3 78 */	mr r3, r30
/* 806BF8BC  38 80 00 02 */	li r4, 2
/* 806BF8C0  38 A0 00 00 */	li r5, 0
/* 806BF8C4  4B FF F2 35 */	bl setActionMode__8daE_FZ_cFii
lbl_806BF8C8:
/* 806BF8C8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 806BF8CC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 806BF8D0  39 61 00 60 */	addi r11, r1, 0x60
/* 806BF8D4  4B CA 29 55 */	bl _restgpr_29
/* 806BF8D8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806BF8DC  7C 08 03 A6 */	mtlr r0
/* 806BF8E0  38 21 00 70 */	addi r1, r1, 0x70
/* 806BF8E4  4E 80 00 20 */	blr 
