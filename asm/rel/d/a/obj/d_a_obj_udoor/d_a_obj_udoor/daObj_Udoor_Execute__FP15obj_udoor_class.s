lbl_80D2079C:
/* 80D2079C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D207A0  7C 08 02 A6 */	mflr r0
/* 80D207A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D207A8  39 61 00 30 */	addi r11, r1, 0x30
/* 80D207AC  4B 64 1A 2D */	bl _savegpr_28
/* 80D207B0  7C 7E 1B 78 */	mr r30, r3
/* 80D207B4  3C 60 80 D2 */	lis r3, lit_3707@ha /* 0x80D20DE0@ha */
/* 80D207B8  3B E3 0D E0 */	addi r31, r3, lit_3707@l /* 0x80D20DE0@l */
/* 80D207BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D207C0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D207C4  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 80D207C8  A8 7E 05 7C */	lha r3, 0x57c(r30)
/* 80D207CC  38 03 00 01 */	addi r0, r3, 1
/* 80D207D0  B0 1E 05 7C */	sth r0, 0x57c(r30)
/* 80D207D4  88 1E 05 67 */	lbz r0, 0x567(r30)
/* 80D207D8  7C 00 07 74 */	extsb r0, r0
/* 80D207DC  2C 00 00 01 */	cmpwi r0, 1
/* 80D207E0  41 82 00 38 */	beq lbl_80D20818
/* 80D207E4  40 80 00 10 */	bge lbl_80D207F4
/* 80D207E8  2C 00 00 00 */	cmpwi r0, 0
/* 80D207EC  40 80 00 14 */	bge lbl_80D20800
/* 80D207F0  48 00 00 8C */	b lbl_80D2087C
lbl_80D207F4:
/* 80D207F4  2C 00 00 03 */	cmpwi r0, 3
/* 80D207F8  40 80 00 84 */	bge lbl_80D2087C
/* 80D207FC  48 00 00 6C */	b lbl_80D20868
lbl_80D20800:
/* 80D20800  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80D20804  38 80 00 00 */	li r4, 0
/* 80D20808  38 A0 00 02 */	li r5, 2
/* 80D2080C  38 C0 10 00 */	li r6, 0x1000
/* 80D20810  4B 54 FD F9 */	bl cLib_addCalcAngleS2__FPssss
/* 80D20814  48 00 00 68 */	b lbl_80D2087C
lbl_80D20818:
/* 80D20818  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D2081C  D0 1E 05 80 */	stfs f0, 0x580(r30)
/* 80D20820  38 00 00 02 */	li r0, 2
/* 80D20824  98 1E 05 67 */	stb r0, 0x567(r30)
/* 80D20828  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800D7@ha */
/* 80D2082C  38 03 00 D7 */	addi r0, r3, 0x00D7 /* 0x000800D7@l */
/* 80D20830  90 01 00 08 */	stw r0, 8(r1)
/* 80D20834  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D20838  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2083C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D20840  38 81 00 08 */	addi r4, r1, 8
/* 80D20844  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80D20848  38 C0 00 00 */	li r6, 0
/* 80D2084C  38 E0 00 00 */	li r7, 0
/* 80D20850  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D20854  FC 40 08 90 */	fmr f2, f1
/* 80D20858  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80D2085C  FC 80 18 90 */	fmr f4, f3
/* 80D20860  39 00 00 00 */	li r8, 0
/* 80D20864  4B 58 B1 21 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D20868:
/* 80D20868  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80D2086C  38 80 9E 58 */	li r4, -25000
/* 80D20870  38 A0 00 01 */	li r5, 1
/* 80D20874  38 C0 10 00 */	li r6, 0x1000
/* 80D20878  4B 54 FD 91 */	bl cLib_addCalcAngleS2__FPssss
lbl_80D2087C:
/* 80D2087C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80D20880  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80D20884  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80D20888  41 82 00 30 */	beq lbl_80D208B8
/* 80D2088C  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80D20890  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80D20894  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D20898  40 80 00 20 */	bge lbl_80D208B8
/* 80D2089C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80D208A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D208A4  40 81 00 14 */	ble lbl_80D208B8
/* 80D208A8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80D208AC  D0 1E 05 80 */	stfs f0, 0x580(r30)
/* 80D208B0  38 00 00 00 */	li r0, 0
/* 80D208B4  B0 1E 05 7C */	sth r0, 0x57c(r30)
lbl_80D208B8:
/* 80D208B8  A8 1E 05 7C */	lha r0, 0x57c(r30)
/* 80D208BC  1C 00 23 28 */	mulli r0, r0, 0x2328
/* 80D208C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D208C4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D208C8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D208CC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80D208D0  C0 1E 05 80 */	lfs f0, 0x580(r30)
/* 80D208D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D208D8  FC 00 00 1E */	fctiwz f0, f0
/* 80D208DC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D208E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D208E4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80D208E8  38 7E 05 80 */	addi r3, r30, 0x580
/* 80D208EC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80D208F0  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80D208F4  4B 54 F1 8D */	bl cLib_addCalc0__FPfff
/* 80D208F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D208FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D20900  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80D20904  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D20908  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80D2090C  4B 62 5F DD */	bl PSMTXTrans
/* 80D20910  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80D20914  28 00 00 00 */	cmplwi r0, 0
/* 80D20918  40 82 00 2C */	bne lbl_80D20944
/* 80D2091C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D20920  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D20924  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80D20928  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80D2092C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80D20930  7C 00 2A 14 */	add r0, r0, r5
/* 80D20934  7C 04 02 14 */	add r0, r4, r0
/* 80D20938  7C 04 07 34 */	extsh r4, r0
/* 80D2093C  4B 2E BA F9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D20940  48 00 00 28 */	b lbl_80D20968
lbl_80D20944:
/* 80D20944  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D20948  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D2094C  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80D20950  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80D20954  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80D20958  7C 04 00 50 */	subf r0, r4, r0
/* 80D2095C  7C 05 00 50 */	subf r0, r5, r0
/* 80D20960  7C 04 07 34 */	extsh r4, r0
/* 80D20964  4B 2E BA D1 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80D20968:
/* 80D20968  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2096C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D20970  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80D20974  38 84 00 24 */	addi r4, r4, 0x24
/* 80D20978  4B 62 5B 39 */	bl PSMTXCopy
/* 80D2097C  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80D20980  28 00 00 00 */	cmplwi r0, 0
/* 80D20984  41 82 00 1C */	beq lbl_80D209A0
/* 80D20988  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D2098C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D20990  38 9E 05 88 */	addi r4, r30, 0x588
/* 80D20994  4B 62 5B 1D */	bl PSMTXCopy
/* 80D20998  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 80D2099C  4B 35 B0 25 */	bl Move__4dBgWFv
lbl_80D209A0:
/* 80D209A0  38 60 00 01 */	li r3, 1
/* 80D209A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D209A8  4B 64 18 7D */	bl _restgpr_28
/* 80D209AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D209B0  7C 08 03 A6 */	mtlr r0
/* 80D209B4  38 21 00 30 */	addi r1, r1, 0x30
/* 80D209B8  4E 80 00 20 */	blr 
