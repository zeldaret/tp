lbl_80CBCE2C:
/* 80CBCE2C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CBCE30  7C 08 02 A6 */	mflr r0
/* 80CBCE34  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CBCE38  39 61 00 60 */	addi r11, r1, 0x60
/* 80CBCE3C  4B 6A 53 A1 */	bl _savegpr_29
/* 80CBCE40  7C 7D 1B 78 */	mr r29, r3
/* 80CBCE44  3C 60 80 CC */	lis r3, lit_3631@ha /* 0x80CBDA5C@ha */
/* 80CBCE48  3B C3 DA 5C */	addi r30, r3, lit_3631@l /* 0x80CBDA5C@l */
/* 80CBCE4C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80CBCE50  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80CBCE54  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80CBCE58  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80CBCE5C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80CBCE60  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80CBCE64  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CBCE68  7C 03 07 74 */	extsb r3, r0
/* 80CBCE6C  4B 37 02 01 */	bl dComIfGp_getReverb__Fi
/* 80CBCE70  7C 67 1B 78 */	mr r7, r3
/* 80CBCE74  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008024F@ha */
/* 80CBCE78  38 03 02 4F */	addi r0, r3, 0x024F /* 0x0008024F@l */
/* 80CBCE7C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CBCE80  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CBCE84  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CBCE88  80 63 00 00 */	lwz r3, 0(r3)
/* 80CBCE8C  38 81 00 20 */	addi r4, r1, 0x20
/* 80CBCE90  38 BD 05 38 */	addi r5, r29, 0x538
/* 80CBCE94  38 C0 00 00 */	li r6, 0
/* 80CBCE98  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CBCE9C  FC 40 08 90 */	fmr f2, f1
/* 80CBCEA0  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 80CBCEA4  FC 80 18 90 */	fmr f4, f3
/* 80CBCEA8  39 00 00 00 */	li r8, 0
/* 80CBCEAC  4B 5E EA D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CBCEB0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CBCEB4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CBCEB8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CBCEBC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80CBCEC0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CBCEC4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80CBCEC8  4B 34 FE 9D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CBCECC  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80CBCED0  4B 35 00 75 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CBCED4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CBCED8  FC 40 08 90 */	fmr f2, f1
/* 80CBCEDC  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80CBCEE0  C0 1D 05 CC */	lfs f0, 0x5cc(r29)
/* 80CBCEE4  EC 63 00 32 */	fmuls f3, f3, f0
/* 80CBCEE8  4B 34 FE B5 */	bl transM__14mDoMtx_stack_cFfff
/* 80CBCEEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBCEF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBCEF4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80CBCEF8  7C 85 23 78 */	mr r5, r4
/* 80CBCEFC  4B 68 9E 71 */	bl PSMTXMultVec
/* 80CBCF00  C0 5D 05 CC */	lfs f2, 0x5cc(r29)
/* 80CBCF04  C0 3D 05 C8 */	lfs f1, 0x5c8(r29)
/* 80CBCF08  C0 1D 05 C4 */	lfs f0, 0x5c4(r29)
/* 80CBCF0C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CBCF10  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80CBCF14  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80CBCF18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBCF1C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBCF20  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CBCF24  38 80 00 00 */	li r4, 0
/* 80CBCF28  90 81 00 08 */	stw r4, 8(r1)
/* 80CBCF2C  38 00 FF FF */	li r0, -1
/* 80CBCF30  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBCF34  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CBCF38  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CBCF3C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CBCF40  38 80 00 00 */	li r4, 0
/* 80CBCF44  3C A0 00 01 */	lis r5, 0x0001 /* 0x000086FF@ha */
/* 80CBCF48  38 A5 86 FF */	addi r5, r5, 0x86FF /* 0x000086FF@l */
/* 80CBCF4C  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80CBCF50  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80CBCF54  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80CBCF58  39 21 00 30 */	addi r9, r1, 0x30
/* 80CBCF5C  39 40 00 FF */	li r10, 0xff
/* 80CBCF60  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CBCF64  4B 38 FB 2D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CBCF68  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CBCF6C  38 80 00 00 */	li r4, 0
/* 80CBCF70  90 81 00 08 */	stw r4, 8(r1)
/* 80CBCF74  38 00 FF FF */	li r0, -1
/* 80CBCF78  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBCF7C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CBCF80  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CBCF84  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CBCF88  38 80 00 00 */	li r4, 0
/* 80CBCF8C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008700@ha */
/* 80CBCF90  38 A5 87 00 */	addi r5, r5, 0x8700 /* 0x00008700@l */
/* 80CBCF94  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80CBCF98  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80CBCF9C  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80CBCFA0  39 21 00 30 */	addi r9, r1, 0x30
/* 80CBCFA4  39 40 00 FF */	li r10, 0xff
/* 80CBCFA8  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CBCFAC  4B 38 FA E5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CBCFB0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CBCFB4  38 80 00 00 */	li r4, 0
/* 80CBCFB8  90 81 00 08 */	stw r4, 8(r1)
/* 80CBCFBC  38 00 FF FF */	li r0, -1
/* 80CBCFC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBCFC4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CBCFC8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CBCFCC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CBCFD0  38 80 00 00 */	li r4, 0
/* 80CBCFD4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008701@ha */
/* 80CBCFD8  38 A5 87 01 */	addi r5, r5, 0x8701 /* 0x00008701@l */
/* 80CBCFDC  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80CBCFE0  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80CBCFE4  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80CBCFE8  39 21 00 30 */	addi r9, r1, 0x30
/* 80CBCFEC  39 40 00 FF */	li r10, 0xff
/* 80CBCFF0  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CBCFF4  4B 38 FA 9D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CBCFF8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CBCFFC  38 80 00 00 */	li r4, 0
/* 80CBD000  90 81 00 08 */	stw r4, 8(r1)
/* 80CBD004  38 00 FF FF */	li r0, -1
/* 80CBD008  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBD00C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CBD010  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CBD014  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CBD018  38 80 00 00 */	li r4, 0
/* 80CBD01C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008702@ha */
/* 80CBD020  38 A5 87 02 */	addi r5, r5, 0x8702 /* 0x00008702@l */
/* 80CBD024  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80CBD028  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80CBD02C  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80CBD030  39 21 00 30 */	addi r9, r1, 0x30
/* 80CBD034  39 40 00 FF */	li r10, 0xff
/* 80CBD038  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CBD03C  4B 38 FA 55 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CBD040  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CBD044  38 80 00 00 */	li r4, 0
/* 80CBD048  90 81 00 08 */	stw r4, 8(r1)
/* 80CBD04C  38 00 FF FF */	li r0, -1
/* 80CBD050  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBD054  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CBD058  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CBD05C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CBD060  38 80 00 00 */	li r4, 0
/* 80CBD064  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008703@ha */
/* 80CBD068  38 A5 87 03 */	addi r5, r5, 0x8703 /* 0x00008703@l */
/* 80CBD06C  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80CBD070  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80CBD074  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80CBD078  39 21 00 30 */	addi r9, r1, 0x30
/* 80CBD07C  39 40 00 FF */	li r10, 0xff
/* 80CBD080  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CBD084  4B 38 FA 0D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CBD088  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CBD08C  38 80 00 00 */	li r4, 0
/* 80CBD090  90 81 00 08 */	stw r4, 8(r1)
/* 80CBD094  38 00 FF FF */	li r0, -1
/* 80CBD098  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBD09C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CBD0A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CBD0A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CBD0A8  38 80 00 00 */	li r4, 0
/* 80CBD0AC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008704@ha */
/* 80CBD0B0  38 A5 87 04 */	addi r5, r5, 0x8704 /* 0x00008704@l */
/* 80CBD0B4  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80CBD0B8  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80CBD0BC  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80CBD0C0  39 21 00 30 */	addi r9, r1, 0x30
/* 80CBD0C4  39 40 00 FF */	li r10, 0xff
/* 80CBD0C8  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CBD0CC  4B 38 F9 C5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CBD0D0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CBD0D4  38 80 00 00 */	li r4, 0
/* 80CBD0D8  90 81 00 08 */	stw r4, 8(r1)
/* 80CBD0DC  38 00 FF FF */	li r0, -1
/* 80CBD0E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBD0E4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80CBD0E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CBD0EC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CBD0F0  38 80 00 00 */	li r4, 0
/* 80CBD0F4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008705@ha */
/* 80CBD0F8  38 A5 87 05 */	addi r5, r5, 0x8705 /* 0x00008705@l */
/* 80CBD0FC  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80CBD100  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80CBD104  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80CBD108  39 21 00 30 */	addi r9, r1, 0x30
/* 80CBD10C  39 40 00 FF */	li r10, 0xff
/* 80CBD110  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CBD114  4B 38 F9 7D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CBD118  88 9D 05 A8 */	lbz r4, 0x5a8(r29)
/* 80CBD11C  28 04 00 FF */	cmplwi r4, 0xff
/* 80CBD120  41 82 00 50 */	beq lbl_80CBD170
/* 80CBD124  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBD128  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBD12C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CBD130  7C 05 07 74 */	extsb r5, r0
/* 80CBD134  4B 37 82 2D */	bl isSwitch__10dSv_info_cCFii
/* 80CBD138  2C 03 00 00 */	cmpwi r3, 0
/* 80CBD13C  40 82 00 34 */	bne lbl_80CBD170
/* 80CBD140  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CBD144  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CBD148  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80CBD14C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CBD150  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80CBD154  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBD158  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBD15C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CBD160  38 80 00 08 */	li r4, 8
/* 80CBD164  38 A0 00 1F */	li r5, 0x1f
/* 80CBD168  38 C1 00 24 */	addi r6, r1, 0x24
/* 80CBD16C  4B 3B 28 B9 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80CBD170:
/* 80CBD170  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80CBD174  3C 60 80 CC */	lis r3, l_HIO@ha /* 0x80CBDBF8@ha */
/* 80CBD178  38 63 DB F8 */	addi r3, r3, l_HIO@l /* 0x80CBDBF8@l */
/* 80CBD17C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CBD180  EC 01 00 2A */	fadds f0, f1, f0
/* 80CBD184  FC 00 00 1E */	fctiwz f0, f0
/* 80CBD188  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80CBD18C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80CBD190  B0 1D 05 B0 */	sth r0, 0x5b0(r29)
/* 80CBD194  38 00 04 00 */	li r0, 0x400
/* 80CBD198  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80CBD19C  38 00 00 01 */	li r0, 1
/* 80CBD1A0  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 80CBD1A4  38 00 00 00 */	li r0, 0
/* 80CBD1A8  90 1D 05 A4 */	stw r0, 0x5a4(r29)
/* 80CBD1AC  39 61 00 60 */	addi r11, r1, 0x60
/* 80CBD1B0  4B 6A 50 79 */	bl _restgpr_29
/* 80CBD1B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CBD1B8  7C 08 03 A6 */	mtlr r0
/* 80CBD1BC  38 21 00 60 */	addi r1, r1, 0x60
/* 80CBD1C0  4E 80 00 20 */	blr 
