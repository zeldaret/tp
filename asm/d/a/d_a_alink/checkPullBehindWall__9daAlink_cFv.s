lbl_800E8148:
/* 800E8148  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800E814C  7C 08 02 A6 */	mflr r0
/* 800E8150  90 01 00 54 */	stw r0, 0x54(r1)
/* 800E8154  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800E8158  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800E815C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800E8160  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 800E8164  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800E8168  7C 7F 1B 78 */	mr r31, r3
/* 800E816C  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800E8170  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800E8174  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 800E8178  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 800E817C  7F C4 04 2E */	lfsx f30, r4, r0
/* 800E8180  7C 84 02 14 */	add r4, r4, r0
/* 800E8184  C3 E4 00 04 */	lfs f31, 4(r4)
/* 800E8188  C0 83 04 D0 */	lfs f4, 0x4d0(r3)
/* 800E818C  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 800E8190  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 800E8194  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800E8198  EC 61 00 2A */	fadds f3, f1, f0
/* 800E819C  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 800E81A0  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 800E81A4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800E81A8  C0 22 94 80 */	lfs f1, lit_16036(r2)
/* 800E81AC  EC 01 07 B2 */	fmuls f0, f1, f30
/* 800E81B0  EC 04 00 28 */	fsubs f0, f4, f0
/* 800E81B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 800E81B8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 800E81BC  EC 01 07 F2 */	fmuls f0, f1, f31
/* 800E81C0  EC 02 00 28 */	fsubs f0, f2, f0
/* 800E81C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800E81C8  38 81 00 14 */	addi r4, r1, 0x14
/* 800E81CC  38 A1 00 08 */	addi r5, r1, 8
/* 800E81D0  4B FB 9F C9 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800E81D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E81D8  41 82 00 0C */	beq lbl_800E81E4
/* 800E81DC  38 60 00 01 */	li r3, 1
/* 800E81E0  48 00 00 94 */	b lbl_800E8274
lbl_800E81E4:
/* 800E81E4  C0 22 94 84 */	lfs f1, lit_16037(r2)
/* 800E81E8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800E81EC  EC 01 00 2A */	fadds f0, f1, f0
/* 800E81F0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800E81F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E81F8  7F E3 FB 78 */	mr r3, r31
/* 800E81FC  38 81 00 14 */	addi r4, r1, 0x14
/* 800E8200  38 A1 00 08 */	addi r5, r1, 8
/* 800E8204  4B FB 9F 95 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800E8208  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E820C  41 82 00 0C */	beq lbl_800E8218
/* 800E8210  38 60 00 01 */	li r3, 1
/* 800E8214  48 00 00 60 */	b lbl_800E8274
lbl_800E8218:
/* 800E8218  C0 21 00 08 */	lfs f1, 8(r1)
/* 800E821C  C0 42 94 88 */	lfs f2, lit_16038(r2)
/* 800E8220  EC 02 07 B2 */	fmuls f0, f2, f30
/* 800E8224  EC 01 00 2A */	fadds f0, f1, f0
/* 800E8228  D0 01 00 08 */	stfs f0, 8(r1)
/* 800E822C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 800E8230  EC 02 07 F2 */	fmuls f0, f2, f31
/* 800E8234  EC 01 00 2A */	fadds f0, f1, f0
/* 800E8238  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800E823C  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 800E8240  38 81 00 08 */	addi r4, r1, 8
/* 800E8244  48 17 FA E5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800E8248  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E824C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E8250  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E8254  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 800E8258  4B F8 C2 49 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800E825C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800E8260  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E8264  C0 0D 81 14 */	lfs f0, l_autoDownHeight(r13)
/* 800E8268  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E826C  7C 00 00 26 */	mfcr r0
/* 800E8270  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_800E8274:
/* 800E8274  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800E8278  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800E827C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 800E8280  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800E8284  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800E8288  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800E828C  7C 08 03 A6 */	mtlr r0
/* 800E8290  38 21 00 50 */	addi r1, r1, 0x50
/* 800E8294  4E 80 00 20 */	blr 
