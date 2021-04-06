lbl_805BF768:
/* 805BF768  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805BF76C  7C 08 02 A6 */	mflr r0
/* 805BF770  90 01 00 54 */	stw r0, 0x54(r1)
/* 805BF774  39 61 00 50 */	addi r11, r1, 0x50
/* 805BF778  4B DA 2A 5D */	bl _savegpr_27
/* 805BF77C  7C 7C 1B 78 */	mr r28, r3
/* 805BF780  7C 9D 23 78 */	mr r29, r4
/* 805BF784  3C 80 80 5C */	lis r4, lit_3800@ha /* 0x805C6C74@ha */
/* 805BF788  3B C4 6C 74 */	addi r30, r4, lit_3800@l /* 0x805C6C74@l */
/* 805BF78C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BF790  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BF794  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 805BF798  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 805BF79C  40 82 00 20 */	bne lbl_805BF7BC
/* 805BF7A0  80 9C 07 08 */	lwz r4, 0x708(r28)
/* 805BF7A4  4B FF CA A5 */	bl mHabatakiAnmSet__8daB_DR_cFi
/* 805BF7A8  80 1C 07 10 */	lwz r0, 0x710(r28)
/* 805BF7AC  2C 00 00 35 */	cmpwi r0, 0x35
/* 805BF7B0  41 82 00 0C */	beq lbl_805BF7BC
/* 805BF7B4  38 60 00 00 */	li r3, 0
/* 805BF7B8  48 00 02 9C */	b lbl_805BFA54
lbl_805BF7BC:
/* 805BF7BC  7F 83 E3 78 */	mr r3, r28
/* 805BF7C0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805BF7C4  4B A5 AF 4D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805BF7C8  7C 64 1B 78 */	mr r4, r3
/* 805BF7CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805BF7D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805BF7D4  80 63 00 00 */	lwz r3, 0(r3)
/* 805BF7D8  4B A4 CC 05 */	bl mDoMtx_YrotS__FPA4_fs
/* 805BF7DC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BF7E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805BF7E4  C0 1E 03 C4 */	lfs f0, 0x3c4(r30)
/* 805BF7E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805BF7EC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805BF7F0  38 61 00 24 */	addi r3, r1, 0x24
/* 805BF7F4  38 81 00 18 */	addi r4, r1, 0x18
/* 805BF7F8  4B CB 16 F5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805BF7FC  80 1C 07 08 */	lwz r0, 0x708(r28)
/* 805BF800  2C 00 00 06 */	cmpwi r0, 6
/* 805BF804  41 82 00 30 */	beq lbl_805BF834
/* 805BF808  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 805BF80C  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 805BF810  EC 01 00 2A */	fadds f0, f1, f0
/* 805BF814  D0 1C 07 A8 */	stfs f0, 0x7a8(r28)
/* 805BF818  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 805BF81C  D0 1C 07 AC */	stfs f0, 0x7ac(r28)
/* 805BF820  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 805BF824  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 805BF828  EC 01 00 2A */	fadds f0, f1, f0
/* 805BF82C  D0 1C 07 B0 */	stfs f0, 0x7b0(r28)
/* 805BF830  48 00 00 3C */	b lbl_805BF86C
lbl_805BF834:
/* 805BF834  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 805BF838  D0 1C 07 A8 */	stfs f0, 0x7a8(r28)
/* 805BF83C  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 805BF840  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BF844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BF848  4C 41 13 82 */	cror 2, 1, 2
/* 805BF84C  40 82 00 14 */	bne lbl_805BF860
/* 805BF850  C0 1E 03 CC */	lfs f0, 0x3cc(r30)
/* 805BF854  EC 01 00 28 */	fsubs f0, f1, f0
/* 805BF858  D0 1C 07 AC */	stfs f0, 0x7ac(r28)
/* 805BF85C  48 00 00 08 */	b lbl_805BF864
lbl_805BF860:
/* 805BF860  D0 1C 07 AC */	stfs f0, 0x7ac(r28)
lbl_805BF864:
/* 805BF864  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 805BF868  D0 1C 07 B0 */	stfs f0, 0x7b0(r28)
lbl_805BF86C:
/* 805BF86C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 805BF870  40 82 00 4C */	bne lbl_805BF8BC
/* 805BF874  7F 83 E3 78 */	mr r3, r28
/* 805BF878  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805BF87C  4B A5 AE 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805BF880  7C 64 1B 78 */	mr r4, r3
/* 805BF884  38 7C 04 DE */	addi r3, r28, 0x4de
/* 805BF888  A8 BC 07 50 */	lha r5, 0x750(r28)
/* 805BF88C  38 C0 08 00 */	li r6, 0x800
/* 805BF890  4B CB 0D 79 */	bl cLib_addCalcAngleS2__FPssss
/* 805BF894  38 7C 07 50 */	addi r3, r28, 0x750
/* 805BF898  38 80 00 04 */	li r4, 4
/* 805BF89C  38 A0 00 04 */	li r5, 4
/* 805BF8A0  38 C0 00 28 */	li r6, 0x28
/* 805BF8A4  4B CB 0D 65 */	bl cLib_addCalcAngleS2__FPssss
/* 805BF8A8  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 805BF8AC  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 805BF8B0  38 A0 00 08 */	li r5, 8
/* 805BF8B4  38 C0 03 00 */	li r6, 0x300
/* 805BF8B8  4B CB 0D 51 */	bl cLib_addCalcAngleS2__FPssss
lbl_805BF8BC:
/* 805BF8BC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 805BF8C0  38 9C 07 A8 */	addi r4, r28, 0x7a8
/* 805BF8C4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805BF8C8  3C A0 80 5C */	lis r5, l_HIO@ha /* 0x805C790C@ha */
/* 805BF8CC  38 A5 79 0C */	addi r5, r5, l_HIO@l /* 0x805C790C@l */
/* 805BF8D0  C0 45 00 30 */	lfs f2, 0x30(r5)
/* 805BF8D4  C0 65 00 34 */	lfs f3, 0x34(r5)
/* 805BF8D8  4B CB 01 E1 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805BF8DC  38 61 00 0C */	addi r3, r1, 0xc
/* 805BF8E0  38 9C 07 A8 */	addi r4, r28, 0x7a8
/* 805BF8E4  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 805BF8E8  4B CA 72 4D */	bl __mi__4cXyzCFRC3Vec
/* 805BF8EC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805BF8F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805BF8F4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805BF8F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805BF8FC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805BF900  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805BF904  38 61 00 18 */	addi r3, r1, 0x18
/* 805BF908  4B D8 78 31 */	bl PSVECSquareMag
/* 805BF90C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805BF910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BF914  40 81 00 58 */	ble lbl_805BF96C
/* 805BF918  FC 00 08 34 */	frsqrte f0, f1
/* 805BF91C  C8 9E 03 98 */	lfd f4, 0x398(r30)
/* 805BF920  FC 44 00 32 */	fmul f2, f4, f0
/* 805BF924  C8 7E 03 A0 */	lfd f3, 0x3a0(r30)
/* 805BF928  FC 00 00 32 */	fmul f0, f0, f0
/* 805BF92C  FC 01 00 32 */	fmul f0, f1, f0
/* 805BF930  FC 03 00 28 */	fsub f0, f3, f0
/* 805BF934  FC 02 00 32 */	fmul f0, f2, f0
/* 805BF938  FC 44 00 32 */	fmul f2, f4, f0
/* 805BF93C  FC 00 00 32 */	fmul f0, f0, f0
/* 805BF940  FC 01 00 32 */	fmul f0, f1, f0
/* 805BF944  FC 03 00 28 */	fsub f0, f3, f0
/* 805BF948  FC 02 00 32 */	fmul f0, f2, f0
/* 805BF94C  FC 44 00 32 */	fmul f2, f4, f0
/* 805BF950  FC 00 00 32 */	fmul f0, f0, f0
/* 805BF954  FC 01 00 32 */	fmul f0, f1, f0
/* 805BF958  FC 03 00 28 */	fsub f0, f3, f0
/* 805BF95C  FC 02 00 32 */	fmul f0, f2, f0
/* 805BF960  FC 21 00 32 */	fmul f1, f1, f0
/* 805BF964  FC 20 08 18 */	frsp f1, f1
/* 805BF968  48 00 00 88 */	b lbl_805BF9F0
lbl_805BF96C:
/* 805BF96C  C8 1E 03 A8 */	lfd f0, 0x3a8(r30)
/* 805BF970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BF974  40 80 00 10 */	bge lbl_805BF984
/* 805BF978  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805BF97C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805BF980  48 00 00 70 */	b lbl_805BF9F0
lbl_805BF984:
/* 805BF984  D0 21 00 08 */	stfs f1, 8(r1)
/* 805BF988  80 81 00 08 */	lwz r4, 8(r1)
/* 805BF98C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805BF990  3C 00 7F 80 */	lis r0, 0x7f80
/* 805BF994  7C 03 00 00 */	cmpw r3, r0
/* 805BF998  41 82 00 14 */	beq lbl_805BF9AC
/* 805BF99C  40 80 00 40 */	bge lbl_805BF9DC
/* 805BF9A0  2C 03 00 00 */	cmpwi r3, 0
/* 805BF9A4  41 82 00 20 */	beq lbl_805BF9C4
/* 805BF9A8  48 00 00 34 */	b lbl_805BF9DC
lbl_805BF9AC:
/* 805BF9AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805BF9B0  41 82 00 0C */	beq lbl_805BF9BC
/* 805BF9B4  38 00 00 01 */	li r0, 1
/* 805BF9B8  48 00 00 28 */	b lbl_805BF9E0
lbl_805BF9BC:
/* 805BF9BC  38 00 00 02 */	li r0, 2
/* 805BF9C0  48 00 00 20 */	b lbl_805BF9E0
lbl_805BF9C4:
/* 805BF9C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805BF9C8  41 82 00 0C */	beq lbl_805BF9D4
/* 805BF9CC  38 00 00 05 */	li r0, 5
/* 805BF9D0  48 00 00 10 */	b lbl_805BF9E0
lbl_805BF9D4:
/* 805BF9D4  38 00 00 03 */	li r0, 3
/* 805BF9D8  48 00 00 08 */	b lbl_805BF9E0
lbl_805BF9DC:
/* 805BF9DC  38 00 00 04 */	li r0, 4
lbl_805BF9E0:
/* 805BF9E0  2C 00 00 01 */	cmpwi r0, 1
/* 805BF9E4  40 82 00 0C */	bne lbl_805BF9F0
/* 805BF9E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805BF9EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805BF9F0:
/* 805BF9F0  C0 1E 03 74 */	lfs f0, 0x374(r30)
/* 805BF9F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BF9F8  40 80 00 58 */	bge lbl_805BFA50
/* 805BF9FC  C0 3C 07 AC */	lfs f1, 0x7ac(r28)
/* 805BFA00  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805BFA04  EC 01 00 28 */	fsubs f0, f1, f0
/* 805BFA08  FC 00 02 10 */	fabs f0, f0
/* 805BFA0C  FC 20 00 18 */	frsp f1, f0
/* 805BFA10  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 805BFA14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BFA18  40 80 00 38 */	bge lbl_805BFA50
/* 805BFA1C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 805BFA20  40 82 00 28 */	bne lbl_805BFA48
/* 805BFA24  7F 83 E3 78 */	mr r3, r28
/* 805BFA28  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 805BFA2C  4B A5 AC E5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805BFA30  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 805BFA34  7C 03 00 50 */	subf r0, r3, r0
/* 805BFA38  7C 03 07 34 */	extsh r3, r0
/* 805BFA3C  4B DA 56 95 */	bl abs
/* 805BFA40  2C 03 02 00 */	cmpwi r3, 0x200
/* 805BFA44  40 80 00 0C */	bge lbl_805BFA50
lbl_805BFA48:
/* 805BFA48  38 60 00 01 */	li r3, 1
/* 805BFA4C  48 00 00 08 */	b lbl_805BFA54
lbl_805BFA50:
/* 805BFA50  38 60 00 00 */	li r3, 0
lbl_805BFA54:
/* 805BFA54  39 61 00 50 */	addi r11, r1, 0x50
/* 805BFA58  4B DA 27 C9 */	bl _restgpr_27
/* 805BFA5C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805BFA60  7C 08 03 A6 */	mtlr r0
/* 805BFA64  38 21 00 50 */	addi r1, r1, 0x50
/* 805BFA68  4E 80 00 20 */	blr 
