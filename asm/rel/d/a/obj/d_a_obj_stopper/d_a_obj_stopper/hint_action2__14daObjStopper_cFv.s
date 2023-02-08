lbl_80CEE5D0:
/* 80CEE5D0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CEE5D4  7C 08 02 A6 */	mflr r0
/* 80CEE5D8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CEE5DC  39 61 00 60 */	addi r11, r1, 0x60
/* 80CEE5E0  4B 67 3B FD */	bl _savegpr_29
/* 80CEE5E4  7C 7E 1B 78 */	mr r30, r3
/* 80CEE5E8  3C 60 80 CF */	lis r3, lit_3635@ha /* 0x80CEEFA0@ha */
/* 80CEE5EC  3B E3 EF A0 */	addi r31, r3, lit_3635@l /* 0x80CEEFA0@l */
/* 80CEE5F0  88 1E 09 5C */	lbz r0, 0x95c(r30)
/* 80CEE5F4  2C 00 00 02 */	cmpwi r0, 2
/* 80CEE5F8  41 82 02 B8 */	beq lbl_80CEE8B0
/* 80CEE5FC  40 80 00 14 */	bge lbl_80CEE610
/* 80CEE600  2C 00 00 00 */	cmpwi r0, 0
/* 80CEE604  41 82 00 1C */	beq lbl_80CEE620
/* 80CEE608  40 80 01 90 */	bge lbl_80CEE798
/* 80CEE60C  48 00 04 04 */	b lbl_80CEEA10
lbl_80CEE610:
/* 80CEE610  2C 00 00 04 */	cmpwi r0, 4
/* 80CEE614  41 82 03 FC */	beq lbl_80CEEA10
/* 80CEE618  40 80 03 F8 */	bge lbl_80CEEA10
/* 80CEE61C  48 00 03 B8 */	b lbl_80CEE9D4
lbl_80CEE620:
/* 80CEE620  88 7E 09 5D */	lbz r3, 0x95d(r30)
/* 80CEE624  38 03 FF FF */	addi r0, r3, -1
/* 80CEE628  98 1E 09 5D */	stb r0, 0x95d(r30)
/* 80CEE62C  88 1E 09 5D */	lbz r0, 0x95d(r30)
/* 80CEE630  28 00 00 0A */	cmplwi r0, 0xa
/* 80CEE634  41 81 01 00 */	bgt lbl_80CEE734
/* 80CEE638  54 00 74 22 */	rlwinm r0, r0, 0xe, 0x10, 0x11
/* 80CEE63C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CEE640  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CEE644  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE648  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80CEE64C  C0 1E 09 58 */	lfs f0, 0x958(r30)
/* 80CEE650  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE654  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEE658  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CEE65C  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEE660  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEE664  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEE668  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE66C  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEE670  C8 3F 00 40 */	lfd f1, 0x40(r31)
/* 80CEE674  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEE678  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CEE67C  3C 60 43 30 */	lis r3, 0x4330
/* 80CEE680  90 61 00 28 */	stw r3, 0x28(r1)
/* 80CEE684  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80CEE688  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEE68C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE690  FC 00 00 1E */	fctiwz f0, f0
/* 80CEE694  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80CEE698  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CEE69C  B0 1E 09 F0 */	sth r0, 0x9f0(r30)
/* 80CEE6A0  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEE6A4  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEE6A8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEE6AC  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE6B0  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEE6B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEE6B8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80CEE6BC  90 61 00 38 */	stw r3, 0x38(r1)
/* 80CEE6C0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80CEE6C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEE6C8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE6CC  FC 00 00 1E */	fctiwz f0, f0
/* 80CEE6D0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CEE6D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CEE6D8  B0 1E 09 F4 */	sth r0, 0x9f4(r30)
/* 80CEE6DC  88 1E 09 5D */	lbz r0, 0x95d(r30)
/* 80CEE6E0  28 00 00 0A */	cmplwi r0, 0xa
/* 80CEE6E4  40 82 00 50 */	bne lbl_80CEE734
/* 80CEE6E8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CEE6EC  7C 03 07 74 */	extsb r3, r0
/* 80CEE6F0  4B 33 E9 7D */	bl dComIfGp_getReverb__Fi
/* 80CEE6F4  7C 67 1B 78 */	mr r7, r3
/* 80CEE6F8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800DD@ha */
/* 80CEE6FC  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000800DD@l */
/* 80CEE700  90 01 00 08 */	stw r0, 8(r1)
/* 80CEE704  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEE708  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEE70C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEE710  38 81 00 08 */	addi r4, r1, 8
/* 80CEE714  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CEE718  38 C0 00 00 */	li r6, 0
/* 80CEE71C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80CEE720  FC 40 08 90 */	fmr f2, f1
/* 80CEE724  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80CEE728  FC 80 18 90 */	fmr f4, f3
/* 80CEE72C  39 00 00 00 */	li r8, 0
/* 80CEE730  4B 5B D2 55 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEE734:
/* 80CEE734  88 1E 09 5D */	lbz r0, 0x95d(r30)
/* 80CEE738  28 00 00 14 */	cmplwi r0, 0x14
/* 80CEE73C  40 82 00 34 */	bne lbl_80CEE770
/* 80CEE740  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CEE744  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CEE748  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CEE74C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CEE750  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CEE754  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEE758  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEE75C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CEE760  38 80 00 02 */	li r4, 2
/* 80CEE764  38 A0 00 01 */	li r5, 1
/* 80CEE768  38 C1 00 18 */	addi r6, r1, 0x18
/* 80CEE76C  4B 38 13 A5 */	bl StartQuake__12dVibration_cFii4cXyz
lbl_80CEE770:
/* 80CEE770  88 1E 09 5D */	lbz r0, 0x95d(r30)
/* 80CEE774  28 00 00 00 */	cmplwi r0, 0
/* 80CEE778  40 82 02 98 */	bne lbl_80CEEA10
/* 80CEE77C  C0 1E 09 6C */	lfs f0, 0x96c(r30)
/* 80CEE780  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEE784  38 00 00 01 */	li r0, 1
/* 80CEE788  98 1E 09 5C */	stb r0, 0x95c(r30)
/* 80CEE78C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80CEE790  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 80CEE794  48 00 02 7C */	b lbl_80CEEA10
lbl_80CEE798:
/* 80CEE798  88 7E 09 5D */	lbz r3, 0x95d(r30)
/* 80CEE79C  38 03 00 01 */	addi r0, r3, 1
/* 80CEE7A0  98 1E 09 5D */	stb r0, 0x95d(r30)
/* 80CEE7A4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CEE7A8  C0 1E 09 64 */	lfs f0, 0x964(r30)
/* 80CEE7AC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEE7B0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEE7B4  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80CEE7B8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80CEE7BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEE7C0  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CEE7C4  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEE7C8  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEE7CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEE7D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CEE7D4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CEE7D8  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE7DC  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEE7E0  C8 3F 00 40 */	lfd f1, 0x40(r31)
/* 80CEE7E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEE7E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CEE7EC  3C 60 43 30 */	lis r3, 0x4330
/* 80CEE7F0  90 61 00 40 */	stw r3, 0x40(r1)
/* 80CEE7F4  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80CEE7F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEE7FC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE800  FC 00 00 1E */	fctiwz f0, f0
/* 80CEE804  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CEE808  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80CEE80C  B0 1E 09 F0 */	sth r0, 0x9f0(r30)
/* 80CEE810  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEE814  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEE818  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEE81C  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE820  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEE824  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEE828  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CEE82C  90 61 00 30 */	stw r3, 0x30(r1)
/* 80CEE830  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80CEE834  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEE838  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE83C  FC 00 00 1E */	fctiwz f0, f0
/* 80CEE840  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80CEE844  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80CEE848  B0 1E 09 F4 */	sth r0, 0x9f4(r30)
/* 80CEE84C  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80CEE850  C0 1E 09 78 */	lfs f0, 0x978(r30)
/* 80CEE854  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEE858  40 81 01 B8 */	ble lbl_80CEEA10
/* 80CEE85C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CEE860  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CEE864  3B A3 5B D4 */	addi r29, r3, 0x5bd4
/* 80CEE868  7F A3 EB 78 */	mr r3, r29
/* 80CEE86C  38 80 00 1F */	li r4, 0x1f
/* 80CEE870  4B 38 15 25 */	bl StopQuake__12dVibration_cFi
/* 80CEE874  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CEE878  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CEE87C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CEE880  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CEE884  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CEE888  7F A3 EB 78 */	mr r3, r29
/* 80CEE88C  38 80 00 02 */	li r4, 2
/* 80CEE890  38 A0 00 01 */	li r5, 1
/* 80CEE894  38 C1 00 0C */	addi r6, r1, 0xc
/* 80CEE898  4B 38 11 8D */	bl StartShock__12dVibration_cFii4cXyz
/* 80CEE89C  C0 1E 09 78 */	lfs f0, 0x978(r30)
/* 80CEE8A0  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CEE8A4  38 00 00 02 */	li r0, 2
/* 80CEE8A8  98 1E 09 5C */	stb r0, 0x95c(r30)
/* 80CEE8AC  48 00 01 64 */	b lbl_80CEEA10
lbl_80CEE8B0:
/* 80CEE8B0  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEE8B4  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEE8B8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEE8BC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CEE8C0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CEE8C4  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE8C8  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEE8CC  C8 3F 00 40 */	lfd f1, 0x40(r31)
/* 80CEE8D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEE8D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CEE8D8  3C 60 43 30 */	lis r3, 0x4330
/* 80CEE8DC  90 61 00 40 */	stw r3, 0x40(r1)
/* 80CEE8E0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80CEE8E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEE8E8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE8EC  FC 00 00 1E */	fctiwz f0, f0
/* 80CEE8F0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80CEE8F4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80CEE8F8  B0 1E 09 F0 */	sth r0, 0x9f0(r30)
/* 80CEE8FC  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEE900  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEE904  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEE908  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEE90C  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEE910  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEE914  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CEE918  90 61 00 30 */	stw r3, 0x30(r1)
/* 80CEE91C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80CEE920  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEE924  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEE928  FC 00 00 1E */	fctiwz f0, f0
/* 80CEE92C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80CEE930  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80CEE934  B0 1E 09 F4 */	sth r0, 0x9f4(r30)
/* 80CEE938  38 7E 09 F6 */	addi r3, r30, 0x9f6
/* 80CEE93C  38 80 00 00 */	li r4, 0
/* 80CEE940  38 A0 00 14 */	li r5, 0x14
/* 80CEE944  38 C0 00 0A */	li r6, 0xa
/* 80CEE948  38 E0 00 05 */	li r7, 5
/* 80CEE94C  4B 58 1B F5 */	bl cLib_addCalcAngleS__FPsssss
/* 80CEE950  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80CEE954  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80CEE958  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEE95C  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CEE960  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80CEE964  C0 7E 09 78 */	lfs f3, 0x978(r30)
/* 80CEE968  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80CEE96C  40 81 00 20 */	ble lbl_80CEE98C
/* 80CEE970  D0 7E 09 50 */	stfs f3, 0x950(r30)
/* 80CEE974  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CEE978  C0 1E 09 6C */	lfs f0, 0x96c(r30)
/* 80CEE97C  FC 00 00 50 */	fneg f0, f0
/* 80CEE980  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CEE984  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEE988  48 00 00 20 */	b lbl_80CEE9A8
lbl_80CEE98C:
/* 80CEE98C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80CEE990  FC 00 02 10 */	fabs f0, f0
/* 80CEE994  FC 40 00 18 */	frsp f2, f0
/* 80CEE998  EC 03 10 28 */	fsubs f0, f3, f2
/* 80CEE99C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CEE9A0  40 80 00 08 */	bge lbl_80CEE9A8
/* 80CEE9A4  D0 5E 05 2C */	stfs f2, 0x52c(r30)
lbl_80CEE9A8:
/* 80CEE9A8  88 7E 09 5E */	lbz r3, 0x95e(r30)
/* 80CEE9AC  38 03 FF FF */	addi r0, r3, -1
/* 80CEE9B0  98 1E 09 5E */	stb r0, 0x95e(r30)
/* 80CEE9B4  88 1E 09 5E */	lbz r0, 0x95e(r30)
/* 80CEE9B8  28 00 00 00 */	cmplwi r0, 0
/* 80CEE9BC  40 82 00 54 */	bne lbl_80CEEA10
/* 80CEE9C0  C0 1E 09 70 */	lfs f0, 0x970(r30)
/* 80CEE9C4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEE9C8  38 00 00 03 */	li r0, 3
/* 80CEE9CC  98 1E 09 5C */	stb r0, 0x95c(r30)
/* 80CEE9D0  48 00 00 40 */	b lbl_80CEEA10
lbl_80CEE9D4:
/* 80CEE9D4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80CEE9D8  C0 1E 09 68 */	lfs f0, 0x968(r30)
/* 80CEE9DC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEE9E0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80CEE9E4  C0 3E 09 50 */	lfs f1, 0x950(r30)
/* 80CEE9E8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80CEE9EC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEE9F0  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CEE9F4  C0 1E 09 50 */	lfs f0, 0x950(r30)
/* 80CEE9F8  C0 3E 09 74 */	lfs f1, 0x974(r30)
/* 80CEE9FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80CEEA00  40 80 00 10 */	bge lbl_80CEEA10
/* 80CEEA04  D0 3E 09 50 */	stfs f1, 0x950(r30)
/* 80CEEA08  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CEEA0C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80CEEA10:
/* 80CEEA10  39 61 00 60 */	addi r11, r1, 0x60
/* 80CEEA14  4B 67 38 15 */	bl _restgpr_29
/* 80CEEA18  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CEEA1C  7C 08 03 A6 */	mtlr r0
/* 80CEEA20  38 21 00 60 */	addi r1, r1, 0x60
/* 80CEEA24  4E 80 00 20 */	blr 
