lbl_80A4CF40:
/* 80A4CF40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A4CF44  7C 08 02 A6 */	mflr r0
/* 80A4CF48  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A4CF4C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80A4CF50  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80A4CF54  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80A4CF58  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80A4CF5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A4CF60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A4CF64  7C 7E 1B 78 */	mr r30, r3
/* 80A4CF68  3C 80 80 A6 */	lis r4, lit_4030@ha
/* 80A4CF6C  3B E4 DE FC */	addi r31, r4, lit_4030@l
/* 80A4CF70  C3 FF 00 30 */	lfs f31, 0x30(r31)
/* 80A4CF74  C3 DF 00 08 */	lfs f30, 8(r31)
/* 80A4CF78  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A4CF7C  28 00 00 16 */	cmplwi r0, 0x16
/* 80A4CF80  41 81 04 7C */	bgt lbl_80A4D3FC
/* 80A4CF84  3C 80 80 A6 */	lis r4, lit_5772@ha
/* 80A4CF88  38 84 E8 38 */	addi r4, r4, lit_5772@l
/* 80A4CF8C  54 00 10 3A */	slwi r0, r0, 2
/* 80A4CF90  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A4CF94  7C 09 03 A6 */	mtctr r0
/* 80A4CF98  4E 80 04 20 */	bctr 
lbl_80A4CF9C:
/* 80A4CF9C  38 80 00 33 */	li r4, 0x33
/* 80A4CFA0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4CFA4  38 A0 00 02 */	li r5, 2
/* 80A4CFA8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4CFAC  4B FF C1 F9 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4CFB0  38 00 00 01 */	li r0, 1
/* 80A4CFB4  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4CFB8  48 00 04 44 */	b lbl_80A4D3FC
lbl_80A4CFBC:
/* 80A4CFBC  D3 FE 04 D0 */	stfs f31, 0x4d0(r30)
/* 80A4CFC0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A4CFC4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A4CFC8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80A4CFCC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A4CFD0  38 00 80 00 */	li r0, -32768
/* 80A4CFD4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A4CFD8  38 80 00 1A */	li r4, 0x1a
/* 80A4CFDC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4CFE0  38 A0 00 02 */	li r5, 2
/* 80A4CFE4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4CFE8  4B FF C1 BD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4CFEC  38 00 00 03 */	li r0, 3
/* 80A4CFF0  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4CFF4  48 00 04 08 */	b lbl_80A4D3FC
lbl_80A4CFF8:
/* 80A4CFF8  3C 80 80 A6 */	lis r4, l_HIO@ha
/* 80A4CFFC  38 84 FE B8 */	addi r4, r4, l_HIO@l
/* 80A4D000  C3 E4 00 18 */	lfs f31, 0x18(r4)
/* 80A4D004  88 1E 05 67 */	lbz r0, 0x567(r30)
/* 80A4D008  7C 00 07 75 */	extsb. r0, r0
/* 80A4D00C  41 82 00 20 */	beq lbl_80A4D02C
/* 80A4D010  38 00 00 00 */	li r0, 0
/* 80A4D014  98 1E 05 67 */	stb r0, 0x567(r30)
/* 80A4D018  38 80 00 2D */	li r4, 0x2d
/* 80A4D01C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4D020  38 A0 00 00 */	li r5, 0
/* 80A4D024  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D028  4B FF C1 7D */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4D02C:
/* 80A4D02C  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A4D030  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80A4D034  40 82 03 C8 */	bne lbl_80A4D3FC
/* 80A4D038  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A4D03C  38 63 00 0C */	addi r3, r3, 0xc
/* 80A4D040  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80A4D044  4B 8D B3 E8 */	b checkPass__12J3DFrameCtrlFf
/* 80A4D048  2C 03 00 00 */	cmpwi r3, 0
/* 80A4D04C  41 82 00 44 */	beq lbl_80A4D090
/* 80A4D050  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001A@ha */
/* 80A4D054  38 03 00 1A */	addi r0, r3, 0x001A /* 0x0005001A@l */
/* 80A4D058  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A4D05C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A4D060  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A4D064  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4D068  38 81 00 0C */	addi r4, r1, 0xc
/* 80A4D06C  38 A0 00 00 */	li r5, 0
/* 80A4D070  38 C0 00 00 */	li r6, 0
/* 80A4D074  38 E0 00 00 */	li r7, 0
/* 80A4D078  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4D07C  FC 40 08 90 */	fmr f2, f1
/* 80A4D080  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80A4D084  FC 80 18 90 */	fmr f4, f3
/* 80A4D088  39 00 00 00 */	li r8, 0
/* 80A4D08C  4B 85 E8 F8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80A4D090:
/* 80A4D090  C3 FF 00 30 */	lfs f31, 0x30(r31)
/* 80A4D094  C3 DF 00 CC */	lfs f30, 0xcc(r31)
/* 80A4D098  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A4D09C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A4D0A0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80A4D0A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4D0A8  4C 41 13 82 */	cror 2, 1, 2
/* 80A4D0AC  40 82 03 50 */	bne lbl_80A4D3FC
/* 80A4D0B0  7F C3 F3 78 */	mr r3, r30
/* 80A4D0B4  38 80 00 1A */	li r4, 0x1a
/* 80A4D0B8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4D0BC  38 A0 00 02 */	li r5, 2
/* 80A4D0C0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D0C4  4B FF C0 E1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D0C8  48 00 03 34 */	b lbl_80A4D3FC
lbl_80A4D0CC:
/* 80A4D0CC  38 00 00 05 */	li r0, 5
/* 80A4D0D0  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4D0D4  38 80 00 21 */	li r4, 0x21
/* 80A4D0D8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4D0DC  38 A0 00 00 */	li r5, 0
/* 80A4D0E0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D0E4  4B FF C0 C1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D0E8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005001A@ha */
/* 80A4D0EC  38 03 00 1A */	addi r0, r3, 0x001A /* 0x0005001A@l */
/* 80A4D0F0  90 01 00 08 */	stw r0, 8(r1)
/* 80A4D0F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A4D0F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A4D0FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4D100  38 81 00 08 */	addi r4, r1, 8
/* 80A4D104  38 A0 00 00 */	li r5, 0
/* 80A4D108  38 C0 00 00 */	li r6, 0
/* 80A4D10C  38 E0 00 00 */	li r7, 0
/* 80A4D110  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4D114  FC 40 08 90 */	fmr f2, f1
/* 80A4D118  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80A4D11C  FC 80 18 90 */	fmr f4, f3
/* 80A4D120  39 00 00 00 */	li r8, 0
/* 80A4D124  4B 85 E8 60 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80A4D128  FC 00 F8 90 */	fmr f0, f31
/* 80A4D12C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A4D130  48 00 02 CC */	b lbl_80A4D3FC
lbl_80A4D134:
/* 80A4D134  3C 60 80 A6 */	lis r3, l_HIO@ha
/* 80A4D138  38 63 FE B8 */	addi r3, r3, l_HIO@l
/* 80A4D13C  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 80A4D140  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A4D144  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80A4D148  48 00 02 B4 */	b lbl_80A4D3FC
lbl_80A4D14C:
/* 80A4D14C  38 80 00 0C */	li r4, 0xc
/* 80A4D150  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4D154  38 A0 00 02 */	li r5, 2
/* 80A4D158  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D15C  4B FF C0 49 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D160  38 00 00 07 */	li r0, 7
/* 80A4D164  B0 1E 05 EA */	sth r0, 0x5ea(r30)
lbl_80A4D168:
/* 80A4D168  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4D16C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80A4D170  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80A4D174  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A4D178  A8 1E 05 E6 */	lha r0, 0x5e6(r30)
/* 80A4D17C  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 80A4D180  40 82 02 7C */	bne lbl_80A4D3FC
/* 80A4D184  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050014@ha */
/* 80A4D188  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00050014@l */
/* 80A4D18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4D190  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A4D194  38 81 00 14 */	addi r4, r1, 0x14
/* 80A4D198  38 A0 FF FF */	li r5, -1
/* 80A4D19C  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A4D1A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4D1A4  7D 89 03 A6 */	mtctr r12
/* 80A4D1A8  4E 80 04 21 */	bctrl 
/* 80A4D1AC  48 00 02 50 */	b lbl_80A4D3FC
lbl_80A4D1B0:
/* 80A4D1B0  38 80 00 1A */	li r4, 0x1a
/* 80A4D1B4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4D1B8  38 A0 00 02 */	li r5, 2
/* 80A4D1BC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D1C0  4B FF BF E5 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D1C4  38 00 00 23 */	li r0, 0x23
/* 80A4D1C8  B0 1E 05 F0 */	sth r0, 0x5f0(r30)
/* 80A4D1CC  38 00 00 09 */	li r0, 9
/* 80A4D1D0  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4D1D4  48 00 02 28 */	b lbl_80A4D3FC
lbl_80A4D1D8:
/* 80A4D1D8  3C 80 80 A6 */	lis r4, l_HIO@ha
/* 80A4D1DC  38 84 FE B8 */	addi r4, r4, l_HIO@l
/* 80A4D1E0  C3 E4 00 18 */	lfs f31, 0x18(r4)
/* 80A4D1E4  C3 DF 00 CC */	lfs f30, 0xcc(r31)
/* 80A4D1E8  A8 1E 05 F0 */	lha r0, 0x5f0(r30)
/* 80A4D1EC  2C 00 00 00 */	cmpwi r0, 0
/* 80A4D1F0  40 82 02 0C */	bne lbl_80A4D3FC
/* 80A4D1F4  38 80 00 25 */	li r4, 0x25
/* 80A4D1F8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4D1FC  38 A0 00 00 */	li r5, 0
/* 80A4D200  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D204  4B FF BF A1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D208  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050045@ha */
/* 80A4D20C  38 03 00 45 */	addi r0, r3, 0x0045 /* 0x00050045@l */
/* 80A4D210  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A4D214  38 7E 08 60 */	addi r3, r30, 0x860
/* 80A4D218  38 81 00 10 */	addi r4, r1, 0x10
/* 80A4D21C  38 A0 FF FF */	li r5, -1
/* 80A4D220  81 9E 08 60 */	lwz r12, 0x860(r30)
/* 80A4D224  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4D228  7D 89 03 A6 */	mtctr r12
/* 80A4D22C  4E 80 04 21 */	bctrl 
/* 80A4D230  38 00 00 01 */	li r0, 1
/* 80A4D234  98 1E 05 E4 */	stb r0, 0x5e4(r30)
/* 80A4D238  38 00 00 0A */	li r0, 0xa
/* 80A4D23C  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4D240  48 00 01 BC */	b lbl_80A4D3FC
lbl_80A4D244:
/* 80A4D244  38 80 00 01 */	li r4, 1
/* 80A4D248  98 9E 05 FC */	stb r4, 0x5fc(r30)
/* 80A4D24C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A4D250  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4D254  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4D258  40 82 00 14 */	bne lbl_80A4D26C
/* 80A4D25C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4D260  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80A4D264  41 82 00 08 */	beq lbl_80A4D26C
/* 80A4D268  38 80 00 00 */	li r4, 0
lbl_80A4D26C:
/* 80A4D26C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4D270  41 82 01 8C */	beq lbl_80A4D3FC
/* 80A4D274  38 00 00 00 */	li r0, 0
/* 80A4D278  98 1E 05 E4 */	stb r0, 0x5e4(r30)
/* 80A4D27C  7F C3 F3 78 */	mr r3, r30
/* 80A4D280  38 80 00 1A */	li r4, 0x1a
/* 80A4D284  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4D288  38 A0 00 02 */	li r5, 2
/* 80A4D28C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D290  4B FF BF 15 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D294  38 00 00 0B */	li r0, 0xb
/* 80A4D298  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4D29C  38 00 00 19 */	li r0, 0x19
/* 80A4D2A0  B0 1E 05 F0 */	sth r0, 0x5f0(r30)
/* 80A4D2A4  48 00 01 58 */	b lbl_80A4D3FC
lbl_80A4D2A8:
/* 80A4D2A8  3C 80 80 A6 */	lis r4, l_HIO@ha
/* 80A4D2AC  38 84 FE B8 */	addi r4, r4, l_HIO@l
/* 80A4D2B0  C3 E4 00 18 */	lfs f31, 0x18(r4)
/* 80A4D2B4  C3 DF 00 CC */	lfs f30, 0xcc(r31)
/* 80A4D2B8  A8 1E 05 F0 */	lha r0, 0x5f0(r30)
/* 80A4D2BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A4D2C0  40 82 01 3C */	bne lbl_80A4D3FC
/* 80A4D2C4  38 80 00 07 */	li r4, 7
/* 80A4D2C8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4D2CC  38 A0 00 02 */	li r5, 2
/* 80A4D2D0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D2D4  4B FF BE D1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D2D8  38 00 00 78 */	li r0, 0x78
/* 80A4D2DC  B0 1E 05 F0 */	sth r0, 0x5f0(r30)
/* 80A4D2E0  38 00 00 0C */	li r0, 0xc
/* 80A4D2E4  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4D2E8  48 00 01 14 */	b lbl_80A4D3FC
lbl_80A4D2EC:
/* 80A4D2EC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80A4D2F0  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 80A4D2F4  38 A0 00 02 */	li r5, 2
/* 80A4D2F8  38 C0 10 00 */	li r6, 0x1000
/* 80A4D2FC  4B 82 33 0C */	b cLib_addCalcAngleS2__FPssss
/* 80A4D300  A8 1E 05 F0 */	lha r0, 0x5f0(r30)
/* 80A4D304  2C 00 00 00 */	cmpwi r0, 0
/* 80A4D308  40 82 00 F4 */	bne lbl_80A4D3FC
/* 80A4D30C  38 00 00 64 */	li r0, 0x64
/* 80A4D310  B0 1E 05 E8 */	sth r0, 0x5e8(r30)
/* 80A4D314  38 00 00 00 */	li r0, 0
/* 80A4D318  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4D31C  48 00 00 E0 */	b lbl_80A4D3FC
lbl_80A4D320:
/* 80A4D320  38 80 00 33 */	li r4, 0x33
/* 80A4D324  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4D328  38 A0 00 02 */	li r5, 2
/* 80A4D32C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D330  4B FF BE 75 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D334  38 00 00 15 */	li r0, 0x15
/* 80A4D338  B0 1E 05 EA */	sth r0, 0x5ea(r30)
lbl_80A4D33C:
/* 80A4D33C  88 1E 05 67 */	lbz r0, 0x567(r30)
/* 80A4D340  7C 00 07 75 */	extsb. r0, r0
/* 80A4D344  41 82 00 B8 */	beq lbl_80A4D3FC
/* 80A4D348  38 00 00 00 */	li r0, 0
/* 80A4D34C  98 1E 05 67 */	stb r0, 0x567(r30)
/* 80A4D350  38 00 00 16 */	li r0, 0x16
/* 80A4D354  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80A4D358  7F C3 F3 78 */	mr r3, r30
/* 80A4D35C  38 80 00 2D */	li r4, 0x2d
/* 80A4D360  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4D364  38 A0 00 00 */	li r5, 0
/* 80A4D368  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D36C  4B FF BE 39 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4D370  48 00 00 8C */	b lbl_80A4D3FC
lbl_80A4D374:
/* 80A4D374  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A4D378  38 80 00 01 */	li r4, 1
/* 80A4D37C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A4D380  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A4D384  40 82 00 14 */	bne lbl_80A4D398
/* 80A4D388  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A4D38C  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80A4D390  41 82 00 08 */	beq lbl_80A4D398
/* 80A4D394  38 80 00 00 */	li r4, 0
lbl_80A4D398:
/* 80A4D398  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A4D39C  41 82 00 1C */	beq lbl_80A4D3B8
/* 80A4D3A0  7F C3 F3 78 */	mr r3, r30
/* 80A4D3A4  38 80 00 1A */	li r4, 0x1a
/* 80A4D3A8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4D3AC  38 A0 00 02 */	li r5, 2
/* 80A4D3B0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D3B4  4B FF BD F1 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4D3B8:
/* 80A4D3B8  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80A4D3BC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A4D3C0  40 82 00 3C */	bne lbl_80A4D3FC
/* 80A4D3C4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80A4D3C8  38 80 00 00 */	li r4, 0
/* 80A4D3CC  38 A0 00 02 */	li r5, 2
/* 80A4D3D0  38 C0 10 00 */	li r6, 0x1000
/* 80A4D3D4  4B 82 32 34 */	b cLib_addCalcAngleS2__FPssss
/* 80A4D3D8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A4D3DC  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80A4D3E0  40 80 00 1C */	bge lbl_80A4D3FC
/* 80A4D3E4  2C 00 F0 00 */	cmpwi r0, -4096
/* 80A4D3E8  40 81 00 14 */	ble lbl_80A4D3FC
/* 80A4D3EC  3C 60 80 A6 */	lis r3, l_HIO@ha
/* 80A4D3F0  38 63 FE B8 */	addi r3, r3, l_HIO@l
/* 80A4D3F4  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 80A4D3F8  C3 DF 00 08 */	lfs f30, 8(r31)
lbl_80A4D3FC:
/* 80A4D3FC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A4D400  FC 20 F8 90 */	fmr f1, f31
/* 80A4D404  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4D408  FC 60 F0 90 */	fmr f3, f30
/* 80A4D40C  4B 82 26 30 */	b cLib_addCalc2__FPffff
/* 80A4D410  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80A4D414  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80A4D418  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80A4D41C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80A4D420  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A4D424  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A4D428  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A4D42C  7C 08 03 A6 */	mtlr r0
/* 80A4D430  38 21 00 40 */	addi r1, r1, 0x40
/* 80A4D434  4E 80 00 20 */	blr 
