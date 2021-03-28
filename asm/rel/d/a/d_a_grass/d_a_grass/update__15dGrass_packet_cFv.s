lbl_80520030:
/* 80520030  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80520034  7C 08 02 A6 */	mflr r0
/* 80520038  90 01 00 94 */	stw r0, 0x94(r1)
/* 8052003C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80520040  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80520044  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80520048  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8052004C  39 61 00 70 */	addi r11, r1, 0x70
/* 80520050  4B E4 21 68 */	b _savegpr_20
/* 80520054  7C 7B 1B 78 */	mr r27, r3
/* 80520058  3C 60 80 52 */	lis r3, lit_3999@ha
/* 8052005C  3B C3 30 28 */	addi r30, r3, lit_3999@l
/* 80520060  3E FB 00 02 */	addis r23, r27, 2
/* 80520064  3B 00 00 00 */	li r24, 0
/* 80520068  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8052006C  3A C3 D4 70 */	addi r22, r3, now__14mDoMtx_stack_c@l
/* 80520070  7E D5 B3 78 */	mr r21, r22
/* 80520074  7E D4 B3 78 */	mr r20, r22
/* 80520078  3A F7 BD 64 */	addi r23, r23, -17052
lbl_8052007C:
/* 8052007C  7E C3 B3 78 */	mr r3, r22
/* 80520080  A8 97 00 02 */	lha r4, 2(r23)
/* 80520084  4B AE C3 58 */	b mDoMtx_YrotS__FPA4_fs
/* 80520088  7E C3 B3 78 */	mr r3, r22
/* 8052008C  A8 97 00 04 */	lha r4, 4(r23)
/* 80520090  4B AE C3 0C */	b mDoMtx_XrotM__FPA4_fs
/* 80520094  7E A3 AB 78 */	mr r3, r21
/* 80520098  A8 17 00 02 */	lha r0, 2(r23)
/* 8052009C  7C 00 00 D0 */	neg r0, r0
/* 805200A0  7C 04 07 34 */	extsh r4, r0
/* 805200A4  4B AE C3 90 */	b mDoMtx_YrotM__FPA4_fs
/* 805200A8  7E 83 A3 78 */	mr r3, r20
/* 805200AC  38 97 00 08 */	addi r4, r23, 8
/* 805200B0  4B E2 64 00 */	b PSMTXCopy
/* 805200B4  3B 18 00 01 */	addi r24, r24, 1
/* 805200B8  2C 18 00 70 */	cmpwi r24, 0x70
/* 805200BC  3A F7 00 38 */	addi r23, r23, 0x38
/* 805200C0  41 80 FF BC */	blt lbl_8052007C
/* 805200C4  3B BB 00 14 */	addi r29, r27, 0x14
/* 805200C8  3F 1B 00 02 */	addis r24, r27, 2
/* 805200CC  3B 40 00 00 */	li r26, 0
/* 805200D0  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 805200D4  3C 60 80 45 */	lis r3, mSystemFar__14mDoLib_clipper@ha
/* 805200D8  C0 03 0C 70 */	lfs f0, mSystemFar__14mDoLib_clipper@l(r3)
/* 805200DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805200E0  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha
/* 805200E4  3A E3 D8 E4 */	addi r23, r3, mClipper__14mDoLib_clipper@l
/* 805200E8  D0 17 00 58 */	stfs f0, 0x58(r23)
/* 805200EC  7E E3 BB 78 */	mr r3, r23
/* 805200F0  3B 18 BD 64 */	addi r24, r24, -17052
/* 805200F4  4B D5 36 98 */	b calcViewFrustum__11J3DUClipperFv
/* 805200F8  3B 80 00 00 */	li r28, 0
/* 805200FC  3A C0 00 00 */	li r22, 0
/* 80520100  3B E0 00 00 */	li r31, 0
/* 80520104  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80520108  3A A3 CA 54 */	addi r21, r3, g_env_light@l
/* 8052010C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80520110  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80520114  3B 23 4E 00 */	addi r25, r3, 0x4e00
lbl_80520118:
/* 80520118  88 1D 00 00 */	lbz r0, 0(r29)
/* 8052011C  28 00 00 00 */	cmplwi r0, 0
/* 80520120  41 82 04 EC */	beq lbl_8052060C
/* 80520124  28 00 00 01 */	cmplwi r0, 1
/* 80520128  40 82 00 24 */	bne lbl_8052014C
/* 8052012C  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 80520130  40 80 00 1C */	bge lbl_8052014C
/* 80520134  38 7D 00 0C */	addi r3, r29, 0xc
/* 80520138  4B FF FE 51 */	bl checkGroundY__FR4cXyz
/* 8052013C  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 80520140  38 00 00 02 */	li r0, 2
/* 80520144  98 1D 00 00 */	stb r0, 0(r29)
/* 80520148  3B 5A 00 01 */	addi r26, r26, 1
lbl_8052014C:
/* 8052014C  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 80520150  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 80520154  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80520158  EC 41 00 2A */	fadds f2, f1, f0
/* 8052015C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80520160  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80520164  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80520168  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8052016C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80520170  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80520174  90 61 00 08 */	stw r3, 8(r1)
/* 80520178  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052017C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80520180  90 01 00 10 */	stw r0, 0x10(r1)
/* 80520184  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha
/* 80520188  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l
/* 8052018C  3C 80 80 43 */	lis r4, j3dSys@ha
/* 80520190  38 84 4A C8 */	addi r4, r4, j3dSys@l
/* 80520194  38 A1 00 08 */	addi r5, r1, 8
/* 80520198  4B D5 37 64 */	b clip__11J3DUClipperCFPA4_Cf3Vecf
/* 8052019C  2C 03 00 00 */	cmpwi r3, 0
/* 805201A0  41 82 00 14 */	beq lbl_805201B4
/* 805201A4  88 1D 00 01 */	lbz r0, 1(r29)
/* 805201A8  60 00 00 02 */	ori r0, r0, 2
/* 805201AC  98 1D 00 01 */	stb r0, 1(r29)
/* 805201B0  48 00 04 5C */	b lbl_8052060C
lbl_805201B4:
/* 805201B4  88 1D 00 01 */	lbz r0, 1(r29)
/* 805201B8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 805201BC  98 1D 00 01 */	stb r0, 1(r29)
/* 805201C0  88 7D 00 02 */	lbz r3, 2(r29)
/* 805201C4  7C 60 07 75 */	extsb. r0, r3
/* 805201C8  41 80 03 64 */	blt lbl_8052052C
/* 805201CC  7C 60 07 74 */	extsb r0, r3
/* 805201D0  1C 60 00 38 */	mulli r3, r0, 0x38
/* 805201D4  38 63 00 08 */	addi r3, r3, 8
/* 805201D8  7C 78 1A 14 */	add r3, r24, r3
/* 805201DC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 805201E0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 805201E4  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 805201E8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805201EC  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805201F0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 805201F4  88 15 12 D2 */	lbz r0, 0x12d2(r21)
/* 805201F8  28 00 00 01 */	cmplwi r0, 1
/* 805201FC  40 82 00 14 */	bne lbl_80520210
/* 80520200  38 00 00 00 */	li r0, 0
/* 80520204  3C 80 80 52 */	lis r4, mAngleZ@ha
/* 80520208  38 84 79 30 */	addi r4, r4, mAngleZ@l
/* 8052020C  7C 04 FB 2E */	sthx r0, r4, r31
lbl_80520210:
/* 80520210  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80520214  FC 00 00 1E */	fctiwz f0, f0
/* 80520218  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8052021C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80520220  7C 00 07 34 */	extsh r0, r0
/* 80520224  1C 00 0D CF */	mulli r0, r0, 0xdcf
/* 80520228  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 8052022C  C8 5E 00 38 */	lfd f2, 0x38(r30)
/* 80520230  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80520234  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80520238  3C 80 43 30 */	lis r4, 0x4330
/* 8052023C  90 81 00 28 */	stw r4, 0x28(r1)
/* 80520240  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80520244  EC 00 10 28 */	fsubs f0, f0, f2
/* 80520248  C0 3E 01 14 */	lfs f1, 0x114(r30)
/* 8052024C  EC 60 08 24 */	fdivs f3, f0, f1
/* 80520250  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80520254  FC 00 00 1E */	fctiwz f0, f0
/* 80520258  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8052025C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80520260  7C 00 07 34 */	extsh r0, r0
/* 80520264  1C 00 0D CF */	mulli r0, r0, 0xdcf
/* 80520268  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 8052026C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80520270  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80520274  90 81 00 38 */	stw r4, 0x38(r1)
/* 80520278  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8052027C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80520280  EC 00 08 24 */	fdivs f0, f0, f1
/* 80520284  EC 23 00 2A */	fadds f1, f3, f0
/* 80520288  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8052028C  EC 41 00 32 */	fmuls f2, f1, f0
/* 80520290  88 1D 00 05 */	lbz r0, 5(r29)
/* 80520294  28 00 00 0A */	cmplwi r0, 0xa
/* 80520298  41 80 00 28 */	blt lbl_805202C0
/* 8052029C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805202A0  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 805202A4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805202A8  EF E1 00 2A */	fadds f31, f1, f0
/* 805202AC  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 805202B0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805202B4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805202B8  EF C1 00 2A */	fadds f30, f1, f0
/* 805202BC  48 00 00 20 */	b lbl_805202DC
lbl_805202C0:
/* 805202C0  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 805202C4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805202C8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805202CC  EC 21 00 2A */	fadds f1, f1, f0
/* 805202D0  FF E0 08 90 */	fmr f31, f1
/* 805202D4  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 805202D8  EF C0 00 72 */	fmuls f30, f0, f1
lbl_805202DC:
/* 805202DC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805202E0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805202E4  4B E2 61 CC */	b PSMTXCopy
/* 805202E8  88 1D 00 05 */	lbz r0, 5(r29)
/* 805202EC  28 00 00 07 */	cmplwi r0, 7
/* 805202F0  41 80 00 A0 */	blt lbl_80520390
/* 805202F4  28 00 00 09 */	cmplwi r0, 9
/* 805202F8  41 81 00 98 */	bgt lbl_80520390
/* 805202FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80520300  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80520304  3C 80 80 52 */	lis r4, mAngleZ@ha
/* 80520308  3A 84 79 30 */	addi r20, r4, mAngleZ@l
/* 8052030C  7C 94 FA AE */	lhax r4, r20, r31
/* 80520310  4B AE C1 BC */	b mDoMtx_ZrotM__FPA4_fs
/* 80520314  FC 20 F8 90 */	fmr f1, f31
/* 80520318  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 8052031C  EC 5E 00 28 */	fsubs f2, f30, f0
/* 80520320  FC 60 F8 90 */	fmr f3, f31
/* 80520324  4B AE CB 14 */	b scaleM__14mDoMtx_stack_cFfff
/* 80520328  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8052032C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80520330  7C 14 FA AE */	lhax r0, r20, r31
/* 80520334  7C 00 00 D0 */	neg r0, r0
/* 80520338  7C 04 07 34 */	extsh r4, r0
/* 8052033C  4B AE C1 90 */	b mDoMtx_ZrotM__FPA4_fs
/* 80520340  7C 74 FA AE */	lhax r3, r20, r31
/* 80520344  C0 7E 01 24 */	lfs f3, 0x124(r30)
/* 80520348  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8052034C  38 1C 00 01 */	addi r0, r28, 1
/* 80520350  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80520354  C8 3E 00 38 */	lfd f1, 0x38(r30)
/* 80520358  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8052035C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80520360  3C 00 43 30 */	lis r0, 0x4330
/* 80520364  90 01 00 38 */	stw r0, 0x38(r1)
/* 80520368  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8052036C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80520370  EC 02 00 32 */	fmuls f0, f2, f0
/* 80520374  EC 03 00 2A */	fadds f0, f3, f0
/* 80520378  FC 00 00 1E */	fctiwz f0, f0
/* 8052037C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80520380  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80520384  7C 03 02 14 */	add r0, r3, r0
/* 80520388  7C 14 FB 2E */	sthx r0, r20, r31
/* 8052038C  48 00 01 84 */	b lbl_80520510
lbl_80520390:
/* 80520390  28 00 00 0A */	cmplwi r0, 0xa
/* 80520394  41 80 00 3C */	blt lbl_805203D0
/* 80520398  7F 23 CB 78 */	mr r3, r25
/* 8052039C  3C 80 80 52 */	lis r4, stringBase0@ha
/* 805203A0  38 84 31 C0 */	addi r4, r4, stringBase0@l
/* 805203A4  38 84 00 07 */	addi r4, r4, 7
/* 805203A8  38 A0 00 06 */	li r5, 6
/* 805203AC  4B E4 5C E0 */	b memcmp
/* 805203B0  2C 03 00 00 */	cmpwi r3, 0
/* 805203B4  41 82 00 1C */	beq lbl_805203D0
/* 805203B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805203BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805203C0  3C 80 80 52 */	lis r4, mAngleZ@ha
/* 805203C4  38 84 79 30 */	addi r4, r4, mAngleZ@l
/* 805203C8  7C 84 FA AE */	lhax r4, r4, r31
/* 805203CC  4B AE C1 00 */	b mDoMtx_ZrotM__FPA4_fs
lbl_805203D0:
/* 805203D0  FC 20 F8 90 */	fmr f1, f31
/* 805203D4  FC 40 F0 90 */	fmr f2, f30
/* 805203D8  FC 60 F8 90 */	fmr f3, f31
/* 805203DC  4B AE CA 5C */	b scaleM__14mDoMtx_stack_cFfff
/* 805203E0  88 1D 00 05 */	lbz r0, 5(r29)
/* 805203E4  28 00 00 0A */	cmplwi r0, 0xa
/* 805203E8  41 80 00 44 */	blt lbl_8052042C
/* 805203EC  7F 23 CB 78 */	mr r3, r25
/* 805203F0  3C 80 80 52 */	lis r4, stringBase0@ha
/* 805203F4  38 84 31 C0 */	addi r4, r4, stringBase0@l
/* 805203F8  38 84 00 07 */	addi r4, r4, 7
/* 805203FC  38 A0 00 06 */	li r5, 6
/* 80520400  4B E4 5C 8C */	b memcmp
/* 80520404  2C 03 00 00 */	cmpwi r3, 0
/* 80520408  41 82 00 24 */	beq lbl_8052042C
/* 8052040C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80520410  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80520414  3C 80 80 52 */	lis r4, mAngleZ@ha
/* 80520418  38 84 79 30 */	addi r4, r4, mAngleZ@l
/* 8052041C  7C 04 FA AE */	lhax r0, r4, r31
/* 80520420  7C 00 00 D0 */	neg r0, r0
/* 80520424  7C 04 07 34 */	extsh r4, r0
/* 80520428  4B AE C0 A4 */	b mDoMtx_ZrotM__FPA4_fs
lbl_8052042C:
/* 8052042C  88 1D 00 05 */	lbz r0, 5(r29)
/* 80520430  28 00 00 0A */	cmplwi r0, 0xa
/* 80520434  41 80 00 40 */	blt lbl_80520474
/* 80520438  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 8052043C  C0 9E 01 28 */	lfs f4, 0x128(r30)
/* 80520440  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80520444  57 80 07 BE */	clrlwi r0, r28, 0x1e
/* 80520448  C8 5E 00 38 */	lfd f2, 0x38(r30)
/* 8052044C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80520450  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80520454  3C 00 43 30 */	lis r0, 0x4330
/* 80520458  90 01 00 38 */	stw r0, 0x38(r1)
/* 8052045C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80520460  EC 00 10 28 */	fsubs f0, f0, f2
/* 80520464  EC 03 00 32 */	fmuls f0, f3, f0
/* 80520468  EC 44 00 2A */	fadds f2, f4, f0
/* 8052046C  FC 60 08 90 */	fmr f3, f1
/* 80520470  4B AE C9 C8 */	b scaleM__14mDoMtx_stack_cFfff
lbl_80520474:
/* 80520474  88 1D 00 05 */	lbz r0, 5(r29)
/* 80520478  28 00 00 0A */	cmplwi r0, 0xa
/* 8052047C  41 80 00 94 */	blt lbl_80520510
/* 80520480  7F 23 CB 78 */	mr r3, r25
/* 80520484  3C 80 80 52 */	lis r4, stringBase0@ha
/* 80520488  38 84 31 C0 */	addi r4, r4, stringBase0@l
/* 8052048C  38 84 00 07 */	addi r4, r4, 7
/* 80520490  38 A0 00 06 */	li r5, 6
/* 80520494  4B E4 5B F8 */	b memcmp
/* 80520498  2C 03 00 00 */	cmpwi r3, 0
/* 8052049C  41 82 00 74 */	beq lbl_80520510
/* 805204A0  4B B3 A6 50 */	b dKyw_get_wind_pow__Fv
/* 805204A4  FF E0 08 90 */	fmr f31, f1
/* 805204A8  4B B3 A6 48 */	b dKyw_get_wind_pow__Fv
/* 805204AC  EF E1 07 F2 */	fmuls f31, f1, f31
/* 805204B0  4B B3 A6 40 */	b dKyw_get_wind_pow__Fv
/* 805204B4  EC 81 07 F2 */	fmuls f4, f1, f31
/* 805204B8  C0 7E 01 30 */	lfs f3, 0x130(r30)
/* 805204BC  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 805204C0  38 1C 00 01 */	addi r0, r28, 1
/* 805204C4  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 805204C8  C8 3E 00 38 */	lfd f1, 0x38(r30)
/* 805204CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805204D0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805204D4  3C 00 43 30 */	lis r0, 0x4330
/* 805204D8  90 01 00 38 */	stw r0, 0x38(r1)
/* 805204DC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805204E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805204E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805204E8  EC 03 00 2A */	fadds f0, f3, f0
/* 805204EC  EC 00 01 32 */	fmuls f0, f0, f4
/* 805204F0  FC 00 00 1E */	fctiwz f0, f0
/* 805204F4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805204F8  80 81 00 34 */	lwz r4, 0x34(r1)
/* 805204FC  3C 60 80 52 */	lis r3, mAngleZ@ha
/* 80520500  38 63 79 30 */	addi r3, r3, mAngleZ@l
/* 80520504  7C 03 FA AE */	lhax r0, r3, r31
/* 80520508  7C 00 22 14 */	add r0, r0, r4
/* 8052050C  7C 03 FB 2E */	sthx r0, r3, r31
lbl_80520510:
/* 80520510  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80520514  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80520518  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8052051C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80520520  38 BD 00 18 */	addi r5, r29, 0x18
/* 80520524  4B E2 5F C0 */	b PSMTXConcat
/* 80520528  48 00 00 E4 */	b lbl_8052060C
lbl_8052052C:
/* 8052052C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80520530  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80520534  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80520538  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 8052053C  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 80520540  4B E2 63 A8 */	b PSMTXTrans
/* 80520544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80520548  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8052054C  7E C4 07 34 */	extsh r4, r22
/* 80520550  4B AE BE E4 */	b mDoMtx_YrotM__FPA4_fs
/* 80520554  88 1D 00 02 */	lbz r0, 2(r29)
/* 80520558  7C 00 07 74 */	extsb r0, r0
/* 8052055C  2C 00 FF FE */	cmpwi r0, -2
/* 80520560  40 80 00 38 */	bge lbl_80520598
/* 80520564  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80520568  7C 00 00 D0 */	neg r0, r0
/* 8052056C  C8 5E 00 38 */	lfd f2, 0x38(r30)
/* 80520570  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80520574  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80520578  3C 00 43 30 */	lis r0, 0x4330
/* 8052057C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80520580  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80520584  EC 40 10 28 */	fsubs f2, f0, f2
/* 80520588  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8052058C  EC 42 00 24 */	fdivs f2, f2, f0
/* 80520590  FC 60 08 90 */	fmr f3, f1
/* 80520594  4B AE C8 A4 */	b scaleM__14mDoMtx_stack_cFfff
lbl_80520598:
/* 80520598  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 8052059C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805205A0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 805205A4  FC 00 00 1E */	fctiwz f0, f0
/* 805205A8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805205AC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805205B0  7C 00 07 34 */	extsh r0, r0
/* 805205B4  1C 00 0D CF */	mulli r0, r0, 0xdcf
/* 805205B8  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 805205BC  C8 3E 00 38 */	lfd f1, 0x38(r30)
/* 805205C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805205C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805205C8  3C 00 43 30 */	lis r0, 0x4330
/* 805205CC  90 01 00 30 */	stw r0, 0x30(r1)
/* 805205D0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 805205D4  EC 20 08 28 */	fsubs f1, f0, f1
/* 805205D8  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 805205DC  EC 01 00 24 */	fdivs f0, f1, f0
/* 805205E0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805205E4  EC 23 00 2A */	fadds f1, f3, f0
/* 805205E8  FC 40 08 90 */	fmr f2, f1
/* 805205EC  FC 60 08 90 */	fmr f3, f1
/* 805205F0  4B AE C8 48 */	b scaleM__14mDoMtx_stack_cFfff
/* 805205F4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 805205F8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 805205FC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80520600  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80520604  38 BD 00 18 */	addi r5, r29, 0x18
/* 80520608  4B E2 5E DC */	b PSMTXConcat
lbl_8052060C:
/* 8052060C  3B 9C 00 01 */	addi r28, r28, 1
/* 80520610  2C 1C 05 DC */	cmpwi r28, 0x5dc
/* 80520614  3B BD 00 4C */	addi r29, r29, 0x4c
/* 80520618  3A D6 0D CF */	addi r22, r22, 0xdcf
/* 8052061C  3B FF 00 02 */	addi r31, r31, 2
/* 80520620  41 80 FA F8 */	blt lbl_80520118
/* 80520624  3C 60 80 45 */	lis r3, mSystemFar__14mDoLib_clipper@ha
/* 80520628  C0 03 0C 70 */	lfs f0, mSystemFar__14mDoLib_clipper@l(r3)
/* 8052062C  D0 17 00 58 */	stfs f0, 0x58(r23)
/* 80520630  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha
/* 80520634  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l
/* 80520638  4B D5 31 54 */	b calcViewFrustum__11J3DUClipperFv
/* 8052063C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80520640  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80520644  80 63 5F 90 */	lwz r3, 0x5f90(r3)
/* 80520648  7F 64 DB 78 */	mr r4, r27
/* 8052064C  38 A0 00 00 */	li r5, 0
/* 80520650  4B E0 4E 3C */	b entryImm__13J3DDrawBufferFP9J3DPacketUs
/* 80520654  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80520658  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8052065C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80520660  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80520664  39 61 00 70 */	addi r11, r1, 0x70
/* 80520668  4B E4 1B 9C */	b _restgpr_20
/* 8052066C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80520670  7C 08 03 A6 */	mtlr r0
/* 80520674  38 21 00 90 */	addi r1, r1, 0x90
/* 80520678  4E 80 00 20 */	blr 
