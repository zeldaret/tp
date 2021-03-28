lbl_800FA070:
/* 800FA070  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800FA074  7C 08 02 A6 */	mflr r0
/* 800FA078  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 800FA07C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 800FA080  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 800FA084  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 800FA088  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 800FA08C  39 61 00 90 */	addi r11, r1, 0x90
/* 800FA090  48 26 81 39 */	bl _savegpr_24
/* 800FA094  7C 7D 1B 78 */	mr r29, r3
/* 800FA098  7C BE 2B 78 */	mr r30, r5
/* 800FA09C  3B E0 00 00 */	li r31, 0
/* 800FA0A0  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800FA0A4  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800FA0A8  90 01 00 60 */	stw r0, 0x60(r1)
/* 800FA0AC  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800FA0B0  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800FA0B4  41 82 00 14 */	beq lbl_800FA0C8
/* 800FA0B8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 800FA0BC  C0 1D 05 98 */	lfs f0, 0x598(r29)
/* 800FA0C0  EF E1 00 2A */	fadds f31, f1, f0
/* 800FA0C4  48 00 00 08 */	b lbl_800FA0CC
lbl_800FA0C8:
/* 800FA0C8  C3 FD 04 D4 */	lfs f31, 0x4d4(r29)
lbl_800FA0CC:
/* 800FA0CC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800FA0D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FA0D4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800FA0D8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800FA0DC  7C 03 04 2E */	lfsx f0, r3, r0
/* 800FA0E0  C0 22 95 48 */	lfs f1, lit_23416(r2)
/* 800FA0E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800FA0E8  38 A3 00 04 */	addi r5, r3, 4
/* 800FA0EC  7C 45 04 2E */	lfsx f2, r5, r0
/* 800FA0F0  EC 21 00 B2 */	fmuls f1, f1, f2
/* 800FA0F4  28 1E 00 00 */	cmplwi r30, 0
/* 800FA0F8  41 82 00 60 */	beq lbl_800FA158
/* 800FA0FC  C0 5D 37 98 */	lfs f2, 0x3798(r29)
/* 800FA100  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 800FA104  C0 5D 37 9C */	lfs f2, 0x379c(r29)
/* 800FA108  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 800FA10C  C0 5D 37 A0 */	lfs f2, 0x37a0(r29)
/* 800FA110  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 800FA114  C0 BD 04 D0 */	lfs f5, 0x4d0(r29)
/* 800FA118  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 800FA11C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 800FA120  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 800FA124  C0 9D 04 D8 */	lfs f4, 0x4d8(r29)
/* 800FA128  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 800FA12C  C0 62 92 E0 */	lfs f3, lit_6845(r2)
/* 800FA130  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 800FA134  7C 43 04 2E */	lfsx f2, r3, r0
/* 800FA138  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800FA13C  EC 45 10 2A */	fadds f2, f5, f2
/* 800FA140  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 800FA144  7C 45 04 2E */	lfsx f2, r5, r0
/* 800FA148  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800FA14C  EC 44 10 2A */	fadds f2, f4, f2
/* 800FA150  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 800FA154  48 00 00 48 */	b lbl_800FA19C
lbl_800FA158:
/* 800FA158  C0 BD 04 D8 */	lfs f5, 0x4d8(r29)
/* 800FA15C  C0 9D 04 D0 */	lfs f4, 0x4d0(r29)
/* 800FA160  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 800FA164  D3 E1 00 48 */	stfs f31, 0x48(r1)
/* 800FA168  D0 A1 00 4C */	stfs f5, 0x4c(r1)
/* 800FA16C  C0 62 93 D4 */	lfs f3, lit_11442(r2)
/* 800FA170  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 800FA174  7C 43 04 2E */	lfsx f2, r3, r0
/* 800FA178  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800FA17C  EC 44 10 2A */	fadds f2, f4, f2
/* 800FA180  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 800FA184  FC 40 F8 18 */	frsp f2, f31
/* 800FA188  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 800FA18C  7C 45 04 2E */	lfsx f2, r5, r0
/* 800FA190  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800FA194  EC 45 10 2A */	fadds f2, f5, f2
/* 800FA198  D0 41 00 40 */	stfs f2, 0x40(r1)
lbl_800FA19C:
/* 800FA19C  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 800FA1A0  EC 42 00 28 */	fsubs f2, f2, f0
/* 800FA1A4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 800FA1A8  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 800FA1AC  EC 42 08 28 */	fsubs f2, f2, f1
/* 800FA1B0  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 800FA1B4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 800FA1B8  EC 02 00 28 */	fsubs f0, f2, f0
/* 800FA1BC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800FA1C0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800FA1C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FA1C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 800FA1CC  3B 00 00 00 */	li r24, 0
/* 800FA1D0  3B 80 00 00 */	li r28, 0
/* 800FA1D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FA1D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FA1DC  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 800FA1E0  3B 3D 1B 78 */	addi r25, r29, 0x1b78
/* 800FA1E4  3C 60 80 39 */	lis r3, underOffsetY@ha
/* 800FA1E8  3B 63 19 F0 */	addi r27, r3, underOffsetY@l
lbl_800FA1EC:
/* 800FA1EC  7C 1B E4 2E */	lfsx f0, r27, r28
/* 800FA1F0  EC 1F 00 28 */	fsubs f0, f31, f0
/* 800FA1F4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800FA1F8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800FA1FC  7F A3 EB 78 */	mr r3, r29
/* 800FA200  38 81 00 44 */	addi r4, r1, 0x44
/* 800FA204  38 A1 00 38 */	addi r5, r1, 0x38
/* 800FA208  4B FA 7F 91 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800FA20C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FA210  41 82 00 E0 */	beq lbl_800FA2F0
/* 800FA214  7F 43 D3 78 */	mr r3, r26
/* 800FA218  38 9D 1B 5C */	addi r4, r29, 0x1b5c
/* 800FA21C  38 A1 00 50 */	addi r5, r1, 0x50
/* 800FA220  4B F7 A5 25 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800FA224  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 800FA228  48 16 DF E9 */	bl cBgW_CheckBWall__Ff
/* 800FA22C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800FA230  41 82 00 C0 */	beq lbl_800FA2F0
/* 800FA234  38 61 00 50 */	addi r3, r1, 0x50
/* 800FA238  48 16 CE F1 */	bl atan2sX_Z__4cXyzCFv
/* 800FA23C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 800FA240  48 17 6B E5 */	bl cLib_distanceAngleS__Fss
/* 800FA244  2C 03 54 9F */	cmpwi r3, 0x549f
/* 800FA248  40 80 00 A8 */	bge lbl_800FA2F0
/* 800FA24C  28 1E 00 00 */	cmplwi r30, 0
/* 800FA250  40 82 00 18 */	bne lbl_800FA268
/* 800FA254  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800FA258  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800FA25C  90 01 00 60 */	stw r0, 0x60(r1)
/* 800FA260  38 60 00 01 */	li r3, 1
/* 800FA264  48 00 00 AC */	b lbl_800FA310
lbl_800FA268:
/* 800FA268  38 61 00 20 */	addi r3, r1, 0x20
/* 800FA26C  7F 24 CB 78 */	mr r4, r25
/* 800FA270  38 A1 00 38 */	addi r5, r1, 0x38
/* 800FA274  48 16 C8 C1 */	bl __mi__4cXyzCFRC3Vec
/* 800FA278  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 800FA27C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 800FA280  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800FA284  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800FA288  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800FA28C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 800FA290  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800FA294  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FA298  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800FA29C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800FA2A0  38 61 00 14 */	addi r3, r1, 0x14
/* 800FA2A4  48 24 CE 95 */	bl PSVECSquareMag
/* 800FA2A8  FF C0 08 90 */	fmr f30, f1
/* 800FA2AC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 800FA2B0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 800FA2B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 800FA2B8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FA2BC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800FA2C0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800FA2C4  38 61 00 08 */	addi r3, r1, 8
/* 800FA2C8  48 24 CE 71 */	bl PSVECSquareMag
/* 800FA2CC  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 800FA2D0  40 81 00 20 */	ble lbl_800FA2F0
/* 800FA2D4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800FA2D8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800FA2DC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800FA2E0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800FA2E4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800FA2E8  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800FA2EC  3B E0 00 01 */	li r31, 1
lbl_800FA2F0:
/* 800FA2F0  3B 18 00 01 */	addi r24, r24, 1
/* 800FA2F4  2C 18 00 03 */	cmpwi r24, 3
/* 800FA2F8  3B 9C 00 04 */	addi r28, r28, 4
/* 800FA2FC  41 80 FE F0 */	blt lbl_800FA1EC
/* 800FA300  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800FA304  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800FA308  90 01 00 60 */	stw r0, 0x60(r1)
/* 800FA30C  7F E3 FB 78 */	mr r3, r31
lbl_800FA310:
/* 800FA310  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 800FA314  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 800FA318  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 800FA31C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 800FA320  39 61 00 90 */	addi r11, r1, 0x90
/* 800FA324  48 26 7E F1 */	bl _restgpr_24
/* 800FA328  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800FA32C  7C 08 03 A6 */	mtlr r0
/* 800FA330  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800FA334  4E 80 00 20 */	blr 
