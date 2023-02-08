lbl_8061FFE0:
/* 8061FFE0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8061FFE4  7C 08 02 A6 */	mflr r0
/* 8061FFE8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8061FFEC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8061FFF0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8061FFF4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8061FFF8  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8061FFFC  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80620000  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80620004  39 61 00 60 */	addi r11, r1, 0x60
/* 80620008  4B D4 21 BD */	bl _savegpr_23
/* 8062000C  7C 77 1B 78 */	mr r23, r3
/* 80620010  7C 98 23 78 */	mr r24, r4
/* 80620014  3C A0 80 63 */	lis r5, lit_3920@ha /* 0x8062E634@ha */
/* 80620018  3B C5 E6 34 */	addi r30, r5, lit_3920@l /* 0x8062E634@l */
/* 8062001C  54 99 08 3C */	slwi r25, r4, 1
/* 80620020  7F B7 CA 14 */	add r29, r23, r25
/* 80620024  A0 1D 09 FC */	lhz r0, 0x9fc(r29)
/* 80620028  28 00 00 07 */	cmplwi r0, 7
/* 8062002C  41 81 06 B0 */	bgt lbl_806206DC
/* 80620030  3C A0 80 63 */	lis r5, lit_4659@ha /* 0x8062ECD0@ha */
/* 80620034  38 A5 EC D0 */	addi r5, r5, lit_4659@l /* 0x8062ECD0@l */
/* 80620038  54 00 10 3A */	slwi r0, r0, 2
/* 8062003C  7C 05 00 2E */	lwzx r0, r5, r0
/* 80620040  7C 09 03 A6 */	mtctr r0
/* 80620044  4E 80 04 20 */	bctr 
lbl_80620048:
/* 80620048  2C 18 00 0E */	cmpwi r24, 0xe
/* 8062004C  41 82 00 08 */	beq lbl_80620054
/* 80620050  48 00 2C 95 */	bl setArmorBreakEffect__8daB_TN_cFi
lbl_80620054:
/* 80620054  57 00 10 3A */	slwi r0, r24, 2
/* 80620058  7C 77 02 14 */	add r3, r23, r0
/* 8062005C  80 63 05 BC */	lwz r3, 0x5bc(r3)
/* 80620060  38 63 00 24 */	addi r3, r3, 0x24
/* 80620064  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80620068  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062006C  4B D2 64 45 */	bl PSMTXCopy
/* 80620070  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80620074  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80620078  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8062007C  1F F8 00 0C */	mulli r31, r24, 0xc
/* 80620080  3B 3F 07 5C */	addi r25, r31, 0x75c
/* 80620084  7F 37 CA 14 */	add r25, r23, r25
/* 80620088  D0 19 00 00 */	stfs f0, 0(r25)
/* 8062008C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80620090  D0 19 00 04 */	stfs f0, 4(r25)
/* 80620094  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80620098  D0 19 00 08 */	stfs f0, 8(r25)
/* 8062009C  7C 97 FA 14 */	add r4, r23, r31
/* 806200A0  C0 04 07 5C */	lfs f0, 0x75c(r4)
/* 806200A4  D0 04 08 1C */	stfs f0, 0x81c(r4)
/* 806200A8  C0 04 07 60 */	lfs f0, 0x760(r4)
/* 806200AC  D0 04 08 20 */	stfs f0, 0x820(r4)
/* 806200B0  C0 04 07 64 */	lfs f0, 0x764(r4)
/* 806200B4  D0 04 08 24 */	stfs f0, 0x824(r4)
/* 806200B8  1C 98 00 06 */	mulli r4, r24, 6
/* 806200BC  38 84 09 9C */	addi r4, r4, 0x99c
/* 806200C0  7C 97 22 14 */	add r4, r23, r4
/* 806200C4  4B 9E CB 3D */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 806200C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806200CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806200D0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806200D4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806200D8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806200DC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806200E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806200E4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806200E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806200EC  2C 18 00 0E */	cmpwi r24, 0xe
/* 806200F0  40 82 00 14 */	bne lbl_80620104
/* 806200F4  A8 77 04 E6 */	lha r3, 0x4e6(r23)
/* 806200F8  38 03 40 00 */	addi r0, r3, 0x4000
/* 806200FC  7C 18 07 34 */	extsh r24, r0
/* 80620100  48 00 00 D0 */	b lbl_806201D0
lbl_80620104:
/* 80620104  2C 18 00 02 */	cmpwi r24, 2
/* 80620108  40 82 00 14 */	bne lbl_8062011C
/* 8062010C  A8 77 04 E6 */	lha r3, 0x4e6(r23)
/* 80620110  38 03 C0 00 */	addi r0, r3, -16384
/* 80620114  7C 18 07 34 */	extsh r24, r0
/* 80620118  48 00 00 B8 */	b lbl_806201D0
lbl_8062011C:
/* 8062011C  2C 18 00 03 */	cmpwi r24, 3
/* 80620120  40 82 00 14 */	bne lbl_80620134
/* 80620124  A8 77 04 E6 */	lha r3, 0x4e6(r23)
/* 80620128  38 03 20 00 */	addi r0, r3, 0x2000
/* 8062012C  7C 18 07 34 */	extsh r24, r0
/* 80620130  48 00 00 A0 */	b lbl_806201D0
lbl_80620134:
/* 80620134  7F 23 CB 78 */	mr r3, r25
/* 80620138  38 81 00 14 */	addi r4, r1, 0x14
/* 8062013C  4B C5 0A C9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80620140  7C 78 1B 78 */	mr r24, r3
/* 80620144  4B C4 77 29 */	bl cM_rnd__Fv
/* 80620148  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 8062014C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80620150  40 80 00 44 */	bge lbl_80620194
/* 80620154  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80620158  4B C4 78 35 */	bl cM_rndFX__Ff
/* 8062015C  7F 03 07 34 */	extsh r3, r24
/* 80620160  38 03 20 00 */	addi r0, r3, 0x2000
/* 80620164  C8 5E 00 80 */	lfd f2, 0x80(r30)
/* 80620168  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8062016C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80620170  3C 00 43 30 */	lis r0, 0x4330
/* 80620174  90 01 00 20 */	stw r0, 0x20(r1)
/* 80620178  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8062017C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80620180  EC 00 08 2A */	fadds f0, f0, f1
/* 80620184  FC 00 00 1E */	fctiwz f0, f0
/* 80620188  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8062018C  83 01 00 2C */	lwz r24, 0x2c(r1)
/* 80620190  48 00 00 40 */	b lbl_806201D0
lbl_80620194:
/* 80620194  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80620198  4B C4 77 F5 */	bl cM_rndFX__Ff
/* 8062019C  7F 03 07 34 */	extsh r3, r24
/* 806201A0  38 03 E0 00 */	addi r0, r3, -8192
/* 806201A4  C8 5E 00 80 */	lfd f2, 0x80(r30)
/* 806201A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806201AC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806201B0  3C 00 43 30 */	lis r0, 0x4330
/* 806201B4  90 01 00 28 */	stw r0, 0x28(r1)
/* 806201B8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 806201BC  EC 00 10 28 */	fsubs f0, f0, f2
/* 806201C0  EC 00 08 2A */	fadds f0, f0, f1
/* 806201C4  FC 00 00 1E */	fctiwz f0, f0
/* 806201C8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806201CC  83 01 00 24 */	lwz r24, 0x24(r1)
lbl_806201D0:
/* 806201D0  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 806201D4  4B C4 77 81 */	bl cM_rndF__Ff
/* 806201D8  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806201DC  EC 20 08 2A */	fadds f1, f0, f1
/* 806201E0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806201E4  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806201E8  57 18 04 38 */	rlwinm r24, r24, 0, 0x10, 0x1c
/* 806201EC  7C 60 C2 14 */	add r3, r0, r24
/* 806201F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 806201F4  EF C1 00 32 */	fmuls f30, f1, f0
/* 806201F8  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 806201FC  4B C4 77 59 */	bl cM_rndF__Ff
/* 80620200  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80620204  EF E0 08 2A */	fadds f31, f0, f1
/* 80620208  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8062020C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80620210  7F A3 C4 2E */	lfsx f29, r3, r24
/* 80620214  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80620218  4B C4 77 3D */	bl cM_rndF__Ff
/* 8062021C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80620220  EC 00 08 2A */	fadds f0, f0, f1
/* 80620224  EC 00 07 72 */	fmuls f0, f0, f29
/* 80620228  7C 77 FA 14 */	add r3, r23, r31
/* 8062022C  D0 03 08 DC */	stfs f0, 0x8dc(r3)
/* 80620230  D3 E3 08 E0 */	stfs f31, 0x8e0(r3)
/* 80620234  D3 C3 08 E4 */	stfs f30, 0x8e4(r3)
/* 80620238  38 00 00 03 */	li r0, 3
/* 8062023C  B0 1D 09 FC */	sth r0, 0x9fc(r29)
/* 80620240  48 00 04 9C */	b lbl_806206DC
lbl_80620244:
/* 80620244  1F F8 00 0C */	mulli r31, r24, 0xc
/* 80620248  7F 97 FA 14 */	add r28, r23, r31
/* 8062024C  38 7C 08 E0 */	addi r3, r28, 0x8e0
/* 80620250  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80620254  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 80620258  4B C5 04 E9 */	bl cLib_chaseF__FPfff
/* 8062025C  2C 18 00 0E */	cmpwi r24, 0xe
/* 80620260  40 82 00 78 */	bne lbl_806202D8
/* 80620264  C0 3C 08 E0 */	lfs f1, 0x8e0(r28)
/* 80620268  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062026C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80620270  40 81 00 28 */	ble lbl_80620298
/* 80620274  1C 18 00 06 */	mulli r0, r24, 6
/* 80620278  7C 97 02 14 */	add r4, r23, r0
/* 8062027C  A8 64 09 9E */	lha r3, 0x99e(r4)
/* 80620280  38 03 08 00 */	addi r0, r3, 0x800
/* 80620284  B0 04 09 9E */	sth r0, 0x99e(r4)
/* 80620288  A8 64 09 A0 */	lha r3, 0x9a0(r4)
/* 8062028C  38 03 08 00 */	addi r0, r3, 0x800
/* 80620290  B0 04 09 A0 */	sth r0, 0x9a0(r4)
/* 80620294  48 00 00 B4 */	b lbl_80620348
lbl_80620298:
/* 80620298  1F 38 00 06 */	mulli r25, r24, 6
/* 8062029C  7F 57 CA 14 */	add r26, r23, r25
/* 806202A0  38 7A 09 9C */	addi r3, r26, 0x99c
/* 806202A4  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 806202A8  38 84 F2 9C */	addi r4, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 806202AC  7C 84 CA AE */	lhax r4, r4, r25
/* 806202B0  38 A0 08 00 */	li r5, 0x800
/* 806202B4  4B C5 08 DD */	bl cLib_chaseAngleS__FPsss
/* 806202B8  38 7A 09 A0 */	addi r3, r26, 0x9a0
/* 806202BC  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 806202C0  38 04 F2 9C */	addi r0, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 806202C4  7C 80 CA 14 */	add r4, r0, r25
/* 806202C8  A8 84 00 04 */	lha r4, 4(r4)
/* 806202CC  38 A0 08 00 */	li r5, 0x800
/* 806202D0  4B C5 08 C1 */	bl cLib_chaseAngleS__FPsss
/* 806202D4  48 00 00 74 */	b lbl_80620348
lbl_806202D8:
/* 806202D8  C0 3C 08 E0 */	lfs f1, 0x8e0(r28)
/* 806202DC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806202E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806202E4  40 81 00 28 */	ble lbl_8062030C
/* 806202E8  1C 18 00 06 */	mulli r0, r24, 6
/* 806202EC  7C 97 02 14 */	add r4, r23, r0
/* 806202F0  A8 64 09 9E */	lha r3, 0x99e(r4)
/* 806202F4  38 03 10 00 */	addi r0, r3, 0x1000
/* 806202F8  B0 04 09 9E */	sth r0, 0x99e(r4)
/* 806202FC  A8 64 09 A0 */	lha r3, 0x9a0(r4)
/* 80620300  38 03 10 00 */	addi r0, r3, 0x1000
/* 80620304  B0 04 09 A0 */	sth r0, 0x9a0(r4)
/* 80620308  48 00 00 40 */	b lbl_80620348
lbl_8062030C:
/* 8062030C  1F 38 00 06 */	mulli r25, r24, 6
/* 80620310  7F 57 CA 14 */	add r26, r23, r25
/* 80620314  38 7A 09 9C */	addi r3, r26, 0x99c
/* 80620318  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8062031C  38 84 F2 9C */	addi r4, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 80620320  7C 84 CA AE */	lhax r4, r4, r25
/* 80620324  38 A0 04 00 */	li r5, 0x400
/* 80620328  4B C5 08 69 */	bl cLib_chaseAngleS__FPsss
/* 8062032C  38 7A 09 A0 */	addi r3, r26, 0x9a0
/* 80620330  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 80620334  38 04 F2 9C */	addi r0, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 80620338  7C 80 CA 14 */	add r4, r0, r25
/* 8062033C  A8 84 00 04 */	lha r4, 4(r4)
/* 80620340  38 A0 04 00 */	li r5, 0x400
/* 80620344  4B C5 08 4D */	bl cLib_chaseAngleS__FPsss
lbl_80620348:
/* 80620348  88 17 0A A5 */	lbz r0, 0xaa5(r23)
/* 8062034C  28 00 00 01 */	cmplwi r0, 1
/* 80620350  40 82 00 0C */	bne lbl_8062035C
/* 80620354  2C 18 00 05 */	cmpwi r24, 5
/* 80620358  41 82 03 84 */	beq lbl_806206DC
lbl_8062035C:
/* 8062035C  1C 18 01 D8 */	mulli r0, r24, 0x1d8
/* 80620360  7C 77 02 14 */	add r3, r23, r0
/* 80620364  80 03 10 FC */	lwz r0, 0x10fc(r3)
/* 80620368  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8062036C  41 82 03 70 */	beq lbl_806206DC
/* 80620370  2C 18 00 0E */	cmpwi r24, 0xe
/* 80620374  40 82 00 48 */	bne lbl_806203BC
/* 80620378  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703B5@ha */
/* 8062037C  38 03 03 B5 */	addi r0, r3, 0x03B5 /* 0x000703B5@l */
/* 80620380  90 01 00 10 */	stw r0, 0x10(r1)
/* 80620384  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80620388  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8062038C  80 63 00 00 */	lwz r3, 0(r3)
/* 80620390  38 81 00 10 */	addi r4, r1, 0x10
/* 80620394  38 BC 07 5C */	addi r5, r28, 0x75c
/* 80620398  38 C0 00 00 */	li r6, 0
/* 8062039C  38 E0 00 00 */	li r7, 0
/* 806203A0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806203A4  FC 40 08 90 */	fmr f2, f1
/* 806203A8  C0 7E 00 68 */	lfs f3, 0x68(r30)
/* 806203AC  FC 80 18 90 */	fmr f4, f3
/* 806203B0  39 00 00 00 */	li r8, 0
/* 806203B4  4B C8 B5 D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806203B8  48 00 00 44 */	b lbl_806203FC
lbl_806203BC:
/* 806203BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703B1@ha */
/* 806203C0  38 03 03 B1 */	addi r0, r3, 0x03B1 /* 0x000703B1@l */
/* 806203C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806203C8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806203CC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806203D0  80 63 00 00 */	lwz r3, 0(r3)
/* 806203D4  38 81 00 0C */	addi r4, r1, 0xc
/* 806203D8  38 BC 07 5C */	addi r5, r28, 0x75c
/* 806203DC  38 C0 00 00 */	li r6, 0
/* 806203E0  38 E0 00 00 */	li r7, 0
/* 806203E4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806203E8  FC 40 08 90 */	fmr f2, f1
/* 806203EC  C0 7E 00 68 */	lfs f3, 0x68(r30)
/* 806203F0  FC 80 18 90 */	fmr f4, f3
/* 806203F4  39 00 00 00 */	li r8, 0
/* 806203F8  4B C8 B5 8D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806203FC:
/* 806203FC  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80620400  4B C4 75 8D */	bl cM_rndFX__Ff
/* 80620404  FC 00 08 1E */	fctiwz f0, f1
/* 80620408  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8062040C  83 21 00 2C */	lwz r25, 0x2c(r1)
/* 80620410  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80620414  4B C4 75 41 */	bl cM_rndF__Ff
/* 80620418  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 8062041C  EC 22 08 2A */	fadds f1, f2, f1
/* 80620420  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80620424  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80620428  57 39 04 38 */	rlwinm r25, r25, 0, 0x10, 0x1c
/* 8062042C  7C 60 CA 14 */	add r3, r0, r25
/* 80620430  C0 03 00 04 */	lfs f0, 4(r3)
/* 80620434  EF E1 00 32 */	fmuls f31, f1, f0
/* 80620438  FC 20 10 90 */	fmr f1, f2
/* 8062043C  4B C4 75 19 */	bl cM_rndF__Ff
/* 80620440  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80620444  EF C0 08 2A */	fadds f30, f0, f1
/* 80620448  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8062044C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80620450  7F A3 CC 2E */	lfsx f29, r3, r25
/* 80620454  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80620458  4B C4 74 FD */	bl cM_rndF__Ff
/* 8062045C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80620460  EC 00 08 2A */	fadds f0, f0, f1
/* 80620464  EC 00 07 72 */	fmuls f0, f0, f29
/* 80620468  7C 77 FA 14 */	add r3, r23, r31
/* 8062046C  D0 03 08 DC */	stfs f0, 0x8dc(r3)
/* 80620470  D3 C3 08 E0 */	stfs f30, 0x8e0(r3)
/* 80620474  D3 E3 08 E4 */	stfs f31, 0x8e4(r3)
/* 80620478  38 00 00 04 */	li r0, 4
/* 8062047C  B0 1D 09 FC */	sth r0, 0x9fc(r29)
/* 80620480  7E E3 BB 78 */	mr r3, r23
/* 80620484  7F 04 C3 78 */	mr r4, r24
/* 80620488  38 A0 00 00 */	li r5, 0
/* 8062048C  4B FF EF 45 */	bl setPartLandEffect__8daB_TN_cFii
/* 80620490  48 00 02 4C */	b lbl_806206DC
lbl_80620494:
/* 80620494  1C 18 00 0C */	mulli r0, r24, 0xc
/* 80620498  7F 77 02 14 */	add r27, r23, r0
/* 8062049C  38 7B 08 E0 */	addi r3, r27, 0x8e0
/* 806204A0  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806204A4  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 806204A8  4B C5 02 99 */	bl cLib_chaseF__FPfff
/* 806204AC  1F 98 00 06 */	mulli r28, r24, 6
/* 806204B0  7F 57 E2 14 */	add r26, r23, r28
/* 806204B4  38 7A 09 9C */	addi r3, r26, 0x99c
/* 806204B8  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 806204BC  3B E4 F2 9C */	addi r31, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 806204C0  7C 9F E2 AE */	lhax r4, r31, r28
/* 806204C4  38 A0 08 00 */	li r5, 0x800
/* 806204C8  4B C5 06 C9 */	bl cLib_chaseAngleS__FPsss
/* 806204CC  A8 7A 09 9E */	lha r3, 0x99e(r26)
/* 806204D0  38 03 04 00 */	addi r0, r3, 0x400
/* 806204D4  B0 1A 09 9E */	sth r0, 0x99e(r26)
/* 806204D8  38 7A 09 A0 */	addi r3, r26, 0x9a0
/* 806204DC  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 806204E0  38 04 F2 9C */	addi r0, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 806204E4  7F 40 E2 14 */	add r26, r0, r28
/* 806204E8  AC 9A 00 04 */	lhau r4, 4(r26)
/* 806204EC  38 A0 08 00 */	li r5, 0x800
/* 806204F0  4B C5 06 A1 */	bl cLib_chaseAngleS__FPsss
/* 806204F4  1C 18 01 D8 */	mulli r0, r24, 0x1d8
/* 806204F8  7C 77 02 14 */	add r3, r23, r0
/* 806204FC  80 03 10 FC */	lwz r0, 0x10fc(r3)
/* 80620500  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80620504  41 82 01 D8 */	beq lbl_806206DC
/* 80620508  88 17 0A A5 */	lbz r0, 0xaa5(r23)
/* 8062050C  28 00 00 00 */	cmplwi r0, 0
/* 80620510  40 82 00 88 */	bne lbl_80620598
/* 80620514  2C 18 00 0E */	cmpwi r24, 0xe
/* 80620518  40 82 00 44 */	bne lbl_8062055C
/* 8062051C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703B6@ha */
/* 80620520  38 03 03 B6 */	addi r0, r3, 0x03B6 /* 0x000703B6@l */
/* 80620524  90 01 00 08 */	stw r0, 8(r1)
/* 80620528  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8062052C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80620530  80 63 00 00 */	lwz r3, 0(r3)
/* 80620534  38 81 00 08 */	addi r4, r1, 8
/* 80620538  38 BB 07 5C */	addi r5, r27, 0x75c
/* 8062053C  38 C0 00 00 */	li r6, 0
/* 80620540  38 E0 00 00 */	li r7, 0
/* 80620544  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80620548  FC 40 08 90 */	fmr f2, f1
/* 8062054C  C0 7E 00 68 */	lfs f3, 0x68(r30)
/* 80620550  FC 80 18 90 */	fmr f4, f3
/* 80620554  39 00 00 00 */	li r8, 0
/* 80620558  4B C8 B4 2D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8062055C:
/* 8062055C  38 00 00 05 */	li r0, 5
/* 80620560  B0 1D 09 FC */	sth r0, 0x9fc(r29)
/* 80620564  7C 1F E2 AE */	lhax r0, r31, r28
/* 80620568  7C 77 E2 14 */	add r3, r23, r28
/* 8062056C  B0 03 09 9C */	sth r0, 0x99c(r3)
/* 80620570  A8 1A 00 00 */	lha r0, 0(r26)
/* 80620574  B0 03 09 A0 */	sth r0, 0x9a0(r3)
/* 80620578  38 00 04 00 */	li r0, 0x400
/* 8062057C  7C 77 CA 14 */	add r3, r23, r25
/* 80620580  B0 03 0A 3C */	sth r0, 0xa3c(r3)
/* 80620584  7E E3 BB 78 */	mr r3, r23
/* 80620588  7F 04 C3 78 */	mr r4, r24
/* 8062058C  38 A0 00 01 */	li r5, 1
/* 80620590  4B FF EE 41 */	bl setPartLandEffect__8daB_TN_cFii
/* 80620594  48 00 01 48 */	b lbl_806206DC
lbl_80620598:
/* 80620598  7E E3 BB 78 */	mr r3, r23
/* 8062059C  38 9B 07 5C */	addi r4, r27, 0x75c
/* 806205A0  38 A0 00 03 */	li r5, 3
/* 806205A4  38 C0 00 00 */	li r6, 0
/* 806205A8  38 E0 00 FF */	li r7, 0xff
/* 806205AC  4B 9F C5 2D */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806205B0  38 60 00 07 */	li r3, 7
/* 806205B4  B0 7D 09 FC */	sth r3, 0x9fc(r29)
/* 806205B8  88 17 0A A5 */	lbz r0, 0xaa5(r23)
/* 806205BC  28 00 00 01 */	cmplwi r0, 1
/* 806205C0  40 82 01 1C */	bne lbl_806206DC
/* 806205C4  2C 18 00 04 */	cmpwi r24, 4
/* 806205C8  40 82 01 14 */	bne lbl_806206DC
/* 806205CC  B0 77 0A 06 */	sth r3, 0xa06(r23)
/* 806205D0  48 00 01 0C */	b lbl_806206DC
lbl_806205D4:
/* 806205D4  1C 18 00 0C */	mulli r0, r24, 0xc
/* 806205D8  7F 57 02 14 */	add r26, r23, r0
/* 806205DC  38 7A 08 E0 */	addi r3, r26, 0x8e0
/* 806205E0  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806205E4  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 806205E8  4B C5 01 59 */	bl cLib_chaseF__FPfff
/* 806205EC  38 7A 08 DC */	addi r3, r26, 0x8dc
/* 806205F0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806205F4  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 806205F8  4B C5 01 49 */	bl cLib_chaseF__FPfff
/* 806205FC  38 7A 08 E4 */	addi r3, r26, 0x8e4
/* 80620600  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80620604  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80620608  4B C5 01 39 */	bl cLib_chaseF__FPfff
/* 8062060C  38 79 0A 3C */	addi r3, r25, 0xa3c
/* 80620610  7C 77 1A 14 */	add r3, r23, r3
/* 80620614  38 80 00 00 */	li r4, 0
/* 80620618  38 A0 00 40 */	li r5, 0x40
/* 8062061C  4B C5 05 75 */	bl cLib_chaseAngleS__FPsss
/* 80620620  1C 18 00 06 */	mulli r0, r24, 6
/* 80620624  7C B7 02 14 */	add r5, r23, r0
/* 80620628  A8 85 09 9E */	lha r4, 0x99e(r5)
/* 8062062C  A8 1D 0A 3C */	lha r0, 0xa3c(r29)
/* 80620630  7C 04 02 14 */	add r0, r4, r0
/* 80620634  B0 05 09 9E */	sth r0, 0x99e(r5)
/* 80620638  48 00 00 A4 */	b lbl_806206DC
lbl_8062063C:
/* 8062063C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80620640  4B C4 73 4D */	bl cM_rndFX__Ff
/* 80620644  A8 17 04 E6 */	lha r0, 0x4e6(r23)
/* 80620648  C8 5E 00 80 */	lfd f2, 0x80(r30)
/* 8062064C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80620650  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80620654  3C 00 43 30 */	lis r0, 0x4330
/* 80620658  90 01 00 28 */	stw r0, 0x28(r1)
/* 8062065C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80620660  EC 00 10 28 */	fsubs f0, f0, f2
/* 80620664  EC 00 08 2A */	fadds f0, f0, f1
/* 80620668  FC 00 00 1E */	fctiwz f0, f0
/* 8062066C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80620670  83 41 00 24 */	lwz r26, 0x24(r1)
/* 80620674  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80620678  4B C4 72 DD */	bl cM_rndF__Ff
/* 8062067C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80620680  EC 20 08 2A */	fadds f1, f0, f1
/* 80620684  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80620688  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8062068C  57 40 04 38 */	rlwinm r0, r26, 0, 0x10, 0x1c
/* 80620690  7C 64 02 14 */	add r3, r4, r0
/* 80620694  C0 03 00 04 */	lfs f0, 4(r3)
/* 80620698  EF C1 00 32 */	fmuls f30, f1, f0
/* 8062069C  7F A4 04 2E */	lfsx f29, r4, r0
/* 806206A0  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 806206A4  4B C4 72 B1 */	bl cM_rndF__Ff
/* 806206A8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 806206AC  EC 00 08 2A */	fadds f0, f0, f1
/* 806206B0  EC 00 07 72 */	fmuls f0, f0, f29
/* 806206B4  1C 18 00 0C */	mulli r0, r24, 0xc
/* 806206B8  7C 77 02 14 */	add r3, r23, r0
/* 806206BC  D0 03 08 DC */	stfs f0, 0x8dc(r3)
/* 806206C0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806206C4  D0 03 08 E0 */	stfs f0, 0x8e0(r3)
/* 806206C8  D3 C3 08 E4 */	stfs f30, 0x8e4(r3)
/* 806206CC  38 00 08 00 */	li r0, 0x800
/* 806206D0  B0 1D 0A 3C */	sth r0, 0xa3c(r29)
/* 806206D4  38 00 00 05 */	li r0, 5
/* 806206D8  B0 1D 09 FC */	sth r0, 0x9fc(r29)
lbl_806206DC:
/* 806206DC  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 806206E0  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 806206E4  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 806206E8  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 806206EC  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 806206F0  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 806206F4  39 61 00 60 */	addi r11, r1, 0x60
/* 806206F8  4B D4 1B 19 */	bl _restgpr_23
/* 806206FC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80620700  7C 08 03 A6 */	mtlr r0
/* 80620704  38 21 00 90 */	addi r1, r1, 0x90
/* 80620708  4E 80 00 20 */	blr 
