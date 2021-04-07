lbl_804AB064:
/* 804AB064  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 804AB068  7C 08 02 A6 */	mflr r0
/* 804AB06C  90 01 01 94 */	stw r0, 0x194(r1)
/* 804AB070  DB E1 01 80 */	stfd f31, 0x180(r1)
/* 804AB074  F3 E1 01 88 */	psq_st f31, 392(r1), 0, 0 /* qr0 */
/* 804AB078  DB C1 01 70 */	stfd f30, 0x170(r1)
/* 804AB07C  F3 C1 01 78 */	psq_st f30, 376(r1), 0, 0 /* qr0 */
/* 804AB080  DB A1 01 60 */	stfd f29, 0x160(r1)
/* 804AB084  F3 A1 01 68 */	psq_st f29, 360(r1), 0, 0 /* qr0 */
/* 804AB088  DB 81 01 50 */	stfd f28, 0x150(r1)
/* 804AB08C  F3 81 01 58 */	psq_st f28, 344(r1), 0, 0 /* qr0 */
/* 804AB090  DB 61 01 40 */	stfd f27, 0x140(r1)
/* 804AB094  F3 61 01 48 */	psq_st f27, 328(r1), 0, 0 /* qr0 */
/* 804AB098  39 61 01 40 */	addi r11, r1, 0x140
/* 804AB09C  4B EB 71 25 */	bl _savegpr_22
/* 804AB0A0  7C 7A 1B 78 */	mr r26, r3
/* 804AB0A4  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804AB0A8  3B C3 B5 34 */	addi r30, r3, lit_3879@l /* 0x804BB534@l */
/* 804AB0AC  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804AB0B0  4B BC C4 CD */	bl __ct__11dBgS_GndChkFv
/* 804AB0B4  3C 60 80 4C */	lis r3, __vt__8cM3dGPla@ha /* 0x804BBB70@ha */
/* 804AB0B8  38 03 BB 70 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804BBB70@l */
/* 804AB0BC  90 01 00 50 */	stw r0, 0x50(r1)
/* 804AB0C0  C0 1A 10 10 */	lfs f0, 0x1010(r26)
/* 804AB0C4  D0 1A 0C 14 */	stfs f0, 0xc14(r26)
/* 804AB0C8  C0 1A 10 14 */	lfs f0, 0x1014(r26)
/* 804AB0CC  D0 1A 0C 18 */	stfs f0, 0xc18(r26)
/* 804AB0D0  C0 1A 10 18 */	lfs f0, 0x1018(r26)
/* 804AB0D4  D0 1A 0C 1C */	stfs f0, 0xc1c(r26)
/* 804AB0D8  3B BA 0C 08 */	addi r29, r26, 0xc08
/* 804AB0DC  C3 DE 00 58 */	lfs f30, 0x58(r30)
/* 804AB0E0  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 804AB0E4  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 804AB0E8  C0 1A 0F 5C */	lfs f0, 0xf5c(r26)
/* 804AB0EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804AB0F0  3B 60 00 62 */	li r27, 0x62
/* 804AB0F4  3B 00 01 88 */	li r24, 0x188
/* 804AB0F8  3B E1 00 D8 */	addi r31, r1, 0xd8
/* 804AB0FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AB100  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AB104  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 804AB108  C3 FE 00 B4 */	lfs f31, 0xb4(r30)
/* 804AB10C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AB110  3B 23 07 68 */	addi r25, r3, calc_mtx@l /* 0x80450768@l */
lbl_804AB114:
/* 804AB114  7C 7A C2 14 */	add r3, r26, r24
/* 804AB118  C0 23 0C 20 */	lfs f1, 0xc20(r3)
/* 804AB11C  C0 7D 00 00 */	lfs f3, 0(r29)
/* 804AB120  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 804AB124  EC 03 00 28 */	fsubs f0, f3, f0
/* 804AB128  EF A1 00 2A */	fadds f29, f1, f0
/* 804AB12C  C0 43 0D B0 */	lfs f2, 0xdb0(r3)
/* 804AB130  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804AB134  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 804AB138  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AB13C  EF 62 00 2A */	fadds f27, f2, f0
/* 804AB140  D0 61 00 08 */	stfs f3, 8(r1)
/* 804AB144  C0 1D 00 04 */	lfs f0, 4(r29)
/* 804AB148  EC 1F 00 2A */	fadds f0, f31, f0
/* 804AB14C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804AB150  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804AB154  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804AB158  38 81 00 08 */	addi r4, r1, 8
/* 804AB15C  4B DB CB B1 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 804AB160  7F 83 E3 78 */	mr r3, r28
/* 804AB164  7F E4 FB 78 */	mr r4, r31
/* 804AB168  38 A1 00 40 */	addi r5, r1, 0x40
/* 804AB16C  4B BC 95 D9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804AB170  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804AB174  41 82 00 2C */	beq lbl_804AB1A0
/* 804AB178  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 804AB17C  4B DB D0 69 */	bl cBgW_CheckBGround__Ff
/* 804AB180  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804AB184  41 82 00 1C */	beq lbl_804AB1A0
/* 804AB188  7F 83 E3 78 */	mr r3, r28
/* 804AB18C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 804AB190  4B BC 93 11 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804AB194  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 804AB198  EC 00 08 2A */	fadds f0, f0, f1
/* 804AB19C  48 00 00 24 */	b lbl_804AB1C0
lbl_804AB1A0:
/* 804AB1A0  88 1A 0F 80 */	lbz r0, 0xf80(r26)
/* 804AB1A4  2C 00 00 04 */	cmpwi r0, 4
/* 804AB1A8  40 82 00 14 */	bne lbl_804AB1BC
/* 804AB1AC  C0 3A 05 90 */	lfs f1, 0x590(r26)
/* 804AB1B0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 804AB1B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AB1B8  48 00 00 08 */	b lbl_804AB1C0
lbl_804AB1BC:
/* 804AB1BC  C0 1A 05 90 */	lfs f0, 0x590(r26)
lbl_804AB1C0:
/* 804AB1C0  C0 3D 00 04 */	lfs f1, 4(r29)
/* 804AB1C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AB1C8  40 80 00 08 */	bge lbl_804AB1D0
/* 804AB1CC  FC 20 00 90 */	fmr f1, f0
lbl_804AB1D0:
/* 804AB1D0  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 804AB1D4  EF 81 00 28 */	fsubs f28, f1, f0
/* 804AB1D8  FC 20 E8 90 */	fmr f1, f29
/* 804AB1DC  FC 40 D8 90 */	fmr f2, f27
/* 804AB1E0  4B DB C4 95 */	bl cM_atan2s__Fff
/* 804AB1E4  7C 76 07 34 */	extsh r22, r3
/* 804AB1E8  EC 3D 07 72 */	fmuls f1, f29, f29
/* 804AB1EC  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 804AB1F0  EC 41 00 2A */	fadds f2, f1, f0
/* 804AB1F4  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 804AB1F8  40 81 00 0C */	ble lbl_804AB204
/* 804AB1FC  FC 00 10 34 */	frsqrte f0, f2
/* 804AB200  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AB204:
/* 804AB204  FC 20 E0 90 */	fmr f1, f28
/* 804AB208  4B DB C4 6D */	bl cM_atan2s__Fff
/* 804AB20C  7C 03 00 D0 */	neg r0, r3
/* 804AB210  7C 17 07 34 */	extsh r23, r0
/* 804AB214  80 79 00 00 */	lwz r3, 0(r25)
/* 804AB218  7E C4 B3 78 */	mr r4, r22
/* 804AB21C  4B B6 11 C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AB220  80 79 00 00 */	lwz r3, 0(r25)
/* 804AB224  7E E4 BB 78 */	mr r4, r23
/* 804AB228  4B B6 11 75 */	bl mDoMtx_XrotM__FPA4_fs
/* 804AB22C  38 61 00 20 */	addi r3, r1, 0x20
/* 804AB230  38 81 00 14 */	addi r4, r1, 0x14
/* 804AB234  4B DC 5C B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AB238  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 804AB23C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804AB240  EC 01 00 2A */	fadds f0, f1, f0
/* 804AB244  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804AB248  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 804AB24C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804AB250  EC 01 00 2A */	fadds f0, f1, f0
/* 804AB254  D0 1D 00 04 */	stfs f0, 4(r29)
/* 804AB258  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 804AB25C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804AB260  EC 01 00 2A */	fadds f0, f1, f0
/* 804AB264  D0 1D 00 08 */	stfs f0, 8(r29)
/* 804AB268  3B 7B FF FF */	addi r27, r27, -1
/* 804AB26C  2C 1B 00 01 */	cmpwi r27, 1
/* 804AB270  3B 18 FF FC */	addi r24, r24, -4
/* 804AB274  3B BD FF F4 */	addi r29, r29, -12
/* 804AB278  40 80 FE 9C */	bge lbl_804AB114
/* 804AB27C  88 1A 0F 80 */	lbz r0, 0xf80(r26)
/* 804AB280  2C 00 00 04 */	cmpwi r0, 4
/* 804AB284  41 82 02 AC */	beq lbl_804AB530
/* 804AB288  A8 1A 0F 7E */	lha r0, 0xf7e(r26)
/* 804AB28C  2C 00 00 04 */	cmpwi r0, 4
/* 804AB290  40 82 02 A0 */	bne lbl_804AB530
/* 804AB294  88 1A 10 0D */	lbz r0, 0x100d(r26)
/* 804AB298  7C 00 07 75 */	extsb. r0, r0
/* 804AB29C  41 82 02 94 */	beq lbl_804AB530
/* 804AB2A0  38 61 00 54 */	addi r3, r1, 0x54
/* 804AB2A4  4B BC C9 C5 */	bl __ct__11dBgS_LinChkFv
/* 804AB2A8  3C 60 80 4C */	lis r3, __vt__8cM3dGPla@ha /* 0x804BBB70@ha */
/* 804AB2AC  38 03 BB 70 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804BBB70@l */
/* 804AB2B0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804AB2B4  38 61 00 AC */	addi r3, r1, 0xac
/* 804AB2B8  4B BC DC 29 */	bl SetRope__16dBgS_PolyPassChkFv
/* 804AB2BC  3B 60 00 01 */	li r27, 1
/* 804AB2C0  3B 20 00 04 */	li r25, 4
/* 804AB2C4  3B 00 00 0C */	li r24, 0xc
/* 804AB2C8  3B A1 00 68 */	addi r29, r1, 0x68
/* 804AB2CC  3C 60 80 4C */	lis r3, old_line_pos@ha /* 0x804BBC18@ha */
/* 804AB2D0  3B E3 BC 18 */	addi r31, r3, old_line_pos@l /* 0x804BBC18@l */
lbl_804AB2D4:
/* 804AB2D4  38 61 00 54 */	addi r3, r1, 0x54
/* 804AB2D8  7C 9F C2 14 */	add r4, r31, r24
/* 804AB2DC  7E FA C2 14 */	add r23, r26, r24
/* 804AB2E0  38 B7 07 70 */	addi r5, r23, 0x770
/* 804AB2E4  7F 46 D3 78 */	mr r6, r26
/* 804AB2E8  4B BC CA 7D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804AB2EC  7F 83 E3 78 */	mr r3, r28
/* 804AB2F0  38 81 00 54 */	addi r4, r1, 0x54
/* 804AB2F4  4B BC 90 C1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 804AB2F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804AB2FC  41 82 01 28 */	beq lbl_804AB424
/* 804AB300  7F 83 E3 78 */	mr r3, r28
/* 804AB304  7F A4 EB 78 */	mr r4, r29
/* 804AB308  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804AB30C  4B BC 94 39 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804AB310  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804AB314  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804AB318  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 804AB31C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 804AB320  4B DB C3 55 */	bl cM_atan2s__Fff
/* 804AB324  7C 64 1B 78 */	mr r4, r3
/* 804AB328  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AB32C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AB330  80 63 00 00 */	lwz r3, 0(r3)
/* 804AB334  4B B6 10 A9 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AB338  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AB33C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804AB340  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804AB344  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804AB348  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804AB34C  38 61 00 20 */	addi r3, r1, 0x20
/* 804AB350  38 81 00 14 */	addi r4, r1, 0x14
/* 804AB354  4B DC 5B 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AB358  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 804AB35C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804AB360  EC 22 00 32 */	fmuls f1, f2, f0
/* 804AB364  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 804AB368  EC 61 00 2A */	fadds f3, f1, f0
/* 804AB36C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804AB370  EC 22 00 32 */	fmuls f1, f2, f0
/* 804AB374  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 804AB378  EC 41 00 2A */	fadds f2, f1, f0
/* 804AB37C  C0 17 07 64 */	lfs f0, 0x764(r23)
/* 804AB380  EC 20 18 28 */	fsubs f1, f0, f3
/* 804AB384  C0 17 07 6C */	lfs f0, 0x76c(r23)
/* 804AB388  EC 00 10 28 */	fsubs f0, f0, f2
/* 804AB38C  EC 21 00 72 */	fmuls f1, f1, f1
/* 804AB390  EC 00 00 32 */	fmuls f0, f0, f0
/* 804AB394  EC 21 00 2A */	fadds f1, f1, f0
/* 804AB398  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AB39C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AB3A0  40 81 00 0C */	ble lbl_804AB3AC
/* 804AB3A4  FC 00 08 34 */	frsqrte f0, f1
/* 804AB3A8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804AB3AC:
/* 804AB3AC  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 804AB3B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AB3B4  40 80 00 0C */	bge lbl_804AB3C0
/* 804AB3B8  D0 77 07 70 */	stfs f3, 0x770(r23)
/* 804AB3BC  D0 57 07 78 */	stfs f2, 0x778(r23)
lbl_804AB3C0:
/* 804AB3C0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804AB3C4  7C 7A CA 14 */	add r3, r26, r25
/* 804AB3C8  D0 03 0C 20 */	stfs f0, 0xc20(r3)
/* 804AB3CC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804AB3D0  D0 03 0D B0 */	stfs f0, 0xdb0(r3)
/* 804AB3D4  38 BB FF FD */	addi r5, r27, -3
/* 804AB3D8  38 9B 00 03 */	addi r4, r27, 3
/* 804AB3DC  54 A3 10 3A */	slwi r3, r5, 2
/* 804AB3E0  7C 05 20 50 */	subf r0, r5, r4
/* 804AB3E4  7C 09 03 A6 */	mtctr r0
/* 804AB3E8  7C 05 20 00 */	cmpw r5, r4
/* 804AB3EC  40 80 01 18 */	bge lbl_804AB504
lbl_804AB3F0:
/* 804AB3F0  2C 05 00 01 */	cmpwi r5, 1
/* 804AB3F4  41 80 00 20 */	blt lbl_804AB414
/* 804AB3F8  2C 05 00 63 */	cmpwi r5, 0x63
/* 804AB3FC  40 80 00 18 */	bge lbl_804AB414
/* 804AB400  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804AB404  7C 9A 1A 14 */	add r4, r26, r3
/* 804AB408  D0 04 0C 20 */	stfs f0, 0xc20(r4)
/* 804AB40C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804AB410  D0 04 0D B0 */	stfs f0, 0xdb0(r4)
lbl_804AB414:
/* 804AB414  38 A5 00 01 */	addi r5, r5, 1
/* 804AB418  38 63 00 04 */	addi r3, r3, 4
/* 804AB41C  42 00 FF D4 */	bdnz lbl_804AB3F0
/* 804AB420  48 00 00 E4 */	b lbl_804AB504
lbl_804AB424:
/* 804AB424  7C 7A CA 14 */	add r3, r26, r25
/* 804AB428  C0 03 0C 20 */	lfs f0, 0xc20(r3)
/* 804AB42C  FC 00 02 10 */	fabs f0, f0
/* 804AB430  FC 00 00 18 */	frsp f0, f0
/* 804AB434  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 804AB438  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804AB43C  41 81 00 18 */	bgt lbl_804AB454
/* 804AB440  C0 03 0D B0 */	lfs f0, 0xdb0(r3)
/* 804AB444  FC 00 02 10 */	fabs f0, f0
/* 804AB448  FC 00 00 18 */	frsp f0, f0
/* 804AB44C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804AB450  40 81 00 A8 */	ble lbl_804AB4F8
lbl_804AB454:
/* 804AB454  C0 03 0C 20 */	lfs f0, 0xc20(r3)
/* 804AB458  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 804AB45C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AB460  D0 03 0C 20 */	stfs f0, 0xc20(r3)
/* 804AB464  C0 03 0D B0 */	lfs f0, 0xdb0(r3)
/* 804AB468  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AB46C  D0 03 0D B0 */	stfs f0, 0xdb0(r3)
/* 804AB470  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 804AB474  C0 5E 00 CC */	lfs f2, 0xcc(r30)
/* 804AB478  C0 03 0C 20 */	lfs f0, 0xc20(r3)
/* 804AB47C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AB480  EC 01 00 2A */	fadds f0, f1, f0
/* 804AB484  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 804AB488  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 804AB48C  C0 03 0D B0 */	lfs f0, 0xdb0(r3)
/* 804AB490  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AB494  EC 01 00 2A */	fadds f0, f1, f0
/* 804AB498  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 804AB49C  38 7A 0F FE */	addi r3, r26, 0xffe
/* 804AB4A0  38 80 00 00 */	li r4, 0
/* 804AB4A4  38 A0 00 02 */	li r5, 2
/* 804AB4A8  38 C0 00 14 */	li r6, 0x14
/* 804AB4AC  4B DC 51 5D */	bl cLib_addCalcAngleS2__FPssss
/* 804AB4B0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AB4B4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AB4B8  80 63 00 00 */	lwz r3, 0(r3)
/* 804AB4BC  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 804AB4C0  4B B6 0F 1D */	bl mDoMtx_YrotS__FPA4_fs
/* 804AB4C4  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AB4C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804AB4CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804AB4D0  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 804AB4D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804AB4D8  38 61 00 20 */	addi r3, r1, 0x20
/* 804AB4DC  38 81 00 14 */	addi r4, r1, 0x14
/* 804AB4E0  4B DC 5A 0D */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AB4E4  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 804AB4E8  38 81 00 14 */	addi r4, r1, 0x14
/* 804AB4EC  7C 65 1B 78 */	mr r5, r3
/* 804AB4F0  4B E9 BB A1 */	bl PSVECAdd
/* 804AB4F4  48 00 00 10 */	b lbl_804AB504
lbl_804AB4F8:
/* 804AB4F8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AB4FC  D0 03 0D B0 */	stfs f0, 0xdb0(r3)
/* 804AB500  D0 03 0C 20 */	stfs f0, 0xc20(r3)
lbl_804AB504:
/* 804AB504  3B 7B 00 01 */	addi r27, r27, 1
/* 804AB508  2C 1B 00 63 */	cmpwi r27, 0x63
/* 804AB50C  3B 39 00 04 */	addi r25, r25, 4
/* 804AB510  3B 18 00 0C */	addi r24, r24, 0xc
/* 804AB514  41 80 FD C0 */	blt lbl_804AB2D4
/* 804AB518  3C 60 80 4C */	lis r3, __vt__8cM3dGPla@ha /* 0x804BBB70@ha */
/* 804AB51C  38 03 BB 70 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804BBB70@l */
/* 804AB520  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804AB524  38 61 00 54 */	addi r3, r1, 0x54
/* 804AB528  38 80 FF FF */	li r4, -1
/* 804AB52C  4B BC C7 B1 */	bl __dt__11dBgS_LinChkFv
lbl_804AB530:
/* 804AB530  3C 60 80 4C */	lis r3, __vt__8cM3dGPla@ha /* 0x804BBB70@ha */
/* 804AB534  38 03 BB 70 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x804BBB70@l */
/* 804AB538  90 01 00 50 */	stw r0, 0x50(r1)
/* 804AB53C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 804AB540  38 80 FF FF */	li r4, -1
/* 804AB544  4B BC C0 AD */	bl __dt__11dBgS_GndChkFv
/* 804AB548  E3 E1 01 88 */	psq_l f31, 392(r1), 0, 0 /* qr0 */
/* 804AB54C  CB E1 01 80 */	lfd f31, 0x180(r1)
/* 804AB550  E3 C1 01 78 */	psq_l f30, 376(r1), 0, 0 /* qr0 */
/* 804AB554  CB C1 01 70 */	lfd f30, 0x170(r1)
/* 804AB558  E3 A1 01 68 */	psq_l f29, 360(r1), 0, 0 /* qr0 */
/* 804AB55C  CB A1 01 60 */	lfd f29, 0x160(r1)
/* 804AB560  E3 81 01 58 */	psq_l f28, 344(r1), 0, 0 /* qr0 */
/* 804AB564  CB 81 01 50 */	lfd f28, 0x150(r1)
/* 804AB568  E3 61 01 48 */	psq_l f27, 328(r1), 0, 0 /* qr0 */
/* 804AB56C  CB 61 01 40 */	lfd f27, 0x140(r1)
/* 804AB570  39 61 01 40 */	addi r11, r1, 0x140
/* 804AB574  4B EB 6C 99 */	bl _restgpr_22
/* 804AB578  80 01 01 94 */	lwz r0, 0x194(r1)
/* 804AB57C  7C 08 03 A6 */	mtlr r0
/* 804AB580  38 21 01 90 */	addi r1, r1, 0x190
/* 804AB584  4E 80 00 20 */	blr 
