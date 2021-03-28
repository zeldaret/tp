lbl_805020D0:
/* 805020D0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 805020D4  7C 08 02 A6 */	mflr r0
/* 805020D8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 805020DC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 805020E0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 805020E4  39 61 00 D0 */	addi r11, r1, 0xd0
/* 805020E8  4B E6 00 EC */	b _savegpr_27
/* 805020EC  3C 80 80 50 */	lis r4, lit_3999@ha
/* 805020F0  3B C4 46 DC */	addi r30, r4, lit_3999@l
/* 805020F4  7C 7C 1B 78 */	mr r28, r3
/* 805020F8  38 61 00 44 */	addi r3, r1, 0x44
/* 805020FC  4B B7 5B 6C */	b __ct__11dBgS_LinChkFv
/* 80502100  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80502104  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80502108  80 63 00 00 */	lwz r3, 0(r3)
/* 8050210C  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80502110  4B B0 A2 CC */	b mDoMtx_YrotS__FPA4_fs
/* 80502114  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80502118  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8050211C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80502120  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80502124  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 80502128  EC 01 00 32 */	fmuls f0, f1, f0
/* 8050212C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80502130  38 61 00 20 */	addi r3, r1, 0x20
/* 80502134  38 81 00 14 */	addi r4, r1, 0x14
/* 80502138  4B D6 ED B4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8050213C  38 61 00 14 */	addi r3, r1, 0x14
/* 80502140  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80502144  7C 65 1B 78 */	mr r5, r3
/* 80502148  4B E4 4F 48 */	b PSVECAdd
/* 8050214C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80502150  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80502154  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80502158  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8050215C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 80502160  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 80502164  EC 01 00 32 */	fmuls f0, f1, f0
/* 80502168  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8050216C  3B 60 00 00 */	li r27, 0
/* 80502170  3B E0 00 00 */	li r31, 0
/* 80502174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80502178  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8050217C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80502180  C3 FE 00 50 */	lfs f31, 0x50(r30)
lbl_80502184:
/* 80502184  38 61 00 20 */	addi r3, r1, 0x20
/* 80502188  3B C1 00 2C */	addi r30, r1, 0x2c
/* 8050218C  7F DE FA 14 */	add r30, r30, r31
/* 80502190  7F C4 F3 78 */	mr r4, r30
/* 80502194  4B D6 ED 58 */	b MtxPosition__FP4cXyzP4cXyz
/* 80502198  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8050219C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805021A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805021A4  7F C3 F3 78 */	mr r3, r30
/* 805021A8  38 81 00 14 */	addi r4, r1, 0x14
/* 805021AC  7F C5 F3 78 */	mr r5, r30
/* 805021B0  4B E4 4E E0 */	b PSVECAdd
/* 805021B4  38 61 00 44 */	addi r3, r1, 0x44
/* 805021B8  38 81 00 14 */	addi r4, r1, 0x14
/* 805021BC  7F C5 F3 78 */	mr r5, r30
/* 805021C0  7F 86 E3 78 */	mr r6, r28
/* 805021C4  4B B7 5B A0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805021C8  7F A3 EB 78 */	mr r3, r29
/* 805021CC  38 81 00 44 */	addi r4, r1, 0x44
/* 805021D0  4B B7 21 E4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 805021D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805021D8  41 82 00 20 */	beq lbl_805021F8
/* 805021DC  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 805021E0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 805021E4  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 805021E8  D0 1E 00 04 */	stfs f0, 4(r30)
/* 805021EC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 805021F0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 805021F4  48 00 00 18 */	b lbl_8050220C
lbl_805021F8:
/* 805021F8  38 61 00 44 */	addi r3, r1, 0x44
/* 805021FC  38 80 FF FF */	li r4, -1
/* 80502200  4B B7 5A DC */	b __dt__11dBgS_LinChkFv
/* 80502204  38 60 00 23 */	li r3, 0x23
/* 80502208  48 00 00 58 */	b lbl_80502260
lbl_8050220C:
/* 8050220C  3B 7B 00 01 */	addi r27, r27, 1
/* 80502210  2C 1B 00 02 */	cmpwi r27, 2
/* 80502214  3B FF 00 0C */	addi r31, r31, 0xc
/* 80502218  41 80 FF 6C */	blt lbl_80502184
/* 8050221C  38 61 00 08 */	addi r3, r1, 8
/* 80502220  38 81 00 38 */	addi r4, r1, 0x38
/* 80502224  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80502228  4B D6 49 0C */	b __mi__4cXyzCFRC3Vec
/* 8050222C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80502230  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80502234  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80502238  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8050223C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80502240  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80502244  4B D6 54 30 */	b cM_atan2s__Fff
/* 80502248  38 03 40 00 */	addi r0, r3, 0x4000
/* 8050224C  7C 1E 07 34 */	extsh r30, r0
/* 80502250  38 61 00 44 */	addi r3, r1, 0x44
/* 80502254  38 80 FF FF */	li r4, -1
/* 80502258  4B B7 5A 84 */	b __dt__11dBgS_LinChkFv
/* 8050225C  7F C3 F3 78 */	mr r3, r30
lbl_80502260:
/* 80502260  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80502264  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80502268  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8050226C  4B E5 FF B4 */	b _restgpr_27
/* 80502270  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80502274  7C 08 03 A6 */	mtlr r0
/* 80502278  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8050227C  4E 80 00 20 */	blr 
