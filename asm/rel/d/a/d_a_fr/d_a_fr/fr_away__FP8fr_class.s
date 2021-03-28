lbl_8051A0D8:
/* 8051A0D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051A0DC  7C 08 02 A6 */	mflr r0
/* 8051A0E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051A0E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8051A0E8  4B E4 80 F4 */	b _savegpr_29
/* 8051A0EC  7C 7E 1B 78 */	mr r30, r3
/* 8051A0F0  3C 80 80 52 */	lis r4, lit_3649@ha
/* 8051A0F4  3B E4 B9 C8 */	addi r31, r4, lit_3649@l
/* 8051A0F8  A8 83 05 D4 */	lha r4, 0x5d4(r3)
/* 8051A0FC  2C 04 00 02 */	cmpwi r4, 2
/* 8051A100  41 82 01 5C */	beq lbl_8051A25C
/* 8051A104  40 80 00 14 */	bge lbl_8051A118
/* 8051A108  2C 04 00 00 */	cmpwi r4, 0
/* 8051A10C  41 82 00 18 */	beq lbl_8051A124
/* 8051A110  40 80 00 3C */	bge lbl_8051A14C
/* 8051A114  48 00 01 EC */	b lbl_8051A300
lbl_8051A118:
/* 8051A118  2C 04 00 04 */	cmpwi r4, 4
/* 8051A11C  40 80 01 E4 */	bge lbl_8051A300
/* 8051A120  48 00 01 84 */	b lbl_8051A2A4
lbl_8051A124:
/* 8051A124  38 04 00 01 */	addi r0, r4, 1
/* 8051A128  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8051A12C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8051A130  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8051A134  38 80 00 07 */	li r4, 7
/* 8051A138  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8051A13C  38 A0 00 00 */	li r5, 0
/* 8051A140  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8051A144  4B FF F8 09 */	bl anm_init__FP8fr_classifUcf
/* 8051A148  48 00 01 B8 */	b lbl_8051A300
lbl_8051A14C:
/* 8051A14C  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8051A150  38 80 00 01 */	li r4, 1
/* 8051A154  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8051A158  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8051A15C  40 82 00 18 */	bne lbl_8051A174
/* 8051A160  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8051A164  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8051A168  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8051A16C  41 82 00 08 */	beq lbl_8051A174
/* 8051A170  38 80 00 00 */	li r4, 0
lbl_8051A174:
/* 8051A174  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8051A178  41 82 01 88 */	beq lbl_8051A300
/* 8051A17C  7F C3 F3 78 */	mr r3, r30
/* 8051A180  38 80 00 08 */	li r4, 8
/* 8051A184  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8051A188  38 A0 00 00 */	li r5, 0
/* 8051A18C  FC 40 08 90 */	fmr f2, f1
/* 8051A190  4B FF F7 BD */	bl anm_init__FP8fr_classifUcf
/* 8051A194  3C 60 80 52 */	lis r3, l_HIO@ha
/* 8051A198  3B A3 BC 20 */	addi r29, r3, l_HIO@l
/* 8051A19C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8051A1A0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8051A1A4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8051A1A8  4B D4 D7 E4 */	b cM_rndFX__Ff
/* 8051A1AC  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8051A1B0  EC 00 08 2A */	fadds f0, f0, f1
/* 8051A1B4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8051A1B8  3C 60 80 52 */	lis r3, l_HIO@ha
/* 8051A1BC  3B A3 BC 20 */	addi r29, r3, l_HIO@l
/* 8051A1C0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8051A1C4  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8051A1C8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8051A1CC  4B D4 D7 C0 */	b cM_rndFX__Ff
/* 8051A1D0  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8051A1D4  EC 00 08 2A */	fadds f0, f0, f1
/* 8051A1D8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8051A1DC  7F C3 F3 78 */	mr r3, r30
/* 8051A1E0  4B FF FB 49 */	bl way_bg_check__FP8fr_class
/* 8051A1E4  2C 03 00 00 */	cmpwi r3, 0
/* 8051A1E8  41 82 00 18 */	beq lbl_8051A200
/* 8051A1EC  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8051A1F0  3C 63 00 01 */	addis r3, r3, 1
/* 8051A1F4  38 03 80 00 */	addi r0, r3, -32768
/* 8051A1F8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8051A1FC  48 00 00 50 */	b lbl_8051A24C
lbl_8051A200:
/* 8051A200  7F C3 F3 78 */	mr r3, r30
/* 8051A204  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8051A208  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8051A20C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8051A210  4B B0 05 00 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8051A214  7C 7D 1B 78 */	mr r29, r3
/* 8051A218  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8051A21C  4B D4 D7 70 */	b cM_rndFX__Ff
/* 8051A220  FC 00 08 1E */	fctiwz f0, f1
/* 8051A224  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051A228  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8051A22C  3C 1D 00 01 */	addis r0, r29, 1
/* 8051A230  7C 60 1A 14 */	add r3, r0, r3
/* 8051A234  38 03 80 00 */	addi r0, r3, -32768
/* 8051A238  7C 04 07 34 */	extsh r4, r0
/* 8051A23C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8051A240  38 A0 00 01 */	li r5, 1
/* 8051A244  38 C0 20 00 */	li r6, 0x2000
/* 8051A248  4B D5 63 C0 */	b cLib_addCalcAngleS2__FPssss
lbl_8051A24C:
/* 8051A24C  A8 7E 05 D4 */	lha r3, 0x5d4(r30)
/* 8051A250  38 03 00 01 */	addi r0, r3, 1
/* 8051A254  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8051A258  48 00 00 A8 */	b lbl_8051A300
lbl_8051A25C:
/* 8051A25C  80 1E 06 70 */	lwz r0, 0x670(r30)
/* 8051A260  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8051A264  40 82 00 10 */	bne lbl_8051A274
/* 8051A268  88 1E 05 CE */	lbz r0, 0x5ce(r30)
/* 8051A26C  7C 00 07 75 */	extsb. r0, r0
/* 8051A270  41 82 00 90 */	beq lbl_8051A300
lbl_8051A274:
/* 8051A274  A8 7E 05 D4 */	lha r3, 0x5d4(r30)
/* 8051A278  38 03 00 01 */	addi r0, r3, 1
/* 8051A27C  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8051A280  7F C3 F3 78 */	mr r3, r30
/* 8051A284  38 80 00 09 */	li r4, 9
/* 8051A288  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8051A28C  38 A0 00 00 */	li r5, 0
/* 8051A290  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8051A294  4B FF F6 B9 */	bl anm_init__FP8fr_classifUcf
/* 8051A298  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8051A29C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8051A2A0  48 00 00 60 */	b lbl_8051A300
lbl_8051A2A4:
/* 8051A2A4  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8051A2A8  38 80 00 01 */	li r4, 1
/* 8051A2AC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8051A2B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8051A2B4  40 82 00 18 */	bne lbl_8051A2CC
/* 8051A2B8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8051A2BC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8051A2C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8051A2C4  41 82 00 08 */	beq lbl_8051A2CC
/* 8051A2C8  38 80 00 00 */	li r4, 0
lbl_8051A2CC:
/* 8051A2CC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8051A2D0  41 82 00 30 */	beq lbl_8051A300
/* 8051A2D4  38 00 00 00 */	li r0, 0
/* 8051A2D8  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 8051A2DC  C0 5E 05 D8 */	lfs f2, 0x5d8(r30)
/* 8051A2E0  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8051A2E4  3C 60 80 52 */	lis r3, l_HIO@ha
/* 8051A2E8  38 63 BC 20 */	addi r3, r3, l_HIO@l
/* 8051A2EC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8051A2F0  EC 01 00 2A */	fadds f0, f1, f0
/* 8051A2F4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8051A2F8  40 81 00 08 */	ble lbl_8051A300
/* 8051A2FC  B0 1E 05 D2 */	sth r0, 0x5d2(r30)
lbl_8051A300:
/* 8051A300  39 61 00 20 */	addi r11, r1, 0x20
/* 8051A304  4B E4 7F 24 */	b _restgpr_29
/* 8051A308  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051A30C  7C 08 03 A6 */	mtlr r0
/* 8051A310  38 21 00 20 */	addi r1, r1, 0x20
/* 8051A314  4E 80 00 20 */	blr 
