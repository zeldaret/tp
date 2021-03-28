lbl_8058B0D0:
/* 8058B0D0  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8058B0D4  7C 08 02 A6 */	mflr r0
/* 8058B0D8  90 01 01 44 */	stw r0, 0x144(r1)
/* 8058B0DC  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 8058B0E0  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 8058B0E4  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 8058B0E8  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 8058B0EC  39 61 01 20 */	addi r11, r1, 0x120
/* 8058B0F0  4B DD 70 D0 */	b _savegpr_22
/* 8058B0F4  7C 7B 1B 78 */	mr r27, r3
/* 8058B0F8  3C 60 80 59 */	lis r3, l_bmdidx@ha
/* 8058B0FC  3B C3 C3 80 */	addi r30, r3, l_bmdidx@l
/* 8058B100  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058B104  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058B108  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 8058B10C  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 8058B110  C0 7B 04 D8 */	lfs f3, 0x4d8(r27)
/* 8058B114  4B DB B7 D4 */	b PSMTXTrans
/* 8058B118  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058B11C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058B120  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 8058B124  4B A8 13 10 */	b mDoMtx_YrotM__FPA4_fs
/* 8058B128  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8058B12C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8058B130  40 82 00 18 */	bne lbl_8058B148
/* 8058B134  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058B138  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058B13C  80 9B 06 0C */	lwz r4, 0x60c(r27)
/* 8058B140  38 84 00 24 */	addi r4, r4, 0x24
/* 8058B144  4B DB B3 6C */	b PSMTXCopy
lbl_8058B148:
/* 8058B148  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058B14C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058B150  38 9B 05 D8 */	addi r4, r27, 0x5d8
/* 8058B154  4B DB B3 5C */	b PSMTXCopy
/* 8058B158  A8 1B 04 B6 */	lha r0, 0x4b6(r27)
/* 8058B15C  7C 00 00 D0 */	neg r0, r0
/* 8058B160  7C 1D 07 34 */	extsh r29, r0
/* 8058B164  3B 80 00 00 */	li r28, 0
/* 8058B168  3B 40 00 00 */	li r26, 0
/* 8058B16C  3B 20 00 00 */	li r25, 0
/* 8058B170  3C 60 80 43 */	lis r3, BaseZ__4cXyz@ha
/* 8058B174  3B E3 0D 3C */	addi r31, r3, BaseZ__4cXyz@l
/* 8058B178  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 8058B17C  C3 E3 11 80 */	lfs f31, G_CM3D_F_ABS_MIN@l(r3)
/* 8058B180  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058B184  3A C3 D4 70 */	addi r22, r3, now__14mDoMtx_stack_c@l
/* 8058B188  7E D7 B3 78 */	mr r23, r22
/* 8058B18C  7E D8 B3 78 */	mr r24, r22
/* 8058B190  48 00 01 54 */	b lbl_8058B2E4
lbl_8058B194:
/* 8058B194  80 DB 06 18 */	lwz r6, 0x618(r27)
/* 8058B198  38 61 00 44 */	addi r3, r1, 0x44
/* 8058B19C  38 1C 00 01 */	addi r0, r28, 1
/* 8058B1A0  1C 80 00 24 */	mulli r4, r0, 0x24
/* 8058B1A4  38 84 00 0C */	addi r4, r4, 0xc
/* 8058B1A8  7C 86 22 14 */	add r4, r6, r4
/* 8058B1AC  38 B9 00 0C */	addi r5, r25, 0xc
/* 8058B1B0  7C A6 2A 14 */	add r5, r6, r5
/* 8058B1B4  4B CD B9 80 */	b __mi__4cXyzCFRC3Vec
/* 8058B1B8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8058B1BC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8058B1C0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8058B1C4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8058B1C8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8058B1CC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8058B1D0  7F E3 FB 78 */	mr r3, r31
/* 8058B1D4  38 81 00 80 */	addi r4, r1, 0x80
/* 8058B1D8  38 A1 00 74 */	addi r5, r1, 0x74
/* 8058B1DC  4B DB BF D8 */	b PSVECCrossProduct
/* 8058B1E0  38 61 00 80 */	addi r3, r1, 0x80
/* 8058B1E4  4B DB BF 54 */	b PSVECSquareMag
/* 8058B1E8  FC 00 0A 10 */	fabs f0, f1
/* 8058B1EC  FC 00 00 18 */	frsp f0, f0
/* 8058B1F0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8058B1F4  41 80 00 9C */	blt lbl_8058B290
/* 8058B1F8  38 61 00 38 */	addi r3, r1, 0x38
/* 8058B1FC  38 81 00 80 */	addi r4, r1, 0x80
/* 8058B200  4B CD BC F4 */	b normalize__4cXyzFv
/* 8058B204  38 61 00 80 */	addi r3, r1, 0x80
/* 8058B208  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha
/* 8058B20C  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l
/* 8058B210  4B DB BF 84 */	b PSVECDotProduct
/* 8058B214  FF C0 08 90 */	fmr f30, f1
/* 8058B218  38 61 00 74 */	addi r3, r1, 0x74
/* 8058B21C  4B DB BF 1C */	b PSVECSquareMag
/* 8058B220  FC 00 0A 10 */	fabs f0, f1
/* 8058B224  FC 20 00 18 */	frsp f1, f0
/* 8058B228  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 8058B22C  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 8058B230  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058B234  41 80 00 50 */	blt lbl_8058B284
/* 8058B238  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8058B23C  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8058B240  4C 40 13 82 */	cror 2, 0, 2
/* 8058B244  40 82 00 40 */	bne lbl_8058B284
/* 8058B248  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8058B24C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8058B250  4C 40 13 82 */	cror 2, 0, 2
/* 8058B254  40 82 00 30 */	bne lbl_8058B284
/* 8058B258  FC 20 F0 90 */	fmr f1, f30
/* 8058B25C  4B DE 14 84 */	b acos
/* 8058B260  FF C0 08 18 */	frsp f30, f1
/* 8058B264  38 61 00 2C */	addi r3, r1, 0x2c
/* 8058B268  38 81 00 74 */	addi r4, r1, 0x74
/* 8058B26C  4B CD BC 88 */	b normalize__4cXyzFv
/* 8058B270  38 61 00 BC */	addi r3, r1, 0xbc
/* 8058B274  38 81 00 74 */	addi r4, r1, 0x74
/* 8058B278  FC 20 F0 90 */	fmr f1, f30
/* 8058B27C  4B DB B5 FC */	b PSMTXRotAxisRad
/* 8058B280  48 00 00 18 */	b lbl_8058B298
lbl_8058B284:
/* 8058B284  38 61 00 BC */	addi r3, r1, 0xbc
/* 8058B288  4B DB B1 FC */	b PSMTXIdentity
/* 8058B28C  48 00 00 0C */	b lbl_8058B298
lbl_8058B290:
/* 8058B290  38 61 00 BC */	addi r3, r1, 0xbc
/* 8058B294  4B DB B1 F0 */	b PSMTXIdentity
lbl_8058B298:
/* 8058B298  80 1B 06 18 */	lwz r0, 0x618(r27)
/* 8058B29C  38 79 00 0C */	addi r3, r25, 0xc
/* 8058B2A0  7C 60 1A 14 */	add r3, r0, r3
/* 8058B2A4  3B BD 40 00 */	addi r29, r29, 0x4000
/* 8058B2A8  4B A8 1A BC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8058B2AC  7E C3 B3 78 */	mr r3, r22
/* 8058B2B0  38 81 00 BC */	addi r4, r1, 0xbc
/* 8058B2B4  7E C5 B3 78 */	mr r5, r22
/* 8058B2B8  4B DB B2 2C */	b PSMTXConcat
/* 8058B2BC  7E E3 BB 78 */	mr r3, r23
/* 8058B2C0  7F A4 EB 78 */	mr r4, r29
/* 8058B2C4  4B A8 12 08 */	b mDoMtx_ZrotM__FPA4_fs
/* 8058B2C8  7F 03 C3 78 */	mr r3, r24
/* 8058B2CC  80 1B 06 20 */	lwz r0, 0x620(r27)
/* 8058B2D0  7C 80 D2 14 */	add r4, r0, r26
/* 8058B2D4  4B DB B1 DC */	b PSMTXCopy
/* 8058B2D8  3B 9C 00 01 */	addi r28, r28, 1
/* 8058B2DC  3B 5A 00 34 */	addi r26, r26, 0x34
/* 8058B2E0  3B 39 00 24 */	addi r25, r25, 0x24
lbl_8058B2E4:
/* 8058B2E4  80 BB 06 1C */	lwz r5, 0x61c(r27)
/* 8058B2E8  7C 1C 28 00 */	cmpw r28, r5
/* 8058B2EC  41 80 FE A8 */	blt lbl_8058B194
/* 8058B2F0  80 DB 06 18 */	lwz r6, 0x618(r27)
/* 8058B2F4  38 61 00 20 */	addi r3, r1, 0x20
/* 8058B2F8  1C 85 00 24 */	mulli r4, r5, 0x24
/* 8058B2FC  38 84 00 0C */	addi r4, r4, 0xc
/* 8058B300  7C 86 22 14 */	add r4, r6, r4
/* 8058B304  38 05 FF FF */	addi r0, r5, -1
/* 8058B308  1C A0 00 24 */	mulli r5, r0, 0x24
/* 8058B30C  38 A5 00 0C */	addi r5, r5, 0xc
/* 8058B310  7C A6 2A 14 */	add r5, r6, r5
/* 8058B314  4B CD B8 20 */	b __mi__4cXyzCFRC3Vec
/* 8058B318  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8058B31C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8058B320  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8058B324  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8058B328  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8058B32C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8058B330  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8058B334  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8058B338  90 61 00 50 */	stw r3, 0x50(r1)
/* 8058B33C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8058B340  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8058B344  90 01 00 58 */	stw r0, 0x58(r1)
/* 8058B348  38 61 00 68 */	addi r3, r1, 0x68
/* 8058B34C  4B DB BD EC */	b PSVECSquareMag
/* 8058B350  FC 00 0A 10 */	fabs f0, f1
/* 8058B354  FC 20 00 18 */	frsp f1, f0
/* 8058B358  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 8058B35C  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 8058B360  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058B364  41 80 00 A8 */	blt lbl_8058B40C
/* 8058B368  38 61 00 14 */	addi r3, r1, 0x14
/* 8058B36C  38 81 00 68 */	addi r4, r1, 0x68
/* 8058B370  4B CD BB 84 */	b normalize__4cXyzFv
/* 8058B374  38 61 00 50 */	addi r3, r1, 0x50
/* 8058B378  38 81 00 68 */	addi r4, r1, 0x68
/* 8058B37C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 8058B380  4B DB BE 34 */	b PSVECCrossProduct
/* 8058B384  38 61 00 68 */	addi r3, r1, 0x68
/* 8058B388  38 81 00 50 */	addi r4, r1, 0x50
/* 8058B38C  4B DB BE 08 */	b PSVECDotProduct
/* 8058B390  FF C0 08 90 */	fmr f30, f1
/* 8058B394  38 61 00 5C */	addi r3, r1, 0x5c
/* 8058B398  4B DB BD A0 */	b PSVECSquareMag
/* 8058B39C  FC 00 0A 10 */	fabs f0, f1
/* 8058B3A0  FC 20 00 18 */	frsp f1, f0
/* 8058B3A4  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 8058B3A8  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 8058B3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058B3B0  41 80 00 50 */	blt lbl_8058B400
/* 8058B3B4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8058B3B8  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8058B3BC  4C 40 13 82 */	cror 2, 0, 2
/* 8058B3C0  40 82 00 40 */	bne lbl_8058B400
/* 8058B3C4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8058B3C8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8058B3CC  4C 40 13 82 */	cror 2, 0, 2
/* 8058B3D0  40 82 00 30 */	bne lbl_8058B400
/* 8058B3D4  FC 20 F0 90 */	fmr f1, f30
/* 8058B3D8  4B DE 13 08 */	b acos
/* 8058B3DC  FF C0 08 18 */	frsp f30, f1
/* 8058B3E0  38 61 00 08 */	addi r3, r1, 8
/* 8058B3E4  38 81 00 5C */	addi r4, r1, 0x5c
/* 8058B3E8  4B CD BB 0C */	b normalize__4cXyzFv
/* 8058B3EC  38 61 00 8C */	addi r3, r1, 0x8c
/* 8058B3F0  38 81 00 5C */	addi r4, r1, 0x5c
/* 8058B3F4  FC 20 F0 90 */	fmr f1, f30
/* 8058B3F8  4B DB B4 80 */	b PSMTXRotAxisRad
/* 8058B3FC  48 00 00 18 */	b lbl_8058B414
lbl_8058B400:
/* 8058B400  38 61 00 8C */	addi r3, r1, 0x8c
/* 8058B404  4B DB B0 80 */	b PSMTXIdentity
/* 8058B408  48 00 00 0C */	b lbl_8058B414
lbl_8058B40C:
/* 8058B40C  38 61 00 8C */	addi r3, r1, 0x8c
/* 8058B410  4B DB B0 74 */	b PSMTXIdentity
lbl_8058B414:
/* 8058B414  80 9B 06 18 */	lwz r4, 0x618(r27)
/* 8058B418  80 1B 06 1C */	lwz r0, 0x61c(r27)
/* 8058B41C  1C 60 00 24 */	mulli r3, r0, 0x24
/* 8058B420  38 63 00 0C */	addi r3, r3, 0xc
/* 8058B424  7C 64 1A 14 */	add r3, r4, r3
/* 8058B428  4B A8 19 3C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8058B42C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058B430  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058B434  38 81 00 8C */	addi r4, r1, 0x8c
/* 8058B438  7C 65 1B 78 */	mr r5, r3
/* 8058B43C  4B DB B0 A8 */	b PSMTXConcat
/* 8058B440  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058B444  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058B448  7C 1D 00 D0 */	neg r0, r29
/* 8058B44C  7C 04 07 34 */	extsh r4, r0
/* 8058B450  4B A8 0F E4 */	b mDoMtx_YrotM__FPA4_fs
/* 8058B454  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058B458  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058B45C  80 9B 06 08 */	lwz r4, 0x608(r27)
/* 8058B460  38 84 00 24 */	addi r4, r4, 0x24
/* 8058B464  4B DB B0 4C */	b PSMTXCopy
/* 8058B468  C0 3B 04 EC */	lfs f1, 0x4ec(r27)
/* 8058B46C  C0 5B 04 F0 */	lfs f2, 0x4f0(r27)
/* 8058B470  C0 7B 04 F4 */	lfs f3, 0x4f4(r27)
/* 8058B474  4B A8 19 C4 */	b scaleM__14mDoMtx_stack_cFfff
/* 8058B478  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058B47C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8058B480  38 9B 05 A8 */	addi r4, r27, 0x5a8
/* 8058B484  4B DB B0 2C */	b PSMTXCopy
/* 8058B488  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 8058B48C  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 8058B490  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 8058B494  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 8058B498  39 61 01 20 */	addi r11, r1, 0x120
/* 8058B49C  4B DD 6D 70 */	b _restgpr_22
/* 8058B4A0  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8058B4A4  7C 08 03 A6 */	mtlr r0
/* 8058B4A8  38 21 01 40 */	addi r1, r1, 0x140
/* 8058B4AC  4E 80 00 20 */	blr 
