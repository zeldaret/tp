lbl_80CB9194:
/* 80CB9194  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CB9198  7C 08 02 A6 */	mflr r0
/* 80CB919C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CB91A0  39 61 00 70 */	addi r11, r1, 0x70
/* 80CB91A4  4B 6A 90 35 */	bl _savegpr_28
/* 80CB91A8  7C 7E 1B 78 */	mr r30, r3
/* 80CB91AC  3C 60 80 CC */	lis r3, lit_3649@ha /* 0x80CB9A84@ha */
/* 80CB91B0  3B E3 9A 84 */	addi r31, r3, lit_3649@l /* 0x80CB9A84@l */
/* 80CB91B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB91B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB91BC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80CB91C0  3C 60 80 CC */	lis r3, l_HIO@ha /* 0x80CB9BF4@ha */
/* 80CB91C4  38 63 9B F4 */	addi r3, r3, l_HIO@l /* 0x80CB9BF4@l */
/* 80CB91C8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CB91CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CB91D0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CB91D4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CB91D8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80CB91DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB91E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB91E4  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80CB91E8  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80CB91EC  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80CB91F0  4B 35 30 19 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 80CB91F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB91F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB91FC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80CB9200  7C 85 23 78 */	mr r5, r4
/* 80CB9204  4B 68 DB 69 */	bl PSMTXMultVec
/* 80CB9208  38 61 00 28 */	addi r3, r1, 0x28
/* 80CB920C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80CB9210  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80CB9214  4B 5A D8 D1 */	bl __pl__4cXyzCFRC3Vec
/* 80CB9218  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CB921C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CB9220  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CB9224  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CB9228  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CB922C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CB9230  38 61 00 1C */	addi r3, r1, 0x1c
/* 80CB9234  38 81 00 40 */	addi r4, r1, 0x40
/* 80CB9238  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CB923C  4B 5A D8 F9 */	bl __mi__4cXyzCFRC3Vec
/* 80CB9240  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80CB9244  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80CB9248  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CB924C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CB9250  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80CB9254  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80CB9258  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80CB925C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CB9260  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CB9264  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CB9268  38 61 00 10 */	addi r3, r1, 0x10
/* 80CB926C  4B 68 DE CD */	bl PSVECSquareMag
/* 80CB9270  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CB9274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB9278  40 81 00 58 */	ble lbl_80CB92D0
/* 80CB927C  FC 00 08 34 */	frsqrte f0, f1
/* 80CB9280  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80CB9284  FC 44 00 32 */	fmul f2, f4, f0
/* 80CB9288  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80CB928C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CB9290  FC 01 00 32 */	fmul f0, f1, f0
/* 80CB9294  FC 03 00 28 */	fsub f0, f3, f0
/* 80CB9298  FC 02 00 32 */	fmul f0, f2, f0
/* 80CB929C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CB92A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CB92A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CB92A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CB92AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CB92B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CB92B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80CB92B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80CB92BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80CB92C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80CB92C4  FC 21 00 32 */	fmul f1, f1, f0
/* 80CB92C8  FC 20 08 18 */	frsp f1, f1
/* 80CB92CC  48 00 00 88 */	b lbl_80CB9354
lbl_80CB92D0:
/* 80CB92D0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80CB92D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB92D8  40 80 00 10 */	bge lbl_80CB92E8
/* 80CB92DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CB92E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CB92E4  48 00 00 70 */	b lbl_80CB9354
lbl_80CB92E8:
/* 80CB92E8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CB92EC  80 81 00 08 */	lwz r4, 8(r1)
/* 80CB92F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CB92F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CB92F8  7C 03 00 00 */	cmpw r3, r0
/* 80CB92FC  41 82 00 14 */	beq lbl_80CB9310
/* 80CB9300  40 80 00 40 */	bge lbl_80CB9340
/* 80CB9304  2C 03 00 00 */	cmpwi r3, 0
/* 80CB9308  41 82 00 20 */	beq lbl_80CB9328
/* 80CB930C  48 00 00 34 */	b lbl_80CB9340
lbl_80CB9310:
/* 80CB9310  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CB9314  41 82 00 0C */	beq lbl_80CB9320
/* 80CB9318  38 00 00 01 */	li r0, 1
/* 80CB931C  48 00 00 28 */	b lbl_80CB9344
lbl_80CB9320:
/* 80CB9320  38 00 00 02 */	li r0, 2
/* 80CB9324  48 00 00 20 */	b lbl_80CB9344
lbl_80CB9328:
/* 80CB9328  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CB932C  41 82 00 0C */	beq lbl_80CB9338
/* 80CB9330  38 00 00 05 */	li r0, 5
/* 80CB9334  48 00 00 10 */	b lbl_80CB9344
lbl_80CB9338:
/* 80CB9338  38 00 00 03 */	li r0, 3
/* 80CB933C  48 00 00 08 */	b lbl_80CB9344
lbl_80CB9340:
/* 80CB9340  38 00 00 04 */	li r0, 4
lbl_80CB9344:
/* 80CB9344  2C 00 00 01 */	cmpwi r0, 1
/* 80CB9348  40 82 00 0C */	bne lbl_80CB9354
/* 80CB934C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CB9350  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CB9354:
/* 80CB9354  3B A0 00 00 */	li r29, 0
/* 80CB9358  3C 60 80 CC */	lis r3, l_HIO@ha /* 0x80CB9BF4@ha */
/* 80CB935C  38 63 9B F4 */	addi r3, r3, l_HIO@l /* 0x80CB9BF4@l */
/* 80CB9360  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CB9364  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB9368  4C 40 13 82 */	cror 2, 0, 2
/* 80CB936C  40 82 00 08 */	bne lbl_80CB9374
/* 80CB9370  3B A0 00 01 */	li r29, 1
lbl_80CB9374:
/* 80CB9374  3B 80 00 00 */	li r28, 0
/* 80CB9378  3C 60 80 CC */	lis r3, l_HIO@ha /* 0x80CB9BF4@ha */
/* 80CB937C  38 63 9B F4 */	addi r3, r3, l_HIO@l /* 0x80CB9BF4@l */
/* 80CB9380  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CB9384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CB9388  4C 40 13 82 */	cror 2, 0, 2
/* 80CB938C  40 82 00 60 */	bne lbl_80CB93EC
/* 80CB9390  3B 80 00 01 */	li r28, 1
/* 80CB9394  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80CB9398  2C 00 00 01 */	cmpwi r0, 1
/* 80CB939C  41 82 00 50 */	beq lbl_80CB93EC
/* 80CB93A0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CB93A4  7C 03 07 74 */	extsb r3, r0
/* 80CB93A8  4B 37 3C C5 */	bl dComIfGp_getReverb__Fi
/* 80CB93AC  7C 67 1B 78 */	mr r7, r3
/* 80CB93B0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080170@ha */
/* 80CB93B4  38 03 01 70 */	addi r0, r3, 0x0170 /* 0x00080170@l */
/* 80CB93B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CB93BC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CB93C0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CB93C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB93C8  38 81 00 0C */	addi r4, r1, 0xc
/* 80CB93CC  38 A1 00 40 */	addi r5, r1, 0x40
/* 80CB93D0  38 C0 00 00 */	li r6, 0
/* 80CB93D4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80CB93D8  FC 40 08 90 */	fmr f2, f1
/* 80CB93DC  C0 7F 00 2C */	lfs f3, 0x2c(r31)
/* 80CB93E0  FC 80 18 90 */	fmr f4, f3
/* 80CB93E4  39 00 00 00 */	li r8, 0
/* 80CB93E8  4B 5F 25 9D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CB93EC:
/* 80CB93EC  9B 9E 05 B0 */	stb r28, 0x5b0(r30)
/* 80CB93F0  7F A3 EB 78 */	mr r3, r29
/* 80CB93F4  39 61 00 70 */	addi r11, r1, 0x70
/* 80CB93F8  4B 6A 8E 2D */	bl _restgpr_28
/* 80CB93FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CB9400  7C 08 03 A6 */	mtlr r0
/* 80CB9404  38 21 00 70 */	addi r1, r1, 0x70
/* 80CB9408  4E 80 00 20 */	blr 
