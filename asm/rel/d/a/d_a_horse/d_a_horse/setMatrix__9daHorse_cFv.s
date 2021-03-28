lbl_8083D9D8:
/* 8083D9D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8083D9DC  7C 08 02 A6 */	mflr r0
/* 8083D9E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8083D9E4  39 61 00 30 */	addi r11, r1, 0x30
/* 8083D9E8  4B B2 47 F4 */	b _savegpr_29
/* 8083D9EC  7C 7E 1B 78 */	mr r30, r3
/* 8083D9F0  3C 60 80 84 */	lis r3, lit_3894@ha
/* 8083D9F4  3B E3 54 AC */	addi r31, r3, lit_3894@l
/* 8083D9F8  38 80 00 00 */	li r4, 0
/* 8083D9FC  3B A0 00 00 */	li r29, 0
/* 8083DA00  C0 5E 17 8C */	lfs f2, 0x178c(r30)
/* 8083DA04  38 7F 00 20 */	addi r3, r31, 0x20
/* 8083DA08  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8083DA0C  EC 82 00 32 */	fmuls f4, f2, f0
/* 8083DA10  88 BE 16 B4 */	lbz r5, 0x16b4(r30)
/* 8083DA14  28 05 00 01 */	cmplwi r5, 1
/* 8083DA18  40 82 00 B8 */	bne lbl_8083DAD0
/* 8083DA1C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8083DA20  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8083DA24  40 81 00 AC */	ble lbl_8083DAD0
/* 8083DA28  C0 7F 02 38 */	lfs f3, 0x238(r31)
/* 8083DA2C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8083DA30  4C 40 13 82 */	cror 2, 0, 2
/* 8083DA34  40 82 00 1C */	bne lbl_8083DA50
/* 8083DA38  C0 3F 02 3C */	lfs f1, 0x23c(r31)
/* 8083DA3C  EC 00 20 28 */	fsubs f0, f0, f4
/* 8083DA40  EC 21 00 32 */	fmuls f1, f1, f0
/* 8083DA44  EC 02 20 28 */	fsubs f0, f2, f4
/* 8083DA48  EC 01 00 24 */	fdivs f0, f1, f0
/* 8083DA4C  48 00 00 18 */	b lbl_8083DA64
lbl_8083DA50:
/* 8083DA50  C0 5F 01 C0 */	lfs f2, 0x1c0(r31)
/* 8083DA54  EC 22 00 32 */	fmuls f1, f2, f0
/* 8083DA58  C0 1E 17 90 */	lfs f0, 0x1790(r30)
/* 8083DA5C  EC 01 00 24 */	fdivs f0, f1, f0
/* 8083DA60  EC 02 00 2A */	fadds f0, f2, f0
lbl_8083DA64:
/* 8083DA64  EC 63 00 32 */	fmuls f3, f3, f0
/* 8083DA68  C0 3F 01 A8 */	lfs f1, 0x1a8(r31)
/* 8083DA6C  A8 1E 16 C2 */	lha r0, 0x16c2(r30)
/* 8083DA70  C8 5F 01 80 */	lfd f2, 0x180(r31)
/* 8083DA74  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083DA78  90 01 00 0C */	stw r0, 0xc(r1)
/* 8083DA7C  3C 80 43 30 */	lis r4, 0x4330
/* 8083DA80  90 81 00 08 */	stw r4, 8(r1)
/* 8083DA84  C8 01 00 08 */	lfd f0, 8(r1)
/* 8083DA88  EC 00 10 28 */	fsubs f0, f0, f2
/* 8083DA8C  EC 21 00 24 */	fdivs f1, f1, f0
/* 8083DA90  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8083DA94  A8 1E 16 E8 */	lha r0, 0x16e8(r30)
/* 8083DA98  7C 03 00 50 */	subf r0, r3, r0
/* 8083DA9C  7C 00 07 34 */	extsh r0, r0
/* 8083DAA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083DAA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8083DAA8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8083DAAC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8083DAB0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8083DAB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8083DAB8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8083DABC  FC 00 00 1E */	fctiwz f0, f0
/* 8083DAC0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8083DAC4  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8083DAC8  7C 04 00 D0 */	neg r0, r4
/* 8083DACC  7C 1D 07 34 */	extsh r29, r0
lbl_8083DAD0:
/* 8083DAD0  80 7E 17 44 */	lwz r3, 0x1744(r30)
/* 8083DAD4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8083DAD8  41 82 00 40 */	beq lbl_8083DB18
/* 8083DADC  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8083DAE0  41 82 00 38 */	beq lbl_8083DB18
/* 8083DAE4  28 05 00 01 */	cmplwi r5, 1
/* 8083DAE8  40 82 00 30 */	bne lbl_8083DB18
/* 8083DAEC  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8083DAF0  41 82 00 18 */	beq lbl_8083DB08
/* 8083DAF4  7C 80 07 34 */	extsh r0, r4
/* 8083DAF8  2C 00 05 DC */	cmpwi r0, 0x5dc
/* 8083DAFC  40 80 00 1C */	bge lbl_8083DB18
/* 8083DB00  38 80 05 DC */	li r4, 0x5dc
/* 8083DB04  48 00 00 14 */	b lbl_8083DB18
lbl_8083DB08:
/* 8083DB08  7C 80 07 34 */	extsh r0, r4
/* 8083DB0C  2C 00 FA 24 */	cmpwi r0, -1500
/* 8083DB10  40 81 00 08 */	ble lbl_8083DB18
/* 8083DB14  38 80 FA 24 */	li r4, -1500
lbl_8083DB18:
/* 8083DB18  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 8083DB1C  38 A0 00 04 */	li r5, 4
/* 8083DB20  38 C0 03 E8 */	li r6, 0x3e8
/* 8083DB24  38 E0 00 64 */	li r7, 0x64
/* 8083DB28  4B A3 2A 18 */	b cLib_addCalcAngleS__FPsssss
/* 8083DB2C  7F A0 07 35 */	extsh. r0, r29
/* 8083DB30  40 82 00 20 */	bne lbl_8083DB50
/* 8083DB34  38 7E 16 FA */	addi r3, r30, 0x16fa
/* 8083DB38  38 80 00 00 */	li r4, 0
/* 8083DB3C  38 A0 00 02 */	li r5, 2
/* 8083DB40  38 C0 0F A0 */	li r6, 0xfa0
/* 8083DB44  38 E0 03 E8 */	li r7, 0x3e8
/* 8083DB48  4B A3 29 F8 */	b cLib_addCalcAngleS__FPsssss
/* 8083DB4C  48 00 00 1C */	b lbl_8083DB68
lbl_8083DB50:
/* 8083DB50  38 7E 16 FA */	addi r3, r30, 0x16fa
/* 8083DB54  7F A4 EB 78 */	mr r4, r29
/* 8083DB58  38 A0 00 04 */	li r5, 4
/* 8083DB5C  38 C0 04 B0 */	li r6, 0x4b0
/* 8083DB60  38 E0 00 C8 */	li r7, 0xc8
/* 8083DB64  4B A3 29 DC */	b cLib_addCalcAngleS__FPsssss
lbl_8083DB68:
/* 8083DB68  7F C3 F3 78 */	mr r3, r30
/* 8083DB6C  48 00 0D 39 */	bl setNeckAngle__9daHorse_cFv
/* 8083DB70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8083DB74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8083DB78  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8083DB7C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8083DB80  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8083DB84  4B B0 8D 64 */	b PSMTXTrans
/* 8083DB88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8083DB8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8083DB90  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 8083DB94  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 8083DB98  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 8083DB9C  4B 7C E7 04 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 8083DBA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8083DBA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8083DBA8  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 8083DBAC  38 84 00 24 */	addi r4, r4, 0x24
/* 8083DBB0  4B B0 89 00 */	b PSMTXCopy
/* 8083DBB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8083DBB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083DBBC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8083DBC0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8083DBC4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8083DBC8  41 82 00 58 */	beq lbl_8083DC20
/* 8083DBCC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8083DBD0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8083DBD4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8083DBD8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8083DBDC  7C 64 02 14 */	add r3, r4, r0
/* 8083DBE0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8083DBE4  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8083DBE8  C0 5F 02 40 */	lfs f2, 0x240(r31)
/* 8083DBEC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8083DBF0  EC 81 00 2A */	fadds f4, f1, f0
/* 8083DBF4  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 8083DBF8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8083DBFC  EC 61 00 2A */	fadds f3, f1, f0
/* 8083DC00  7C 04 04 2E */	lfsx f0, r4, r0
/* 8083DC04  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8083DC08  EC 02 00 32 */	fmuls f0, f2, f0
/* 8083DC0C  EC 01 00 2A */	fadds f0, f1, f0
/* 8083DC10  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8083DC14  D0 7E 05 54 */	stfs f3, 0x554(r30)
/* 8083DC18  D0 9E 05 58 */	stfs f4, 0x558(r30)
/* 8083DC1C  48 00 00 24 */	b lbl_8083DC40
lbl_8083DC20:
/* 8083DC20  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8083DC24  C0 3F 01 8C */	lfs f1, 0x18c(r31)
/* 8083DC28  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8083DC2C  EC 21 00 2A */	fadds f1, f1, f0
/* 8083DC30  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8083DC34  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8083DC38  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 8083DC3C  D0 5E 05 58 */	stfs f2, 0x558(r30)
lbl_8083DC40:
/* 8083DC40  39 61 00 30 */	addi r11, r1, 0x30
/* 8083DC44  4B B2 45 E4 */	b _restgpr_29
/* 8083DC48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8083DC4C  7C 08 03 A6 */	mtlr r0
/* 8083DC50  38 21 00 30 */	addi r1, r1, 0x30
/* 8083DC54  4E 80 00 20 */	blr 
