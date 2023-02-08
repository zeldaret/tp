lbl_8007F9A4:
/* 8007F9A4  94 21 F7 00 */	stwu r1, -0x900(r1)
/* 8007F9A8  7C 08 02 A6 */	mflr r0
/* 8007F9AC  90 01 09 04 */	stw r0, 0x904(r1)
/* 8007F9B0  39 61 09 00 */	addi r11, r1, 0x900
/* 8007F9B4  48 2E 27 ED */	bl __save_gpr
/* 8007F9B8  7C 6F 1B 78 */	mr r15, r3
/* 8007F9BC  90 81 00 08 */	stw r4, 8(r1)
/* 8007F9C0  7C 83 23 78 */	mr r3, r4
/* 8007F9C4  38 63 00 14 */	addi r3, r3, 0x14
/* 8007F9C8  39 C3 00 0C */	addi r14, r3, 0xc
/* 8007F9CC  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 8007F9D0  38 84 00 14 */	addi r4, r4, 0x14
/* 8007F9D4  38 A1 00 30 */	addi r5, r1, 0x30
/* 8007F9D8  48 2C 76 DD */	bl PSVECSubtract
/* 8007F9DC  7D C3 73 78 */	mr r3, r14
/* 8007F9E0  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 8007F9E4  38 84 00 14 */	addi r4, r4, 0x14
/* 8007F9E8  38 A1 00 24 */	addi r5, r1, 0x24
/* 8007F9EC  48 2C 76 C9 */	bl PSVECSubtract
/* 8007F9F0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8007F9F4  C0 42 8D 20 */	lfs f2, lit_4189(r2)
/* 8007F9F8  EC 20 10 28 */	fsubs f1, f0, f2
/* 8007F9FC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8007FA00  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8007FA04  EC 00 10 28 */	fsubs f0, f0, f2
/* 8007FA08  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8007FA0C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8007FA10  EC 00 10 28 */	fsubs f0, f0, f2
/* 8007FA14  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8007FA18  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8007FA1C  EC 00 10 2A */	fadds f0, f0, f2
/* 8007FA20  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8007FA24  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8007FA28  EC 00 10 2A */	fadds f0, f0, f2
/* 8007FA2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8007FA30  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8007FA34  EC 00 10 2A */	fadds f0, f0, f2
/* 8007FA38  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8007FA3C  48 2E 26 71 */	bl __cvt_fp2unsigned
/* 8007FA40  7C 7E 1B 79 */	or. r30, r3, r3
/* 8007FA44  40 80 00 08 */	bge lbl_8007FA4C
/* 8007FA48  3B C0 00 00 */	li r30, 0
lbl_8007FA4C:
/* 8007FA4C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8007FA50  48 2E 26 5D */	bl __cvt_fp2unsigned
/* 8007FA54  7C 7D 1B 78 */	mr r29, r3
/* 8007FA58  82 0F 00 18 */	lwz r16, 0x18(r15)
/* 8007FA5C  80 10 00 20 */	lwz r0, 0x20(r16)
/* 8007FA60  7C 00 00 F8 */	nor r0, r0, r0
/* 8007FA64  7C 1D 00 00 */	cmpw r29, r0
/* 8007FA68  40 81 00 08 */	ble lbl_8007FA70
/* 8007FA6C  7C 1D 03 78 */	mr r29, r0
lbl_8007FA70:
/* 8007FA70  7C 1E E8 00 */	cmpw r30, r29
/* 8007FA74  40 80 04 74 */	bge lbl_8007FEE8
/* 8007FA78  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8007FA7C  48 2E 26 31 */	bl __cvt_fp2unsigned
/* 8007FA80  7C 7C 1B 79 */	or. r28, r3, r3
/* 8007FA84  40 80 00 08 */	bge lbl_8007FA8C
/* 8007FA88  3B 80 00 00 */	li r28, 0
lbl_8007FA8C:
/* 8007FA8C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8007FA90  48 2E 26 1D */	bl __cvt_fp2unsigned
/* 8007FA94  7C 7B 1B 78 */	mr r27, r3
/* 8007FA98  80 10 00 24 */	lwz r0, 0x24(r16)
/* 8007FA9C  7C 00 00 F8 */	nor r0, r0, r0
/* 8007FAA0  7C 1B 00 00 */	cmpw r27, r0
/* 8007FAA4  40 81 00 08 */	ble lbl_8007FAAC
/* 8007FAA8  7C 1B 03 78 */	mr r27, r0
lbl_8007FAAC:
/* 8007FAAC  7C 1C D8 00 */	cmpw r28, r27
/* 8007FAB0  40 80 04 38 */	bge lbl_8007FEE8
/* 8007FAB4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8007FAB8  48 2E 25 F5 */	bl __cvt_fp2unsigned
/* 8007FABC  7C 6E 1B 79 */	or. r14, r3, r3
/* 8007FAC0  40 80 00 08 */	bge lbl_8007FAC8
/* 8007FAC4  39 C0 00 00 */	li r14, 0
lbl_8007FAC8:
/* 8007FAC8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8007FACC  48 2E 25 E1 */	bl __cvt_fp2unsigned
/* 8007FAD0  7C 7A 1B 78 */	mr r26, r3
/* 8007FAD4  80 10 00 28 */	lwz r0, 0x28(r16)
/* 8007FAD8  7C 00 00 F8 */	nor r0, r0, r0
/* 8007FADC  7C 1A 00 00 */	cmpw r26, r0
/* 8007FAE0  40 81 00 08 */	ble lbl_8007FAE8
/* 8007FAE4  7C 1A 03 78 */	mr r26, r0
lbl_8007FAE8:
/* 8007FAE8  7C 0E D0 00 */	cmpw r14, r26
/* 8007FAEC  40 80 03 FC */	bge lbl_8007FEE8
/* 8007FAF0  38 A1 00 9C */	addi r5, r1, 0x9c
/* 8007FAF4  38 81 08 9C */	addi r4, r1, 0x89c
/* 8007FAF8  38 60 00 00 */	li r3, 0
/* 8007FAFC  38 04 00 03 */	addi r0, r4, 3
/* 8007FB00  7C 05 00 50 */	subf r0, r5, r0
/* 8007FB04  54 00 F0 BE */	srwi r0, r0, 2
/* 8007FB08  7C 09 03 A6 */	mtctr r0
/* 8007FB0C  7C 05 20 40 */	cmplw r5, r4
/* 8007FB10  40 80 00 10 */	bge lbl_8007FB20
lbl_8007FB14:
/* 8007FB14  90 65 00 00 */	stw r3, 0(r5)
/* 8007FB18  38 A5 00 04 */	addi r5, r5, 4
/* 8007FB1C  42 00 FF F8 */	bdnz lbl_8007FB14
lbl_8007FB20:
/* 8007FB20  3A C0 00 00 */	li r22, 0
/* 8007FB24  3A A0 00 00 */	li r21, 0
/* 8007FB28  3A 80 00 00 */	li r20, 0
/* 8007FB2C  38 00 00 00 */	li r0, 0
/* 8007FB30  90 01 08 AC */	stw r0, 0x8ac(r1)
/* 8007FB34  38 00 00 00 */	li r0, 0
/* 8007FB38  90 01 08 A8 */	stw r0, 0x8a8(r1)
/* 8007FB3C  38 00 00 00 */	li r0, 0
/* 8007FB40  90 01 08 A4 */	stw r0, 0x8a4(r1)
/* 8007FB44  7D D3 73 78 */	mr r19, r14
lbl_8007FB48:
/* 8007FB48  3C 60 00 0F */	lis r3, 0x000F /* 0x000F4240@ha */
/* 8007FB4C  39 C3 42 40 */	addi r14, r3, 0x4240 /* 0x000F4240@l */
/* 8007FB50  7F 92 E3 78 */	mr r18, r28
lbl_8007FB54:
/* 8007FB54  3C 60 00 0F */	lis r3, 0x000F /* 0x000F4240@ha */
/* 8007FB58  38 03 42 40 */	addi r0, r3, 0x4240 /* 0x000F4240@l */
/* 8007FB5C  90 01 08 B0 */	stw r0, 0x8b0(r1)
/* 8007FB60  3B 20 00 00 */	li r25, 0
/* 8007FB64  3B 00 00 00 */	li r24, 0
/* 8007FB68  3A E0 00 00 */	li r23, 0
/* 8007FB6C  7F D1 F3 78 */	mr r17, r30
lbl_8007FB70:
/* 8007FB70  81 0F 00 18 */	lwz r8, 0x18(r15)
/* 8007FB74  80 68 00 0C */	lwz r3, 0xc(r8)
/* 8007FB78  80 88 00 2C */	lwz r4, 0x2c(r8)
/* 8007FB7C  7E 27 24 30 */	srw r7, r17, r4
/* 8007FB80  7E 65 24 30 */	srw r5, r19, r4
/* 8007FB84  80 08 00 34 */	lwz r0, 0x34(r8)
/* 8007FB88  7C A6 00 30 */	slw r6, r5, r0
/* 8007FB8C  7E 45 24 30 */	srw r5, r18, r4
/* 8007FB90  80 08 00 30 */	lwz r0, 0x30(r8)
/* 8007FB94  7C A0 00 30 */	slw r0, r5, r0
/* 8007FB98  7C C0 03 78 */	or r0, r6, r0
/* 8007FB9C  7C E0 03 78 */	or r0, r7, r0
/* 8007FBA0  54 05 10 3A */	slwi r5, r0, 2
/* 8007FBA4  48 00 00 28 */	b lbl_8007FBCC
lbl_8007FBA8:
/* 8007FBA8  7C 60 2A 14 */	add r3, r0, r5
/* 8007FBAC  38 84 FF FF */	addi r4, r4, -1
/* 8007FBB0  7E 26 24 30 */	srw r6, r17, r4
/* 8007FBB4  7E 65 24 30 */	srw r5, r19, r4
/* 8007FBB8  7E 40 24 30 */	srw r0, r18, r4
/* 8007FBBC  54 00 0F BC */	rlwinm r0, r0, 1, 0x1e, 0x1e
/* 8007FBC0  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8007FBC4  50 C0 07 FE */	rlwimi r0, r6, 0, 0x1f, 0x1f
/* 8007FBC8  54 05 10 3A */	slwi r5, r0, 2
lbl_8007FBCC:
/* 8007FBCC  7C 60 1B 78 */	mr r0, r3
/* 8007FBD0  7C A3 28 2E */	lwzx r5, r3, r5
/* 8007FBD4  2C 05 00 00 */	cmpwi r5, 0
/* 8007FBD8  40 80 FF D0 */	bge lbl_8007FBA8
/* 8007FBDC  54 A0 00 7E */	clrlwi r0, r5, 1
/* 8007FBE0  7E 03 02 14 */	add r16, r3, r0
/* 8007FBE4  38 00 00 01 */	li r0, 1
/* 8007FBE8  7C 03 20 30 */	slw r3, r0, r4
/* 8007FBEC  38 A3 FF FF */	addi r5, r3, -1
/* 8007FBF0  7E 20 28 38 */	and r0, r17, r5
/* 8007FBF4  7C 00 18 50 */	subf r0, r0, r3
/* 8007FBF8  90 01 08 B4 */	stw r0, 0x8b4(r1)
/* 8007FBFC  7E 40 28 38 */	and r0, r18, r5
/* 8007FC00  7C 80 18 50 */	subf r4, r0, r3
/* 8007FC04  7E 60 28 38 */	and r0, r19, r5
/* 8007FC08  7C 00 18 50 */	subf r0, r0, r3
/* 8007FC0C  7C 00 70 00 */	cmpw r0, r14
/* 8007FC10  40 80 00 08 */	bge lbl_8007FC18
/* 8007FC14  7C 0E 03 78 */	mr r14, r0
lbl_8007FC18:
/* 8007FC18  80 01 08 B0 */	lwz r0, 0x8b0(r1)
/* 8007FC1C  7C 04 00 00 */	cmpw r4, r0
/* 8007FC20  40 80 00 08 */	bge lbl_8007FC28
/* 8007FC24  90 81 08 B0 */	stw r4, 0x8b0(r1)
lbl_8007FC28:
/* 8007FC28  A0 10 00 02 */	lhz r0, 2(r16)
/* 8007FC2C  28 00 00 00 */	cmplwi r0, 0
/* 8007FC30  41 82 00 54 */	beq lbl_8007FC84
/* 8007FC34  7C 04 B8 00 */	cmpw r4, r23
/* 8007FC38  40 81 00 4C */	ble lbl_8007FC84
/* 8007FC3C  7C 04 C0 00 */	cmpw r4, r24
/* 8007FC40  40 81 00 3C */	ble lbl_8007FC7C
/* 8007FC44  7C 04 C8 00 */	cmpw r4, r25
/* 8007FC48  40 81 00 20 */	ble lbl_8007FC68
/* 8007FC4C  7F 17 C3 78 */	mr r23, r24
/* 8007FC50  7F 38 CB 78 */	mr r24, r25
/* 8007FC54  7C 99 23 78 */	mr r25, r4
/* 8007FC58  7E B4 AB 78 */	mr r20, r21
/* 8007FC5C  7E D5 B3 78 */	mr r21, r22
/* 8007FC60  7E 16 83 78 */	mr r22, r16
/* 8007FC64  48 00 00 20 */	b lbl_8007FC84
lbl_8007FC68:
/* 8007FC68  7F 17 C3 78 */	mr r23, r24
/* 8007FC6C  7C 98 23 78 */	mr r24, r4
/* 8007FC70  7E B4 AB 78 */	mr r20, r21
/* 8007FC74  7E 15 83 78 */	mr r21, r16
/* 8007FC78  48 00 00 0C */	b lbl_8007FC84
lbl_8007FC7C:
/* 8007FC7C  7C 97 23 78 */	mr r23, r4
/* 8007FC80  7E 14 83 78 */	mr r20, r16
lbl_8007FC84:
/* 8007FC84  80 01 08 AC */	lwz r0, 0x8ac(r1)
/* 8007FC88  7C 10 00 40 */	cmplw r16, r0
/* 8007FC8C  41 82 02 24 */	beq lbl_8007FEB0
/* 8007FC90  80 01 08 A8 */	lwz r0, 0x8a8(r1)
/* 8007FC94  7C 10 00 40 */	cmplw r16, r0
/* 8007FC98  41 82 02 18 */	beq lbl_8007FEB0
/* 8007FC9C  80 01 08 A4 */	lwz r0, 0x8a4(r1)
/* 8007FCA0  7C 10 00 40 */	cmplw r16, r0
/* 8007FCA4  40 82 02 00 */	bne lbl_8007FEA4
/* 8007FCA8  48 00 02 08 */	b lbl_8007FEB0
/* 8007FCAC  48 00 01 F8 */	b lbl_8007FEA4
lbl_8007FCB0:
/* 8007FCB0  38 60 00 01 */	li r3, 1
/* 8007FCB4  A0 90 00 00 */	lhz r4, 0(r16)
/* 8007FCB8  54 80 06 FE */	clrlwi r0, r4, 0x1b
/* 8007FCBC  7C 65 00 30 */	slw r5, r3, r0
/* 8007FCC0  7C 80 2E 70 */	srawi r0, r4, 5
/* 8007FCC4  54 04 10 3A */	slwi r4, r0, 2
/* 8007FCC8  38 61 00 9C */	addi r3, r1, 0x9c
/* 8007FCCC  7C 63 20 2E */	lwzx r3, r3, r4
/* 8007FCD0  7C 60 28 39 */	and. r0, r3, r5
/* 8007FCD4  40 82 01 D0 */	bne lbl_8007FEA4
/* 8007FCD8  7C 60 2B 78 */	or r0, r3, r5
/* 8007FCDC  38 61 00 9C */	addi r3, r1, 0x9c
/* 8007FCE0  7C 03 21 2E */	stwx r0, r3, r4
/* 8007FCE4  7D E3 7B 78 */	mr r3, r15
/* 8007FCE8  A0 90 00 00 */	lhz r4, 0(r16)
/* 8007FCEC  38 A1 00 64 */	addi r5, r1, 0x64
/* 8007FCF0  4B FF EE 81 */	bl getPolyCode__8dBgWKColCFiP5dBgPc
/* 8007FCF4  7D E3 7B 78 */	mr r3, r15
/* 8007FCF8  38 81 00 64 */	addi r4, r1, 0x64
/* 8007FCFC  48 00 02 05 */	bl ChkShdwDrawThrough__8dBgWKColFP5dBgPc
/* 8007FD00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007FD04  40 82 01 A0 */	bne lbl_8007FEA4
/* 8007FD08  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 8007FD0C  80 64 00 08 */	lwz r3, 8(r4)
/* 8007FD10  A0 10 00 00 */	lhz r0, 0(r16)
/* 8007FD14  54 00 20 36 */	slwi r0, r0, 4
/* 8007FD18  7F E3 02 14 */	add r31, r3, r0
/* 8007FD1C  80 64 00 00 */	lwz r3, 0(r4)
/* 8007FD20  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8007FD24  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007FD28  7C 63 02 14 */	add r3, r3, r0
/* 8007FD2C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8007FD30  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8007FD34  C0 03 00 04 */	lfs f0, 4(r3)
/* 8007FD38  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8007FD3C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8007FD40  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8007FD44  80 6F 00 18 */	lwz r3, 0x18(r15)
/* 8007FD48  80 83 00 04 */	lwz r4, 4(r3)
/* 8007FD4C  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8007FD50  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007FD54  7C 04 02 14 */	add r0, r4, r0
/* 8007FD58  90 01 08 A0 */	stw r0, 0x8a0(r1)
/* 8007FD5C  A0 1F 00 0C */	lhz r0, 0xc(r31)
/* 8007FD60  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007FD64  7C 04 02 14 */	add r0, r4, r0
/* 8007FD68  90 01 08 9C */	stw r0, 0x89c(r1)
/* 8007FD6C  80 61 08 A0 */	lwz r3, 0x8a0(r1)
/* 8007FD70  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8007FD74  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007FD78  7C 84 02 14 */	add r4, r4, r0
/* 8007FD7C  38 A1 00 18 */	addi r5, r1, 0x18
/* 8007FD80  48 2C 74 35 */	bl PSVECCrossProduct
/* 8007FD84  38 61 00 18 */	addi r3, r1, 0x18
/* 8007FD88  80 81 08 9C */	lwz r4, 0x89c(r1)
/* 8007FD8C  48 2C 74 09 */	bl PSVECDotProduct
/* 8007FD90  FC 00 0A 10 */	fabs f0, f1
/* 8007FD94  FC 40 00 18 */	frsp f2, f0
/* 8007FD98  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007FD9C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8007FDA0  41 80 01 04 */	blt lbl_8007FEA4
/* 8007FDA4  38 61 00 18 */	addi r3, r1, 0x18
/* 8007FDA8  7C 64 1B 78 */	mr r4, r3
/* 8007FDAC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8007FDB0  EC 20 08 24 */	fdivs f1, f0, f1
/* 8007FDB4  48 2C 73 25 */	bl PSVECScale
/* 8007FDB8  38 61 00 18 */	addi r3, r1, 0x18
/* 8007FDBC  38 81 00 78 */	addi r4, r1, 0x78
/* 8007FDC0  38 A1 00 90 */	addi r5, r1, 0x90
/* 8007FDC4  48 2C 72 CD */	bl PSVECAdd
/* 8007FDC8  80 6F 00 18 */	lwz r3, 0x18(r15)
/* 8007FDCC  80 63 00 04 */	lwz r3, 4(r3)
/* 8007FDD0  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 8007FDD4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007FDD8  7C 63 02 14 */	add r3, r3, r0
/* 8007FDDC  80 81 08 A0 */	lwz r4, 0x8a0(r1)
/* 8007FDE0  38 A1 00 0C */	addi r5, r1, 0xc
/* 8007FDE4  48 2C 73 D1 */	bl PSVECCrossProduct
/* 8007FDE8  38 61 00 0C */	addi r3, r1, 0xc
/* 8007FDEC  80 81 08 9C */	lwz r4, 0x89c(r1)
/* 8007FDF0  48 2C 73 A5 */	bl PSVECDotProduct
/* 8007FDF4  FC 00 0A 10 */	fabs f0, f1
/* 8007FDF8  FC 40 00 18 */	frsp f2, f0
/* 8007FDFC  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8007FE00  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8007FE04  41 80 00 A0 */	blt lbl_8007FEA4
/* 8007FE08  38 61 00 0C */	addi r3, r1, 0xc
/* 8007FE0C  7C 64 1B 78 */	mr r4, r3
/* 8007FE10  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8007FE14  EC 20 08 24 */	fdivs f1, f0, f1
/* 8007FE18  48 2C 72 C1 */	bl PSVECScale
/* 8007FE1C  38 61 00 0C */	addi r3, r1, 0xc
/* 8007FE20  38 81 00 78 */	addi r4, r1, 0x78
/* 8007FE24  38 A1 00 84 */	addi r5, r1, 0x84
/* 8007FE28  48 2C 72 69 */	bl PSVECAdd
/* 8007FE2C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8007FE30  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8007FE34  90 01 00 60 */	stw r0, 0x60(r1)
/* 8007FE38  38 61 00 3C */	addi r3, r1, 0x3c
/* 8007FE3C  7D E4 7B 78 */	mr r4, r15
/* 8007FE40  A0 B0 00 00 */	lhz r5, 0(r16)
/* 8007FE44  4B FF EA 7D */	bl GetTriPla__8dBgWKColCFi
/* 8007FE48  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8007FE4C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8007FE50  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8007FE54  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8007FE58  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8007FE5C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8007FE60  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8007FE64  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8007FE68  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8007FE6C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8007FE70  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8007FE74  80 61 00 08 */	lwz r3, 8(r1)
/* 8007FE78  38 81 00 78 */	addi r4, r1, 0x78
/* 8007FE7C  38 A0 00 00 */	li r5, 0
/* 8007FE80  38 C0 00 01 */	li r6, 1
/* 8007FE84  38 E0 00 02 */	li r7, 2
/* 8007FE88  39 01 00 50 */	addi r8, r1, 0x50
/* 8007FE8C  81 83 00 30 */	lwz r12, 0x30(r3)
/* 8007FE90  7D 89 03 A6 */	mtctr r12
/* 8007FE94  4E 80 04 21 */	bctrl 
/* 8007FE98  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8007FE9C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8007FEA0  90 01 00 60 */	stw r0, 0x60(r1)
lbl_8007FEA4:
/* 8007FEA4  A4 10 00 02 */	lhzu r0, 2(r16)
/* 8007FEA8  28 00 00 00 */	cmplwi r0, 0
/* 8007FEAC  40 82 FE 04 */	bne lbl_8007FCB0
lbl_8007FEB0:
/* 8007FEB0  80 01 08 B4 */	lwz r0, 0x8b4(r1)
/* 8007FEB4  7E 31 02 14 */	add r17, r17, r0
/* 8007FEB8  7C 11 E8 40 */	cmplw r17, r29
/* 8007FEBC  40 81 FC B4 */	ble lbl_8007FB70
/* 8007FEC0  92 C1 08 AC */	stw r22, 0x8ac(r1)
/* 8007FEC4  92 A1 08 A8 */	stw r21, 0x8a8(r1)
/* 8007FEC8  92 81 08 A4 */	stw r20, 0x8a4(r1)
/* 8007FECC  80 01 08 B0 */	lwz r0, 0x8b0(r1)
/* 8007FED0  7E 52 02 14 */	add r18, r18, r0
/* 8007FED4  7C 12 D8 40 */	cmplw r18, r27
/* 8007FED8  40 81 FC 7C */	ble lbl_8007FB54
/* 8007FEDC  7E 73 72 14 */	add r19, r19, r14
/* 8007FEE0  7C 13 D0 40 */	cmplw r19, r26
/* 8007FEE4  40 81 FC 64 */	ble lbl_8007FB48
lbl_8007FEE8:
/* 8007FEE8  39 61 09 00 */	addi r11, r1, 0x900
/* 8007FEEC  48 2E 23 01 */	bl __restore_gpr
/* 8007FEF0  80 01 09 04 */	lwz r0, 0x904(r1)
/* 8007FEF4  7C 08 03 A6 */	mtlr r0
/* 8007FEF8  38 21 09 00 */	addi r1, r1, 0x900
/* 8007FEFC  4E 80 00 20 */	blr 
