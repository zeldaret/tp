lbl_80BFB218:
/* 80BFB218  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80BFB21C  7C 08 02 A6 */	mflr r0
/* 80BFB220  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80BFB224  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80BFB228  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80BFB22C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80BFB230  4B 76 6F A4 */	b _savegpr_27
/* 80BFB234  7C 7B 1B 78 */	mr r27, r3
/* 80BFB238  3C 60 80 C0 */	lis r3, lit_3686@ha
/* 80BFB23C  3B C3 D3 2C */	addi r30, r3, lit_3686@l
/* 80BFB240  7F 7C DB 78 */	mr r28, r27
/* 80BFB244  38 61 00 44 */	addi r3, r1, 0x44
/* 80BFB248  4B 47 CA 20 */	b __ct__11dBgS_LinChkFv
/* 80BFB24C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80BFB250  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80BFB254  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFB258  A8 9B 07 20 */	lha r4, 0x720(r27)
/* 80BFB25C  4B 41 11 80 */	b mDoMtx_YrotS__FPA4_fs
/* 80BFB260  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80BFB264  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BFB268  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BFB26C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80BFB270  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BFB274  38 61 00 20 */	addi r3, r1, 0x20
/* 80BFB278  38 81 00 14 */	addi r4, r1, 0x14
/* 80BFB27C  4B 67 5C 70 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BFB280  38 61 00 14 */	addi r3, r1, 0x14
/* 80BFB284  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80BFB288  7C 65 1B 78 */	mr r5, r3
/* 80BFB28C  4B 74 BE 04 */	b PSVECAdd
/* 80BFB290  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80BFB294  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BFB298  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80BFB29C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BFB2A0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80BFB2A4  88 1B 05 70 */	lbz r0, 0x570(r27)
/* 80BFB2A8  54 00 10 3A */	slwi r0, r0, 2
/* 80BFB2AC  3C 60 80 C0 */	lis r3, obj_size@ha
/* 80BFB2B0  38 63 D3 E8 */	addi r3, r3, obj_size@l
/* 80BFB2B4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFB2B8  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFB2BC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BFB2C0  3B 60 00 00 */	li r27, 0
/* 80BFB2C4  3B E0 00 00 */	li r31, 0
/* 80BFB2C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BFB2CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BFB2D0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80BFB2D4  C3 FE 00 14 */	lfs f31, 0x14(r30)
lbl_80BFB2D8:
/* 80BFB2D8  38 61 00 20 */	addi r3, r1, 0x20
/* 80BFB2DC  3B C1 00 2C */	addi r30, r1, 0x2c
/* 80BFB2E0  7F DE FA 14 */	add r30, r30, r31
/* 80BFB2E4  7F C4 F3 78 */	mr r4, r30
/* 80BFB2E8  4B 67 5C 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 80BFB2EC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BFB2F0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80BFB2F4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BFB2F8  7F C3 F3 78 */	mr r3, r30
/* 80BFB2FC  38 81 00 14 */	addi r4, r1, 0x14
/* 80BFB300  7F C5 F3 78 */	mr r5, r30
/* 80BFB304  4B 74 BD 8C */	b PSVECAdd
/* 80BFB308  38 61 00 44 */	addi r3, r1, 0x44
/* 80BFB30C  38 81 00 14 */	addi r4, r1, 0x14
/* 80BFB310  7F C5 F3 78 */	mr r5, r30
/* 80BFB314  7F 86 E3 78 */	mr r6, r28
/* 80BFB318  4B 47 CA 4C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BFB31C  7F A3 EB 78 */	mr r3, r29
/* 80BFB320  38 81 00 44 */	addi r4, r1, 0x44
/* 80BFB324  4B 47 90 90 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80BFB328  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BFB32C  41 82 00 20 */	beq lbl_80BFB34C
/* 80BFB330  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80BFB334  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80BFB338  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80BFB33C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80BFB340  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80BFB344  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80BFB348  48 00 00 18 */	b lbl_80BFB360
lbl_80BFB34C:
/* 80BFB34C  38 61 00 44 */	addi r3, r1, 0x44
/* 80BFB350  38 80 FF FF */	li r4, -1
/* 80BFB354  4B 47 C9 88 */	b __dt__11dBgS_LinChkFv
/* 80BFB358  38 60 00 23 */	li r3, 0x23
/* 80BFB35C  48 00 00 58 */	b lbl_80BFB3B4
lbl_80BFB360:
/* 80BFB360  3B 7B 00 01 */	addi r27, r27, 1
/* 80BFB364  2C 1B 00 02 */	cmpwi r27, 2
/* 80BFB368  3B FF 00 0C */	addi r31, r31, 0xc
/* 80BFB36C  41 80 FF 6C */	blt lbl_80BFB2D8
/* 80BFB370  38 61 00 08 */	addi r3, r1, 8
/* 80BFB374  38 81 00 38 */	addi r4, r1, 0x38
/* 80BFB378  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80BFB37C  4B 66 B7 B8 */	b __mi__4cXyzCFRC3Vec
/* 80BFB380  C0 21 00 08 */	lfs f1, 8(r1)
/* 80BFB384  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BFB388  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BFB38C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BFB390  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80BFB394  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80BFB398  4B 66 C2 DC */	b cM_atan2s__Fff
/* 80BFB39C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80BFB3A0  7C 1E 07 34 */	extsh r30, r0
/* 80BFB3A4  38 61 00 44 */	addi r3, r1, 0x44
/* 80BFB3A8  38 80 FF FF */	li r4, -1
/* 80BFB3AC  4B 47 C9 30 */	b __dt__11dBgS_LinChkFv
/* 80BFB3B0  7F C3 F3 78 */	mr r3, r30
lbl_80BFB3B4:
/* 80BFB3B4  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80BFB3B8  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80BFB3BC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80BFB3C0  4B 76 6E 60 */	b _restgpr_27
/* 80BFB3C4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80BFB3C8  7C 08 03 A6 */	mtlr r0
/* 80BFB3CC  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80BFB3D0  4E 80 00 20 */	blr 
