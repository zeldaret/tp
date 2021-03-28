lbl_80A8D608:
/* 80A8D608  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80A8D60C  7C 08 02 A6 */	mflr r0
/* 80A8D610  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80A8D614  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80A8D618  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80A8D61C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80A8D620  4B 8D 4B B4 */	b _savegpr_27
/* 80A8D624  7C 7C 1B 78 */	mr r28, r3
/* 80A8D628  3C 60 80 A9 */	lis r3, lit_3990@ha
/* 80A8D62C  3B C3 24 1C */	addi r30, r3, lit_3990@l
/* 80A8D630  38 61 00 44 */	addi r3, r1, 0x44
/* 80A8D634  4B 5E A6 34 */	b __ct__11dBgS_LinChkFv
/* 80A8D638  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A8D63C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A8D640  80 63 00 00 */	lwz r3, 0(r3)
/* 80A8D644  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80A8D648  4B 57 ED 94 */	b mDoMtx_YrotS__FPA4_fs
/* 80A8D64C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A8D650  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A8D654  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80A8D658  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A8D65C  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80A8D660  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A8D664  38 61 00 20 */	addi r3, r1, 0x20
/* 80A8D668  38 81 00 14 */	addi r4, r1, 0x14
/* 80A8D66C  4B 7E 38 80 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A8D670  38 61 00 14 */	addi r3, r1, 0x14
/* 80A8D674  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A8D678  7C 65 1B 78 */	mr r5, r3
/* 80A8D67C  4B 8B 9A 14 */	b PSVECAdd
/* 80A8D680  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80A8D684  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A8D688  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A8D68C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A8D690  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A8D694  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A8D698  3B 60 00 00 */	li r27, 0
/* 80A8D69C  3B E0 00 00 */	li r31, 0
/* 80A8D6A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A8D6A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A8D6A8  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80A8D6AC  C3 FE 00 14 */	lfs f31, 0x14(r30)
lbl_80A8D6B0:
/* 80A8D6B0  38 61 00 20 */	addi r3, r1, 0x20
/* 80A8D6B4  3B C1 00 2C */	addi r30, r1, 0x2c
/* 80A8D6B8  7F DE FA 14 */	add r30, r30, r31
/* 80A8D6BC  7F C4 F3 78 */	mr r4, r30
/* 80A8D6C0  4B 7E 38 2C */	b MtxPosition__FP4cXyzP4cXyz
/* 80A8D6C4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A8D6C8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80A8D6CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A8D6D0  7F C3 F3 78 */	mr r3, r30
/* 80A8D6D4  38 81 00 14 */	addi r4, r1, 0x14
/* 80A8D6D8  7F C5 F3 78 */	mr r5, r30
/* 80A8D6DC  4B 8B 99 B4 */	b PSVECAdd
/* 80A8D6E0  38 61 00 44 */	addi r3, r1, 0x44
/* 80A8D6E4  38 81 00 14 */	addi r4, r1, 0x14
/* 80A8D6E8  7F C5 F3 78 */	mr r5, r30
/* 80A8D6EC  7F 86 E3 78 */	mr r6, r28
/* 80A8D6F0  4B 5E A6 74 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A8D6F4  7F A3 EB 78 */	mr r3, r29
/* 80A8D6F8  38 81 00 44 */	addi r4, r1, 0x44
/* 80A8D6FC  4B 5E 6C B8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80A8D700  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A8D704  41 82 00 38 */	beq lbl_80A8D73C
/* 80A8D708  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80A8D70C  D0 1C 06 E4 */	stfs f0, 0x6e4(r28)
/* 80A8D710  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80A8D714  D0 1C 06 E8 */	stfs f0, 0x6e8(r28)
/* 80A8D718  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80A8D71C  D0 1C 06 EC */	stfs f0, 0x6ec(r28)
/* 80A8D720  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80A8D724  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80A8D728  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80A8D72C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80A8D730  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80A8D734  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80A8D738  48 00 00 18 */	b lbl_80A8D750
lbl_80A8D73C:
/* 80A8D73C  38 61 00 44 */	addi r3, r1, 0x44
/* 80A8D740  38 80 FF FF */	li r4, -1
/* 80A8D744  4B 5E A5 98 */	b __dt__11dBgS_LinChkFv
/* 80A8D748  38 60 00 01 */	li r3, 1
/* 80A8D74C  48 00 00 58 */	b lbl_80A8D7A4
lbl_80A8D750:
/* 80A8D750  3B 7B 00 01 */	addi r27, r27, 1
/* 80A8D754  2C 1B 00 02 */	cmpwi r27, 2
/* 80A8D758  3B FF 00 0C */	addi r31, r31, 0xc
/* 80A8D75C  41 80 FF 54 */	blt lbl_80A8D6B0
/* 80A8D760  38 61 00 08 */	addi r3, r1, 8
/* 80A8D764  38 81 00 38 */	addi r4, r1, 0x38
/* 80A8D768  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80A8D76C  4B 7D 93 C8 */	b __mi__4cXyzCFRC3Vec
/* 80A8D770  C0 21 00 08 */	lfs f1, 8(r1)
/* 80A8D774  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80A8D778  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A8D77C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A8D780  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80A8D784  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80A8D788  4B 7D 9E EC */	b cM_atan2s__Fff
/* 80A8D78C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80A8D790  7C 1E 07 34 */	extsh r30, r0
/* 80A8D794  38 61 00 44 */	addi r3, r1, 0x44
/* 80A8D798  38 80 FF FF */	li r4, -1
/* 80A8D79C  4B 5E A5 40 */	b __dt__11dBgS_LinChkFv
/* 80A8D7A0  7F C3 F3 78 */	mr r3, r30
lbl_80A8D7A4:
/* 80A8D7A4  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80A8D7A8  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80A8D7AC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80A8D7B0  4B 8D 4A 70 */	b _restgpr_27
/* 80A8D7B4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80A8D7B8  7C 08 03 A6 */	mtlr r0
/* 80A8D7BC  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80A8D7C0  4E 80 00 20 */	blr 
