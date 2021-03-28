lbl_80CEEA28:
/* 80CEEA28  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CEEA2C  7C 08 02 A6 */	mflr r0
/* 80CEEA30  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CEEA34  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80CEEA38  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80CEEA3C  7C 7E 1B 78 */	mr r30, r3
/* 80CEEA40  3C 60 80 CF */	lis r3, lit_3635@ha
/* 80CEEA44  3B E3 EF A0 */	addi r31, r3, lit_3635@l
/* 80CEEA48  38 7E 09 56 */	addi r3, r30, 0x956
/* 80CEEA4C  48 00 04 FD */	bl func_80CEEF48
/* 80CEEA50  88 1E 09 5C */	lbz r0, 0x95c(r30)
/* 80CEEA54  2C 00 00 03 */	cmpwi r0, 3
/* 80CEEA58  41 82 02 38 */	beq lbl_80CEEC90
/* 80CEEA5C  40 80 00 1C */	bge lbl_80CEEA78
/* 80CEEA60  2C 00 00 01 */	cmpwi r0, 1
/* 80CEEA64  41 82 00 A8 */	beq lbl_80CEEB0C
/* 80CEEA68  40 80 01 C0 */	bge lbl_80CEEC28
/* 80CEEA6C  2C 00 00 00 */	cmpwi r0, 0
/* 80CEEA70  40 80 00 18 */	bge lbl_80CEEA88
/* 80CEEA74  48 00 02 70 */	b lbl_80CEECE4
lbl_80CEEA78:
/* 80CEEA78  2C 00 00 05 */	cmpwi r0, 5
/* 80CEEA7C  41 82 02 68 */	beq lbl_80CEECE4
/* 80CEEA80  40 80 02 64 */	bge lbl_80CEECE4
/* 80CEEA84  48 00 02 28 */	b lbl_80CEECAC
lbl_80CEEA88:
/* 80CEEA88  38 00 00 01 */	li r0, 1
/* 80CEEA8C  98 1E 09 5C */	stb r0, 0x95c(r30)
/* 80CEEA90  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CEEA94  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CEEA98  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CEEA9C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CEEAA0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CEEAA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEEAA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEEAAC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CEEAB0  38 80 00 04 */	li r4, 4
/* 80CEEAB4  38 A0 00 01 */	li r5, 1
/* 80CEEAB8  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80CEEABC  4B 38 10 54 */	b StartQuake__12dVibration_cFii4cXyz
/* 80CEEAC0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CEEAC4  7C 03 07 74 */	extsb r3, r0
/* 80CEEAC8  4B 33 E5 A4 */	b dComIfGp_getReverb__Fi
/* 80CEEACC  7C 67 1B 78 */	mr r7, r3
/* 80CEEAD0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800DE@ha */
/* 80CEEAD4  38 03 00 DE */	addi r0, r3, 0x00DE /* 0x000800DE@l */
/* 80CEEAD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CEEADC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CEEAE0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CEEAE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEEAE8  38 81 00 0C */	addi r4, r1, 0xc
/* 80CEEAEC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CEEAF0  38 C0 00 00 */	li r6, 0
/* 80CEEAF4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80CEEAF8  FC 40 08 90 */	fmr f2, f1
/* 80CEEAFC  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80CEEB00  FC 80 18 90 */	fmr f4, f3
/* 80CEEB04  39 00 00 00 */	li r8, 0
/* 80CEEB08  4B 5B CE 7C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEEB0C:
/* 80CEEB0C  A0 1E 09 56 */	lhz r0, 0x956(r30)
/* 80CEEB10  28 00 00 00 */	cmplwi r0, 0
/* 80CEEB14  41 82 00 BC */	beq lbl_80CEEBD0
/* 80CEEB18  20 00 00 1E */	subfic r0, r0, 0x1e
/* 80CEEB1C  2C 00 00 00 */	cmpwi r0, 0
/* 80CEEB20  40 80 00 08 */	bge lbl_80CEEB28
/* 80CEEB24  38 00 00 00 */	li r0, 0
lbl_80CEEB28:
/* 80CEEB28  C0 5E 09 74 */	lfs f2, 0x974(r30)
/* 80CEEB2C  C0 3E 09 58 */	lfs f1, 0x958(r30)
/* 80CEEB30  54 00 74 22 */	rlwinm r0, r0, 0xe, 0x10, 0x11
/* 80CEEB34  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CEEB38  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80CEEB3C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80CEEB40  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CEEB44  EC 02 00 2A */	fadds f0, f2, f0
/* 80CEEB48  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 80CEEB4C  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEEB50  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEEB54  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEEB58  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEEB5C  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEEB60  C8 3F 00 40 */	lfd f1, 0x40(r31)
/* 80CEEB64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEEB68  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CEEB6C  3C 60 43 30 */	lis r3, 0x4330
/* 80CEEB70  90 61 00 28 */	stw r3, 0x28(r1)
/* 80CEEB74  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80CEEB78  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEEB7C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEEB80  FC 00 00 1E */	fctiwz f0, f0
/* 80CEEB84  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80CEEB88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CEEB8C  B0 1E 09 F0 */	sth r0, 0x9f0(r30)
/* 80CEEB90  A8 1E 09 60 */	lha r0, 0x960(r30)
/* 80CEEB94  1C 00 27 10 */	mulli r0, r0, 0x2710
/* 80CEEB98  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CEEB9C  7C 44 04 2E */	lfsx f2, r4, r0
/* 80CEEBA0  A8 1E 09 F6 */	lha r0, 0x9f6(r30)
/* 80CEEBA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CEEBA8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80CEEBAC  90 61 00 38 */	stw r3, 0x38(r1)
/* 80CEEBB0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80CEEBB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CEEBB8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CEEBBC  FC 00 00 1E */	fctiwz f0, f0
/* 80CEEBC0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80CEEBC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CEEBC8  B0 1E 09 F4 */	sth r0, 0x9f4(r30)
/* 80CEEBCC  48 00 01 18 */	b lbl_80CEECE4
lbl_80CEEBD0:
/* 80CEEBD0  38 00 00 02 */	li r0, 2
/* 80CEEBD4  98 1E 09 5C */	stb r0, 0x95c(r30)
/* 80CEEBD8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CEEBDC  7C 03 07 74 */	extsb r3, r0
/* 80CEEBE0  4B 33 E4 8C */	b dComIfGp_getReverb__Fi
/* 80CEEBE4  7C 67 1B 78 */	mr r7, r3
/* 80CEEBE8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800E1@ha */
/* 80CEEBEC  38 03 00 E1 */	addi r0, r3, 0x00E1 /* 0x000800E1@l */
/* 80CEEBF0  90 01 00 08 */	stw r0, 8(r1)
/* 80CEEBF4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CEEBF8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CEEBFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEEC00  38 81 00 08 */	addi r4, r1, 8
/* 80CEEC04  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CEEC08  38 C0 00 00 */	li r6, 0
/* 80CEEC0C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80CEEC10  FC 40 08 90 */	fmr f2, f1
/* 80CEEC14  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80CEEC18  FC 80 18 90 */	fmr f4, f3
/* 80CEEC1C  39 00 00 00 */	li r8, 0
/* 80CEEC20  4B 5B CD 64 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEEC24  48 00 00 C0 */	b lbl_80CEECE4
lbl_80CEEC28:
/* 80CEEC28  38 7E 05 30 */	addi r3, r30, 0x530
/* 80CEEC2C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CEEC30  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80CEEC34  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80CEEC38  FC 80 10 90 */	fmr f4, f2
/* 80CEEC3C  4B 58 0D 40 */	b cLib_addCalc__FPfffff
/* 80CEEC40  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80CEEC44  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80CEEC48  C0 5E 05 30 */	lfs f2, 0x530(r30)
/* 80CEEC4C  4B 58 1A F4 */	b cLib_chaseF__FPfff
/* 80CEEC50  38 7E 09 50 */	addi r3, r30, 0x950
/* 80CEEC54  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CEEC58  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80CEEC5C  4B 58 1A E4 */	b cLib_chaseF__FPfff
/* 80CEEC60  2C 03 00 00 */	cmpwi r3, 0
/* 80CEEC64  41 82 00 80 */	beq lbl_80CEECE4
/* 80CEEC68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEEC6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEEC70  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CEEC74  38 80 00 1F */	li r4, 0x1f
/* 80CEEC78  4B 38 11 1C */	b StopQuake__12dVibration_cFi
/* 80CEEC7C  38 00 00 00 */	li r0, 0
/* 80CEEC80  B0 1E 09 56 */	sth r0, 0x956(r30)
/* 80CEEC84  38 00 00 04 */	li r0, 4
/* 80CEEC88  98 1E 09 5C */	stb r0, 0x95c(r30)
/* 80CEEC8C  48 00 00 58 */	b lbl_80CEECE4
lbl_80CEEC90:
/* 80CEEC90  38 7E 09 56 */	addi r3, r30, 0x956
/* 80CEEC94  48 00 02 B5 */	bl func_80CEEF48
/* 80CEEC98  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80CEEC9C  40 82 00 48 */	bne lbl_80CEECE4
/* 80CEECA0  38 00 00 04 */	li r0, 4
/* 80CEECA4  98 1E 09 5C */	stb r0, 0x95c(r30)
/* 80CEECA8  48 00 00 3C */	b lbl_80CEECE4
lbl_80CEECAC:
/* 80CEECAC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CEECB0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CEECB4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CEECB8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CEECBC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CEECC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEECC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEECC8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CEECCC  38 80 00 08 */	li r4, 8
/* 80CEECD0  38 A0 00 01 */	li r5, 1
/* 80CEECD4  38 C1 00 10 */	addi r6, r1, 0x10
/* 80CEECD8  4B 38 0D 4C */	b StartShock__12dVibration_cFii4cXyz
/* 80CEECDC  38 00 00 05 */	li r0, 5
/* 80CEECE0  98 1E 09 5C */	stb r0, 0x95c(r30)
lbl_80CEECE4:
/* 80CEECE4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80CEECE8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80CEECEC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CEECF0  7C 08 03 A6 */	mtlr r0
/* 80CEECF4  38 21 00 50 */	addi r1, r1, 0x50
/* 80CEECF8  4E 80 00 20 */	blr 
