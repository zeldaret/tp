lbl_804AE06C:
/* 804AE06C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804AE070  7C 08 02 A6 */	mflr r0
/* 804AE074  90 01 00 44 */	stw r0, 0x44(r1)
/* 804AE078  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804AE07C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804AE080  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 804AE084  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 804AE088  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804AE08C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804AE090  7C 7E 1B 78 */	mr r30, r3
/* 804AE094  3C 80 80 4C */	lis r4, lit_3879@ha
/* 804AE098  3B E4 B5 34 */	addi r31, r4, lit_3879@l
/* 804AE09C  38 00 00 02 */	li r0, 2
/* 804AE0A0  98 03 0F 6E */	stb r0, 0xf6e(r3)
/* 804AE0A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804AE0A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804AE0AC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804AE0B0  4B B6 C8 B4 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804AE0B4  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 804AE0B8  EF E1 00 32 */	fmuls f31, f1, f0
/* 804AE0BC  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 804AE0C0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804AE0C4  40 80 00 08 */	bge lbl_804AE0CC
/* 804AE0C8  FF E0 00 90 */	fmr f31, f0
lbl_804AE0CC:
/* 804AE0CC  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 804AE0D0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804AE0D4  40 81 00 0C */	ble lbl_804AE0E0
/* 804AE0D8  C3 DF 00 58 */	lfs f30, 0x58(r31)
/* 804AE0DC  48 00 00 08 */	b lbl_804AE0E4
lbl_804AE0E0:
/* 804AE0E0  C3 DF 00 30 */	lfs f30, 0x30(r31)
lbl_804AE0E4:
/* 804AE0E4  80 1E 14 F0 */	lwz r0, 0x14f0(r30)
/* 804AE0E8  2C 00 00 00 */	cmpwi r0, 0
/* 804AE0EC  40 82 00 10 */	bne lbl_804AE0FC
/* 804AE0F0  A8 1E 05 7A */	lha r0, 0x57a(r30)
/* 804AE0F4  2C 00 00 00 */	cmpwi r0, 0
/* 804AE0F8  41 82 00 98 */	beq lbl_804AE190
lbl_804AE0FC:
/* 804AE0FC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804AE100  C0 3E 14 F4 */	lfs f1, 0x14f4(r30)
/* 804AE104  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804AE108  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 804AE10C  4B DC 19 30 */	b cLib_addCalc2__FPffff
/* 804AE110  38 7E 05 94 */	addi r3, r30, 0x594
/* 804AE114  FC 20 F0 90 */	fmr f1, f30
/* 804AE118  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804AE11C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 804AE120  C0 1E 14 F4 */	lfs f0, 0x14f4(r30)
/* 804AE124  EC 63 00 32 */	fmuls f3, f3, f0
/* 804AE128  4B DC 19 14 */	b cLib_addCalc2__FPffff
/* 804AE12C  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 804AE130  1C 00 0B B8 */	mulli r0, r0, 0xbb8
/* 804AE134  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804AE138  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804AE13C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804AE140  7C 23 04 2E */	lfsx f1, r3, r0
/* 804AE144  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 804AE148  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AE14C  FC 00 00 1E */	fctiwz f0, f0
/* 804AE150  D8 01 00 08 */	stfd f0, 8(r1)
/* 804AE154  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804AE158  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 804AE15C  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 804AE160  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 804AE164  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804AE168  7C 23 04 2E */	lfsx f1, r3, r0
/* 804AE16C  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 804AE170  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AE174  FC 00 00 1E */	fctiwz f0, f0
/* 804AE178  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AE17C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AE180  B0 1E 10 04 */	sth r0, 0x1004(r30)
/* 804AE184  38 00 00 05 */	li r0, 5
/* 804AE188  98 1E 10 09 */	stb r0, 0x1009(r30)
/* 804AE18C  48 00 00 84 */	b lbl_804AE210
lbl_804AE190:
/* 804AE190  38 7E 05 94 */	addi r3, r30, 0x594
/* 804AE194  FC 20 F8 90 */	fmr f1, f31
/* 804AE198  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 804AE19C  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 804AE1A0  4B DC 18 9C */	b cLib_addCalc2__FPffff
/* 804AE1A4  C0 3E 05 94 */	lfs f1, 0x594(r30)
/* 804AE1A8  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804AE1AC  EC 00 F8 2A */	fadds f0, f0, f31
/* 804AE1B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AE1B4  40 81 00 5C */	ble lbl_804AE210
/* 804AE1B8  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 804AE1BC  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 804AE1C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804AE1C4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804AE1C8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804AE1CC  7C 23 04 2E */	lfsx f1, r3, r0
/* 804AE1D0  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 804AE1D4  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AE1D8  FC 00 00 1E */	fctiwz f0, f0
/* 804AE1DC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AE1E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AE1E4  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 804AE1E8  A8 1E 05 78 */	lha r0, 0x578(r30)
/* 804AE1EC  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 804AE1F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804AE1F4  7C 23 04 2E */	lfsx f1, r3, r0
/* 804AE1F8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804AE1FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 804AE200  FC 00 00 1E */	fctiwz f0, f0
/* 804AE204  D8 01 00 08 */	stfd f0, 8(r1)
/* 804AE208  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804AE20C  B0 1E 10 04 */	sth r0, 0x1004(r30)
lbl_804AE210:
/* 804AE210  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804AE214  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 804AE218  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 804AE21C  4B DC 18 64 */	b cLib_addCalc0__FPfff
/* 804AE220  38 00 00 0A */	li r0, 0xa
/* 804AE224  98 1E 10 09 */	stb r0, 0x1009(r30)
/* 804AE228  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804AE22C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804AE230  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 804AE234  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 804AE238  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804AE23C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804AE240  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804AE244  7C 08 03 A6 */	mtlr r0
/* 804AE248  38 21 00 40 */	addi r1, r1, 0x40
/* 804AE24C  4E 80 00 20 */	blr 
