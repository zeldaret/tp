lbl_8078C068:
/* 8078C068  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8078C06C  7C 08 02 A6 */	mflr r0
/* 8078C070  90 01 00 74 */	stw r0, 0x74(r1)
/* 8078C074  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8078C078  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8078C07C  39 61 00 60 */	addi r11, r1, 0x60
/* 8078C080  4B BD 61 5C */	b _savegpr_29
/* 8078C084  7C 7D 1B 78 */	mr r29, r3
/* 8078C088  3C 60 80 79 */	lis r3, lit_3767@ha
/* 8078C08C  3B E3 DD A4 */	addi r31, r3, lit_3767@l
/* 8078C090  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8078C094  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8078C098  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8078C09C  A8 1D 06 6E */	lha r0, 0x66e(r29)
/* 8078C0A0  2C 00 00 01 */	cmpwi r0, 1
/* 8078C0A4  41 82 01 0C */	beq lbl_8078C1B0
/* 8078C0A8  40 80 01 A0 */	bge lbl_8078C248
/* 8078C0AC  2C 00 00 00 */	cmpwi r0, 0
/* 8078C0B0  40 80 00 08 */	bge lbl_8078C0B8
/* 8078C0B4  48 00 01 94 */	b lbl_8078C248
lbl_8078C0B8:
/* 8078C0B8  38 00 00 01 */	li r0, 1
/* 8078C0BC  98 1D 0A 90 */	stb r0, 0xa90(r29)
/* 8078C0C0  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 8078C0C4  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8078C0C8  40 82 00 44 */	bne lbl_8078C10C
/* 8078C0CC  88 7D 06 C5 */	lbz r3, 0x6c5(r29)
/* 8078C0D0  28 03 00 00 */	cmplwi r3, 0
/* 8078C0D4  41 82 00 0C */	beq lbl_8078C0E0
/* 8078C0D8  38 03 FF FF */	addi r0, r3, -1
/* 8078C0DC  98 1D 06 C5 */	stb r0, 0x6c5(r29)
lbl_8078C0E0:
/* 8078C0E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C4@ha */
/* 8078C0E4  38 03 02 C4 */	addi r0, r3, 0x02C4 /* 0x000702C4@l */
/* 8078C0E8  90 01 00 08 */	stw r0, 8(r1)
/* 8078C0EC  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8078C0F0  38 81 00 08 */	addi r4, r1, 8
/* 8078C0F4  38 A0 00 00 */	li r5, 0
/* 8078C0F8  38 C0 FF FF */	li r6, -1
/* 8078C0FC  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8078C100  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8078C104  7D 89 03 A6 */	mtctr r12
/* 8078C108  4E 80 04 21 */	bctrl 
lbl_8078C10C:
/* 8078C10C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 8078C110  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 8078C114  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8078C118  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8078C11C  41 82 00 10 */	beq lbl_8078C12C
/* 8078C120  88 7D 06 C5 */	lbz r3, 0x6c5(r29)
/* 8078C124  38 03 00 01 */	addi r0, r3, 1
/* 8078C128  98 1D 06 C5 */	stb r0, 0x6c5(r29)
lbl_8078C12C:
/* 8078C12C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8078C130  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8078C134  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 8078C138  EC 01 00 2A */	fadds f0, f1, f0
/* 8078C13C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078C140  41 81 00 14 */	bgt lbl_8078C154
/* 8078C144  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8078C148  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8078C14C  4C 41 13 82 */	cror 2, 1, 2
/* 8078C150  40 82 00 2C */	bne lbl_8078C17C
lbl_8078C154:
/* 8078C154  38 00 00 01 */	li r0, 1
/* 8078C158  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 8078C15C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8078C160  4B AD B7 F4 */	b cM_rndF__Ff
/* 8078C164  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8078C168  EC 00 08 2A */	fadds f0, f0, f1
/* 8078C16C  FC 00 00 1E */	fctiwz f0, f0
/* 8078C170  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8078C174  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8078C178  B0 1D 06 60 */	sth r0, 0x660(r29)
lbl_8078C17C:
/* 8078C17C  88 1D 06 C5 */	lbz r0, 0x6c5(r29)
/* 8078C180  28 00 00 0A */	cmplwi r0, 0xa
/* 8078C184  40 80 00 18 */	bge lbl_8078C19C
/* 8078C188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8078C18C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8078C190  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8078C194  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8078C198  41 82 00 B0 */	beq lbl_8078C248
lbl_8078C19C:
/* 8078C19C  38 00 00 01 */	li r0, 1
/* 8078C1A0  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 8078C1A4  38 00 00 00 */	li r0, 0
/* 8078C1A8  B0 1D 06 60 */	sth r0, 0x660(r29)
/* 8078C1AC  48 00 00 9C */	b lbl_8078C248
lbl_8078C1B0:
/* 8078C1B0  A8 1D 06 60 */	lha r0, 0x660(r29)
/* 8078C1B4  2C 00 00 00 */	cmpwi r0, 0
/* 8078C1B8  40 82 00 90 */	bne lbl_8078C248
/* 8078C1BC  38 00 00 03 */	li r0, 3
/* 8078C1C0  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8078C1C4  38 00 00 00 */	li r0, 0
/* 8078C1C8  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 8078C1CC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078C1D0  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8078C1D4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8078C1D8  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 8078C1DC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8078C1E0  4B AD B7 74 */	b cM_rndF__Ff
/* 8078C1E4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8078C1E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078C1EC  40 80 00 10 */	bge lbl_8078C1FC
/* 8078C1F0  38 00 40 00 */	li r0, 0x4000
/* 8078C1F4  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 8078C1F8  48 00 00 0C */	b lbl_8078C204
lbl_8078C1FC:
/* 8078C1FC  38 00 C0 00 */	li r0, -16384
/* 8078C200  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
lbl_8078C204:
/* 8078C204  88 DD 06 C4 */	lbz r6, 0x6c4(r29)
/* 8078C208  7C C0 07 75 */	extsb. r0, r6
/* 8078C20C  41 82 02 44 */	beq lbl_8078C450
/* 8078C210  3C 60 80 79 */	lis r3, stick_pt@ha
/* 8078C214  38 A3 E1 04 */	addi r5, r3, stick_pt@l
/* 8078C218  80 85 00 00 */	lwz r4, 0(r5)
/* 8078C21C  3C 60 80 79 */	lis r3, stick_bit@ha
/* 8078C220  38 63 DE B4 */	addi r3, r3, stick_bit@l
/* 8078C224  7C C0 07 74 */	extsb r0, r6
/* 8078C228  54 00 10 3A */	slwi r0, r0, 2
/* 8078C22C  7C 63 02 14 */	add r3, r3, r0
/* 8078C230  80 03 FF FC */	lwz r0, -4(r3)
/* 8078C234  7C 80 00 78 */	andc r0, r4, r0
/* 8078C238  90 05 00 00 */	stw r0, 0(r5)
/* 8078C23C  38 00 00 00 */	li r0, 0
/* 8078C240  98 1D 06 C4 */	stb r0, 0x6c4(r29)
/* 8078C244  48 00 02 0C */	b lbl_8078C450
lbl_8078C248:
/* 8078C248  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8078C24C  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 8078C250  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8078C254  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8078C258  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8078C25C  3C 80 80 79 */	lis r4, stick_d@ha
/* 8078C260  38 84 DF 34 */	addi r4, r4, stick_d@l
/* 8078C264  88 1D 06 C4 */	lbz r0, 0x6c4(r29)
/* 8078C268  7C 00 07 74 */	extsb r0, r0
/* 8078C26C  1C 00 00 03 */	mulli r0, r0, 3
/* 8078C270  7C 84 02 14 */	add r4, r4, r0
/* 8078C274  88 84 FF FD */	lbz r4, -3(r4)
/* 8078C278  7C 84 07 74 */	extsb r4, r4
/* 8078C27C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8078C280  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 8078C284  7D 89 03 A6 */	mtctr r12
/* 8078C288  4E 80 04 21 */	bctrl 
/* 8078C28C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8078C290  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8078C294  80 84 00 00 */	lwz r4, 0(r4)
/* 8078C298  4B BB A2 18 */	b PSMTXCopy
/* 8078C29C  3C 60 80 79 */	lis r3, stick_d@ha
/* 8078C2A0  38 63 DF 34 */	addi r3, r3, stick_d@l
/* 8078C2A4  88 1D 06 C4 */	lbz r0, 0x6c4(r29)
/* 8078C2A8  7C 00 07 74 */	extsb r0, r0
/* 8078C2AC  1C 00 00 03 */	mulli r0, r0, 3
/* 8078C2B0  7C 83 02 14 */	add r4, r3, r0
/* 8078C2B4  88 04 FF FF */	lbz r0, -1(r4)
/* 8078C2B8  7C 00 07 74 */	extsb r0, r0
/* 8078C2BC  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 8078C2C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8078C2C4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8078C2C8  3C 60 43 30 */	lis r3, 0x4330
/* 8078C2CC  90 61 00 28 */	stw r3, 0x28(r1)
/* 8078C2D0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8078C2D4  EC 40 08 28 */	fsubs f2, f0, f1
/* 8078C2D8  88 04 FF FE */	lbz r0, -2(r4)
/* 8078C2DC  7C 00 07 74 */	extsb r0, r0
/* 8078C2E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8078C2E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8078C2E8  90 61 00 30 */	stw r3, 0x30(r1)
/* 8078C2EC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8078C2F0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8078C2F4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078C2F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8078C2FC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8078C300  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8078C304  38 61 00 18 */	addi r3, r1, 0x18
/* 8078C308  38 9D 06 78 */	addi r4, r29, 0x678
/* 8078C30C  4B AE 4B E0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8078C310  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8078C314  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 8078C318  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8078C31C  C0 7D 06 BC */	lfs f3, 0x6bc(r29)
/* 8078C320  4B AE 37 1C */	b cLib_addCalc2__FPffff
/* 8078C324  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8078C328  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 8078C32C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8078C330  C0 7D 06 BC */	lfs f3, 0x6bc(r29)
/* 8078C334  4B AE 37 08 */	b cLib_addCalc2__FPffff
/* 8078C338  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8078C33C  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 8078C340  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8078C344  C0 7D 06 BC */	lfs f3, 0x6bc(r29)
/* 8078C348  4B AE 36 F4 */	b cLib_addCalc2__FPffff
/* 8078C34C  38 7D 06 BC */	addi r3, r29, 0x6bc
/* 8078C350  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8078C354  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8078C358  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8078C35C  4B AE 36 E0 */	b cLib_addCalc2__FPffff
/* 8078C360  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8078C364  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8078C368  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8078C36C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8078C370  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8078C374  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8078C378  38 61 00 0C */	addi r3, r1, 0xc
/* 8078C37C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8078C380  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8078C384  4B AD A8 00 */	b __ml__4cXyzCFf
/* 8078C388  38 61 00 18 */	addi r3, r1, 0x18
/* 8078C38C  38 81 00 0C */	addi r4, r1, 0xc
/* 8078C390  7C 65 1B 78 */	mr r5, r3
/* 8078C394  4B BB AC FC */	b PSVECAdd
/* 8078C398  38 61 00 18 */	addi r3, r1, 0x18
/* 8078C39C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8078C3A0  7C 65 1B 78 */	mr r5, r3
/* 8078C3A4  4B BB AD 10 */	b PSVECSubtract
/* 8078C3A8  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 8078C3AC  1C 00 0A F0 */	mulli r0, r0, 0xaf0
/* 8078C3B0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8078C3B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8078C3B8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8078C3BC  7F E3 04 2E */	lfsx f31, r3, r0
/* 8078C3C0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8078C3C4  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8078C3C8  4B AD B2 AC */	b cM_atan2s__Fff
/* 8078C3CC  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8078C3D0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8078C3D4  FC 00 00 1E */	fctiwz f0, f0
/* 8078C3D8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8078C3DC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8078C3E0  7C 03 02 14 */	add r0, r3, r0
/* 8078C3E4  7C 04 07 34 */	extsh r4, r0
/* 8078C3E8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8078C3EC  38 A0 00 08 */	li r5, 8
/* 8078C3F0  38 C0 08 00 */	li r6, 0x800
/* 8078C3F4  4B AE 42 14 */	b cLib_addCalcAngleS2__FPssss
/* 8078C3F8  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 8078C3FC  38 80 00 00 */	li r4, 0
/* 8078C400  38 A0 00 08 */	li r5, 8
/* 8078C404  38 C0 08 00 */	li r6, 0x800
/* 8078C408  4B AE 42 00 */	b cLib_addCalcAngleS2__FPssss
/* 8078C40C  A8 1D 06 6A */	lha r0, 0x66a(r29)
/* 8078C410  1C 00 15 00 */	mulli r0, r0, 0x1500
/* 8078C414  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8078C418  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8078C41C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8078C420  7C 43 04 2E */	lfsx f2, r3, r0
/* 8078C424  38 7D 06 B0 */	addi r3, r29, 0x6b0
/* 8078C428  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8078C42C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8078C430  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8078C434  EC 01 00 2A */	fadds f0, f1, f0
/* 8078C438  FC 00 00 1E */	fctiwz f0, f0
/* 8078C43C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8078C440  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8078C444  38 A0 00 01 */	li r5, 1
/* 8078C448  38 C0 20 00 */	li r6, 0x2000
/* 8078C44C  4B AE 41 BC */	b cLib_addCalcAngleS2__FPssss
lbl_8078C450:
/* 8078C450  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8078C454  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8078C458  39 61 00 60 */	addi r11, r1, 0x60
/* 8078C45C  4B BD 5D CC */	b _restgpr_29
/* 8078C460  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8078C464  7C 08 03 A6 */	mtlr r0
/* 8078C468  38 21 00 70 */	addi r1, r1, 0x70
/* 8078C46C  4E 80 00 20 */	blr 
