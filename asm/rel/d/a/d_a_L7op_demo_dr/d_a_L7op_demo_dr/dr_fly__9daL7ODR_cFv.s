lbl_805ABE0C:
/* 805ABE0C  94 21 FD 70 */	stwu r1, -0x290(r1)
/* 805ABE10  7C 08 02 A6 */	mflr r0
/* 805ABE14  90 01 02 94 */	stw r0, 0x294(r1)
/* 805ABE18  DB E1 02 80 */	stfd f31, 0x280(r1)
/* 805ABE1C  F3 E1 02 88 */	psq_st f31, 648(r1), 0, 0 /* qr0 */
/* 805ABE20  39 61 02 80 */	addi r11, r1, 0x280
/* 805ABE24  4B DB 63 B5 */	bl _savegpr_28
/* 805ABE28  7C 7F 1B 78 */	mr r31, r3
/* 805ABE2C  3C 60 80 5B */	lis r3, lit_3850@ha /* 0x805ADF50@ha */
/* 805ABE30  3B C3 DF 50 */	addi r30, r3, lit_3850@l /* 0x805ADF50@l */
/* 805ABE34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805ABE38  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805ABE3C  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 805ABE40  7C 00 07 74 */	extsb r0, r0
/* 805ABE44  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805ABE48  7C 64 02 14 */	add r3, r4, r0
/* 805ABE4C  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 805ABE50  83 84 5D AC */	lwz r28, 0x5dac(r4)
/* 805ABE54  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805ABE58  D0 21 02 54 */	stfs f1, 0x254(r1)
/* 805ABE5C  D0 21 02 58 */	stfs f1, 0x258(r1)
/* 805ABE60  D0 21 02 5C */	stfs f1, 0x25c(r1)
/* 805ABE64  80 1F 08 8C */	lwz r0, 0x88c(r31)
/* 805ABE68  2C 00 00 00 */	cmpwi r0, 0
/* 805ABE6C  40 82 00 D0 */	bne lbl_805ABF3C
/* 805ABE70  38 00 00 00 */	li r0, 0
/* 805ABE74  98 1F 08 B4 */	stb r0, 0x8b4(r31)
/* 805ABE78  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805ABE7C  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805ABE80  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805ABE84  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 805ABE88  D0 1F 08 98 */	stfs f0, 0x898(r31)
/* 805ABE8C  38 7F 08 48 */	addi r3, r31, 0x848
/* 805ABE90  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805ABE94  48 00 20 99 */	bl __as__4cXyzFRC4cXyz
/* 805ABE98  C0 3F 08 4C */	lfs f1, 0x84c(r31)
/* 805ABE9C  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 805ABEA0  EC 01 00 2A */	fadds f0, f1, f0
/* 805ABEA4  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 805ABEA8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805ABEAC  4B A6 0E B9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805ABEB0  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805ABEB4  4B A6 10 91 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805ABEB8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805ABEBC  FC 40 08 90 */	fmr f2, f1
/* 805ABEC0  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 805ABEC4  4B A6 0E D9 */	bl transM__14mDoMtx_stack_cFfff
/* 805ABEC8  38 7F 08 3C */	addi r3, r31, 0x83c
/* 805ABECC  48 00 20 3D */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 805ABED0  C0 3F 08 40 */	lfs f1, 0x840(r31)
/* 805ABED4  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 805ABED8  EC 01 00 2A */	fadds f0, f1, f0
/* 805ABEDC  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 805ABEE0  7F E3 FB 78 */	mr r3, r31
/* 805ABEE4  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805ABEE8  38 BF 08 48 */	addi r5, r31, 0x848
/* 805ABEEC  C0 3F 08 98 */	lfs f1, 0x898(r31)
/* 805ABEF0  4B FF FD 3D */	bl setZoomOutCamPos__9daL7ODR_cFR4cXyzR4cXyzf
/* 805ABEF4  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 805ABEF8  38 9F 08 48 */	addi r4, r31, 0x848
/* 805ABEFC  48 00 1F F1 */	bl __ct__4cXyzFRC4cXyz
/* 805ABF00  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 805ABF04  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805ABF08  48 00 1F E5 */	bl __ct__4cXyzFRC4cXyz
/* 805ABF0C  38 7D 02 48 */	addi r3, r29, 0x248
/* 805ABF10  38 81 01 D0 */	addi r4, r1, 0x1d0
/* 805ABF14  38 A1 01 C4 */	addi r5, r1, 0x1c4
/* 805ABF18  4B BD 4B 91 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805ABF1C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 805ABF20  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805ABF24  38 00 00 3C */	li r0, 0x3c
/* 805ABF28  98 1F 08 B5 */	stb r0, 0x8b5(r31)
/* 805ABF2C  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805ABF30  38 03 00 01 */	addi r0, r3, 1
/* 805ABF34  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805ABF38  48 00 18 5C */	b lbl_805AD794
lbl_805ABF3C:
/* 805ABF3C  2C 00 FF FF */	cmpwi r0, -1
/* 805ABF40  41 82 18 54 */	beq lbl_805AD794
/* 805ABF44  2C 00 00 01 */	cmpwi r0, 1
/* 805ABF48  40 82 01 60 */	bne lbl_805AC0A8
/* 805ABF4C  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805ABF50  38 80 08 00 */	li r4, 0x800
/* 805ABF54  38 A0 00 10 */	li r5, 0x10
/* 805ABF58  4B CC 4C 39 */	bl cLib_chaseAngleS__FPsss
/* 805ABF5C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805ABF60  38 81 02 54 */	addi r4, r1, 0x254
/* 805ABF64  4B CC 4C A1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805ABF68  38 03 40 00 */	addi r0, r3, 0x4000
/* 805ABF6C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805ABF70  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805ABF74  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805ABF78  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805ABF7C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805ABF80  7C 23 04 2E */	lfsx f1, r3, r0
/* 805ABF84  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 805ABF88  FC 00 00 50 */	fneg f0, f0
/* 805ABF8C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805ABF90  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805ABF94  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 805ABF98  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805ABF9C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805ABFA0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805ABFA4  4B AC AB 09 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805ABFA8  7F E3 FB 78 */	mr r3, r31
/* 805ABFAC  38 80 00 00 */	li r4, 0
/* 805ABFB0  4B A6 E7 1D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805ABFB4  38 7F 08 48 */	addi r3, r31, 0x848
/* 805ABFB8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805ABFBC  48 00 1F 71 */	bl __as__4cXyzFRC4cXyz
/* 805ABFC0  C0 3F 08 4C */	lfs f1, 0x84c(r31)
/* 805ABFC4  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 805ABFC8  EC 01 00 2A */	fadds f0, f1, f0
/* 805ABFCC  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 805ABFD0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805ABFD4  4B A6 0D 91 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805ABFD8  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805ABFDC  4B A6 0F 69 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805ABFE0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805ABFE4  FC 40 08 90 */	fmr f2, f1
/* 805ABFE8  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 805ABFEC  4B A6 0D B1 */	bl transM__14mDoMtx_stack_cFfff
/* 805ABFF0  38 7F 08 3C */	addi r3, r31, 0x83c
/* 805ABFF4  48 00 1F 15 */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 805ABFF8  C0 3F 08 40 */	lfs f1, 0x840(r31)
/* 805ABFFC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 805AC000  EC 01 00 2A */	fadds f0, f1, f0
/* 805AC004  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 805AC008  7F E3 FB 78 */	mr r3, r31
/* 805AC00C  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AC010  38 BF 08 48 */	addi r5, r31, 0x848
/* 805AC014  C0 3F 08 98 */	lfs f1, 0x898(r31)
/* 805AC018  4B FF FC 15 */	bl setZoomOutCamPos__9daL7ODR_cFR4cXyzR4cXyzf
/* 805AC01C  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 805AC020  38 9F 08 48 */	addi r4, r31, 0x848
/* 805AC024  48 00 1E C9 */	bl __ct__4cXyzFRC4cXyz
/* 805AC028  38 61 01 AC */	addi r3, r1, 0x1ac
/* 805AC02C  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AC030  48 00 1E BD */	bl __ct__4cXyzFRC4cXyz
/* 805AC034  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AC038  38 81 01 B8 */	addi r4, r1, 0x1b8
/* 805AC03C  38 A1 01 AC */	addi r5, r1, 0x1ac
/* 805AC040  4B BD 4A 69 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805AC044  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC048  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AC04C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 805AC050  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AC054  40 82 00 30 */	bne lbl_805AC084
/* 805AC058  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805AC05C  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805AC060  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805AC064  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AC068  38 81 00 4C */	addi r4, r1, 0x4c
/* 805AC06C  38 A0 00 00 */	li r5, 0
/* 805AC070  38 C0 FF FF */	li r6, -1
/* 805AC074  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AC078  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805AC07C  7D 89 03 A6 */	mtctr r12
/* 805AC080  4E 80 04 21 */	bctrl 
lbl_805AC084:
/* 805AC084  88 1F 08 B5 */	lbz r0, 0x8b5(r31)
/* 805AC088  28 00 00 00 */	cmplwi r0, 0
/* 805AC08C  40 82 17 08 */	bne lbl_805AD794
/* 805AC090  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805AC094  D0 1F 08 9C */	stfs f0, 0x89c(r31)
/* 805AC098  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805AC09C  38 03 00 01 */	addi r0, r3, 1
/* 805AC0A0  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805AC0A4  48 00 16 F0 */	b lbl_805AD794
lbl_805AC0A8:
/* 805AC0A8  2C 00 00 02 */	cmpwi r0, 2
/* 805AC0AC  40 82 01 94 */	bne lbl_805AC240
/* 805AC0B0  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AC0B4  38 80 08 00 */	li r4, 0x800
/* 805AC0B8  38 A0 00 10 */	li r5, 0x10
/* 805AC0BC  4B CC 4A D5 */	bl cLib_chaseAngleS__FPsss
/* 805AC0C0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805AC0C4  38 81 02 54 */	addi r4, r1, 0x254
/* 805AC0C8  4B CC 4B 3D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805AC0CC  38 03 40 00 */	addi r0, r3, 0x4000
/* 805AC0D0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805AC0D4  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805AC0D8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AC0DC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805AC0E0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805AC0E4  7C 23 04 2E */	lfsx f1, r3, r0
/* 805AC0E8  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 805AC0EC  FC 00 00 50 */	fneg f0, f0
/* 805AC0F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805AC0F4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805AC0F8  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 805AC0FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AC100  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AC104  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805AC108  4B AC A9 A5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805AC10C  7F E3 FB 78 */	mr r3, r31
/* 805AC110  38 80 00 00 */	li r4, 0
/* 805AC114  4B A6 E5 B9 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805AC118  38 7F 08 48 */	addi r3, r31, 0x848
/* 805AC11C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805AC120  48 00 1E 0D */	bl __as__4cXyzFRC4cXyz
/* 805AC124  C0 3F 08 4C */	lfs f1, 0x84c(r31)
/* 805AC128  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 805AC12C  EC 01 00 2A */	fadds f0, f1, f0
/* 805AC130  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 805AC134  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805AC138  4B A6 0C 2D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805AC13C  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AC140  4B A6 0E 05 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805AC144  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805AC148  FC 40 08 90 */	fmr f2, f1
/* 805AC14C  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 805AC150  4B A6 0C 4D */	bl transM__14mDoMtx_stack_cFfff
/* 805AC154  38 7F 08 3C */	addi r3, r31, 0x83c
/* 805AC158  48 00 1D B1 */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 805AC15C  C0 3F 08 40 */	lfs f1, 0x840(r31)
/* 805AC160  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 805AC164  EC 01 00 2A */	fadds f0, f1, f0
/* 805AC168  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 805AC16C  38 7F 08 48 */	addi r3, r31, 0x848
/* 805AC170  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AC174  48 00 1C 65 */	bl abs__4cXyzCFRC3Vec
/* 805AC178  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805AC17C  EF E1 00 28 */	fsubs f31, f1, f0
/* 805AC180  38 7F 08 9C */	addi r3, r31, 0x89c
/* 805AC184  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 805AC188  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805AC18C  4B CC 45 B5 */	bl cLib_chaseF__FPfff
/* 805AC190  38 7F 08 98 */	addi r3, r31, 0x898
/* 805AC194  FC 20 F8 90 */	fmr f1, f31
/* 805AC198  C0 5F 08 9C */	lfs f2, 0x89c(r31)
/* 805AC19C  4B CC 45 A5 */	bl cLib_chaseF__FPfff
/* 805AC1A0  7F E3 FB 78 */	mr r3, r31
/* 805AC1A4  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AC1A8  38 BF 08 48 */	addi r5, r31, 0x848
/* 805AC1AC  C0 3F 08 98 */	lfs f1, 0x898(r31)
/* 805AC1B0  4B FF FA 7D */	bl setZoomOutCamPos__9daL7ODR_cFR4cXyzR4cXyzf
/* 805AC1B4  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 805AC1B8  38 9F 08 48 */	addi r4, r31, 0x848
/* 805AC1BC  48 00 1D 31 */	bl __ct__4cXyzFRC4cXyz
/* 805AC1C0  38 61 01 94 */	addi r3, r1, 0x194
/* 805AC1C4  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AC1C8  48 00 1D 25 */	bl __ct__4cXyzFRC4cXyz
/* 805AC1CC  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AC1D0  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 805AC1D4  38 A1 01 94 */	addi r5, r1, 0x194
/* 805AC1D8  4B BD 48 D1 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805AC1DC  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC1E0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AC1E4  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 805AC1E8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AC1EC  40 82 00 30 */	bne lbl_805AC21C
/* 805AC1F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805AC1F4  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805AC1F8  90 01 00 48 */	stw r0, 0x48(r1)
/* 805AC1FC  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AC200  38 81 00 48 */	addi r4, r1, 0x48
/* 805AC204  38 A0 00 00 */	li r5, 0
/* 805AC208  38 C0 FF FF */	li r6, -1
/* 805AC20C  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AC210  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805AC214  7D 89 03 A6 */	mtctr r12
/* 805AC218  4E 80 04 21 */	bctrl 
lbl_805AC21C:
/* 805AC21C  C0 1F 08 98 */	lfs f0, 0x898(r31)
/* 805AC220  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 805AC224  40 82 15 70 */	bne lbl_805AD794
/* 805AC228  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 805AC22C  D0 1F 08 9C */	stfs f0, 0x89c(r31)
/* 805AC230  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805AC234  38 03 00 01 */	addi r0, r3, 1
/* 805AC238  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805AC23C  48 00 15 58 */	b lbl_805AD794
lbl_805AC240:
/* 805AC240  2C 00 00 03 */	cmpwi r0, 3
/* 805AC244  40 82 01 B8 */	bne lbl_805AC3FC
/* 805AC248  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AC24C  38 80 08 00 */	li r4, 0x800
/* 805AC250  38 A0 00 10 */	li r5, 0x10
/* 805AC254  4B CC 49 3D */	bl cLib_chaseAngleS__FPsss
/* 805AC258  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805AC25C  38 81 02 54 */	addi r4, r1, 0x254
/* 805AC260  4B CC 49 A5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805AC264  38 03 40 00 */	addi r0, r3, 0x4000
/* 805AC268  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805AC26C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805AC270  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AC274  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805AC278  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805AC27C  7C 23 04 2E */	lfsx f1, r3, r0
/* 805AC280  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 805AC284  FC 00 00 50 */	fneg f0, f0
/* 805AC288  EC 00 00 72 */	fmuls f0, f0, f1
/* 805AC28C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805AC290  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 805AC294  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AC298  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AC29C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805AC2A0  4B AC A8 0D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805AC2A4  7F E3 FB 78 */	mr r3, r31
/* 805AC2A8  38 80 00 00 */	li r4, 0
/* 805AC2AC  4B A6 E4 21 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805AC2B0  38 61 02 48 */	addi r3, r1, 0x248
/* 805AC2B4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805AC2B8  48 00 1C 75 */	bl __as__4cXyzFRC4cXyz
/* 805AC2BC  C0 21 02 4C */	lfs f1, 0x24c(r1)
/* 805AC2C0  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 805AC2C4  EC 01 00 2A */	fadds f0, f1, f0
/* 805AC2C8  D0 01 02 4C */	stfs f0, 0x24c(r1)
/* 805AC2CC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805AC2D0  4B A6 0A 95 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805AC2D4  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AC2D8  4B A6 0C 6D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805AC2DC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805AC2E0  FC 40 08 90 */	fmr f2, f1
/* 805AC2E4  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 805AC2E8  4B A6 0A B5 */	bl transM__14mDoMtx_stack_cFfff
/* 805AC2EC  38 7F 08 3C */	addi r3, r31, 0x83c
/* 805AC2F0  48 00 1C 19 */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 805AC2F4  C0 3F 08 40 */	lfs f1, 0x840(r31)
/* 805AC2F8  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 805AC2FC  EC 01 00 2A */	fadds f0, f1, f0
/* 805AC300  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 805AC304  38 7F 08 9C */	addi r3, r31, 0x89c
/* 805AC308  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805AC30C  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 805AC310  4B CC 44 31 */	bl cLib_chaseF__FPfff
/* 805AC314  C0 3F 08 98 */	lfs f1, 0x898(r31)
/* 805AC318  C0 1F 08 9C */	lfs f0, 0x89c(r31)
/* 805AC31C  EC 01 00 2A */	fadds f0, f1, f0
/* 805AC320  D0 1F 08 98 */	stfs f0, 0x898(r31)
/* 805AC324  7F E3 FB 78 */	mr r3, r31
/* 805AC328  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AC32C  38 A1 02 48 */	addi r5, r1, 0x248
/* 805AC330  C0 3F 08 98 */	lfs f1, 0x898(r31)
/* 805AC334  4B FF F8 F9 */	bl setZoomOutCamPos__9daL7ODR_cFR4cXyzR4cXyzf
/* 805AC338  38 7F 08 48 */	addi r3, r31, 0x848
/* 805AC33C  38 9F 08 30 */	addi r4, r31, 0x830
/* 805AC340  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805AC344  4B CC 44 69 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 805AC348  38 61 01 88 */	addi r3, r1, 0x188
/* 805AC34C  38 9F 08 48 */	addi r4, r31, 0x848
/* 805AC350  48 00 1B 9D */	bl __ct__4cXyzFRC4cXyz
/* 805AC354  38 61 01 7C */	addi r3, r1, 0x17c
/* 805AC358  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AC35C  48 00 1B 91 */	bl __ct__4cXyzFRC4cXyz
/* 805AC360  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AC364  38 81 01 88 */	addi r4, r1, 0x188
/* 805AC368  38 A1 01 7C */	addi r5, r1, 0x17c
/* 805AC36C  4B BD 47 3D */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805AC370  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC374  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AC378  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 805AC37C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AC380  40 82 00 30 */	bne lbl_805AC3B0
/* 805AC384  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805AC388  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805AC38C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805AC390  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AC394  38 81 00 44 */	addi r4, r1, 0x44
/* 805AC398  38 A0 00 00 */	li r5, 0
/* 805AC39C  38 C0 FF FF */	li r6, -1
/* 805AC3A0  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AC3A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805AC3A8  7D 89 03 A6 */	mtctr r12
/* 805AC3AC  4E 80 04 21 */	bctrl 
lbl_805AC3B0:
/* 805AC3B0  C0 3F 08 9C */	lfs f1, 0x89c(r31)
/* 805AC3B4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805AC3B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805AC3BC  40 82 13 D8 */	bne lbl_805AD794
/* 805AC3C0  38 7F 08 30 */	addi r3, r31, 0x830
/* 805AC3C4  38 9F 08 48 */	addi r4, r31, 0x848
/* 805AC3C8  4B CB AC 65 */	bl __eq__4cXyzCFRC3Vec
/* 805AC3CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805AC3D0  41 82 13 C4 */	beq lbl_805AD794
/* 805AC3D4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805AC3D8  D0 3F 08 98 */	stfs f1, 0x898(r31)
/* 805AC3DC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805AC3E0  D0 1F 08 9C */	stfs f0, 0x89c(r31)
/* 805AC3E4  D0 3F 08 A0 */	stfs f1, 0x8a0(r31)
/* 805AC3E8  D0 3F 08 A4 */	stfs f1, 0x8a4(r31)
/* 805AC3EC  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805AC3F0  38 03 00 01 */	addi r0, r3, 1
/* 805AC3F4  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805AC3F8  48 00 13 9C */	b lbl_805AD794
lbl_805AC3FC:
/* 805AC3FC  2C 00 00 04 */	cmpwi r0, 4
/* 805AC400  40 82 01 8C */	bne lbl_805AC58C
/* 805AC404  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AC408  38 80 08 00 */	li r4, 0x800
/* 805AC40C  38 A0 00 10 */	li r5, 0x10
/* 805AC410  4B CC 47 81 */	bl cLib_chaseAngleS__FPsss
/* 805AC414  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805AC418  38 81 02 54 */	addi r4, r1, 0x254
/* 805AC41C  4B CC 47 E9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805AC420  38 03 40 00 */	addi r0, r3, 0x4000
/* 805AC424  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805AC428  38 7F 05 2C */	addi r3, r31, 0x52c
/* 805AC42C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805AC430  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 805AC434  4B CC 43 0D */	bl cLib_chaseF__FPfff
/* 805AC438  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805AC43C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AC440  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805AC444  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805AC448  7C 23 04 2E */	lfsx f1, r3, r0
/* 805AC44C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 805AC450  FC 00 00 50 */	fneg f0, f0
/* 805AC454  EC 00 00 72 */	fmuls f0, f0, f1
/* 805AC458  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805AC45C  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 805AC460  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AC464  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AC468  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805AC46C  4B AC A6 41 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805AC470  7F E3 FB 78 */	mr r3, r31
/* 805AC474  38 80 00 00 */	li r4, 0
/* 805AC478  4B A6 E2 55 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805AC47C  38 7F 08 48 */	addi r3, r31, 0x848
/* 805AC480  38 9F 08 30 */	addi r4, r31, 0x830
/* 805AC484  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805AC488  4B CC 43 25 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 805AC48C  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 805AC490  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805AC494  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 805AC498  4B CC 42 A9 */	bl cLib_chaseF__FPfff
/* 805AC49C  38 7F 08 9C */	addi r3, r31, 0x89c
/* 805AC4A0  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805AC4A4  C0 5F 08 A0 */	lfs f2, 0x8a0(r31)
/* 805AC4A8  4B CC 42 99 */	bl cLib_chaseF__FPfff
/* 805AC4AC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805AC4B0  4B A6 08 B5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805AC4B4  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AC4B8  4B A6 0A 8D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805AC4BC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805AC4C0  FC 40 08 90 */	fmr f2, f1
/* 805AC4C4  C0 7F 08 9C */	lfs f3, 0x89c(r31)
/* 805AC4C8  4B A6 08 D5 */	bl transM__14mDoMtx_stack_cFfff
/* 805AC4CC  38 61 02 3C */	addi r3, r1, 0x23c
/* 805AC4D0  48 00 1A 39 */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 805AC4D4  C0 21 02 40 */	lfs f1, 0x240(r1)
/* 805AC4D8  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 805AC4DC  EC 01 00 2A */	fadds f0, f1, f0
/* 805AC4E0  D0 01 02 40 */	stfs f0, 0x240(r1)
/* 805AC4E4  38 7F 08 98 */	addi r3, r31, 0x898
/* 805AC4E8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805AC4EC  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805AC4F0  4B CC 42 51 */	bl cLib_chaseF__FPfff
/* 805AC4F4  38 7F 08 3C */	addi r3, r31, 0x83c
/* 805AC4F8  38 81 02 3C */	addi r4, r1, 0x23c
/* 805AC4FC  C0 3F 08 98 */	lfs f1, 0x898(r31)
/* 805AC500  4B CC 42 AD */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 805AC504  38 61 01 70 */	addi r3, r1, 0x170
/* 805AC508  38 9F 08 48 */	addi r4, r31, 0x848
/* 805AC50C  48 00 19 E1 */	bl __ct__4cXyzFRC4cXyz
/* 805AC510  38 61 01 64 */	addi r3, r1, 0x164
/* 805AC514  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AC518  48 00 19 D5 */	bl __ct__4cXyzFRC4cXyz
/* 805AC51C  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AC520  38 81 01 70 */	addi r4, r1, 0x170
/* 805AC524  38 A1 01 64 */	addi r5, r1, 0x164
/* 805AC528  4B BD 45 81 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805AC52C  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC530  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AC534  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 805AC538  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AC53C  40 82 00 30 */	bne lbl_805AC56C
/* 805AC540  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805AC544  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805AC548  90 01 00 40 */	stw r0, 0x40(r1)
/* 805AC54C  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AC550  38 81 00 40 */	addi r4, r1, 0x40
/* 805AC554  38 A0 00 00 */	li r5, 0
/* 805AC558  38 C0 FF FF */	li r6, -1
/* 805AC55C  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AC560  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805AC564  7D 89 03 A6 */	mtctr r12
/* 805AC568  4E 80 04 21 */	bctrl 
lbl_805AC56C:
/* 805AC56C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 805AC570  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805AC574  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AC578  40 81 12 1C */	ble lbl_805AD794
/* 805AC57C  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805AC580  38 03 00 01 */	addi r0, r3, 1
/* 805AC584  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805AC588  48 00 12 0C */	b lbl_805AD794
lbl_805AC58C:
/* 805AC58C  2C 00 00 05 */	cmpwi r0, 5
/* 805AC590  40 82 01 BC */	bne lbl_805AC74C
/* 805AC594  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AC598  38 80 08 00 */	li r4, 0x800
/* 805AC59C  38 A0 00 10 */	li r5, 0x10
/* 805AC5A0  4B CC 45 F1 */	bl cLib_chaseAngleS__FPsss
/* 805AC5A4  38 7F 04 DE */	addi r3, r31, 0x4de
/* 805AC5A8  38 80 00 00 */	li r4, 0
/* 805AC5AC  38 A0 00 80 */	li r5, 0x80
/* 805AC5B0  4B CC 45 E1 */	bl cLib_chaseAngleS__FPsss
/* 805AC5B4  38 7F 05 2C */	addi r3, r31, 0x52c
/* 805AC5B8  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805AC5BC  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 805AC5C0  4B CC 41 81 */	bl cLib_chaseF__FPfff
/* 805AC5C4  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 805AC5C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AC5CC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AC5D0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805AC5D4  4B AC A4 D9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805AC5D8  7F E3 FB 78 */	mr r3, r31
/* 805AC5DC  38 80 00 00 */	li r4, 0
/* 805AC5E0  4B A6 E0 ED */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805AC5E4  38 7F 08 48 */	addi r3, r31, 0x848
/* 805AC5E8  38 9F 08 30 */	addi r4, r31, 0x830
/* 805AC5EC  48 00 19 41 */	bl __as__4cXyzFRC4cXyz
/* 805AC5F0  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 805AC5F4  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805AC5F8  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 805AC5FC  4B CC 41 45 */	bl cLib_chaseF__FPfff
/* 805AC600  38 7F 08 9C */	addi r3, r31, 0x89c
/* 805AC604  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805AC608  C0 5F 08 A0 */	lfs f2, 0x8a0(r31)
/* 805AC60C  4B CC 41 35 */	bl cLib_chaseF__FPfff
/* 805AC610  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805AC614  4B A6 07 51 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805AC618  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AC61C  4B A6 09 29 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805AC620  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805AC624  FC 40 08 90 */	fmr f2, f1
/* 805AC628  C0 7F 08 9C */	lfs f3, 0x89c(r31)
/* 805AC62C  4B A6 07 71 */	bl transM__14mDoMtx_stack_cFfff
/* 805AC630  38 61 02 30 */	addi r3, r1, 0x230
/* 805AC634  48 00 18 D5 */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 805AC638  C0 21 02 34 */	lfs f1, 0x234(r1)
/* 805AC63C  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 805AC640  EC 01 00 2A */	fadds f0, f1, f0
/* 805AC644  D0 01 02 34 */	stfs f0, 0x234(r1)
/* 805AC648  38 7F 08 98 */	addi r3, r31, 0x898
/* 805AC64C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805AC650  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805AC654  4B CC 40 ED */	bl cLib_chaseF__FPfff
/* 805AC658  38 7F 08 3C */	addi r3, r31, 0x83c
/* 805AC65C  38 81 02 30 */	addi r4, r1, 0x230
/* 805AC660  C0 3F 08 98 */	lfs f1, 0x898(r31)
/* 805AC664  4B CC 41 49 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 805AC668  38 61 01 58 */	addi r3, r1, 0x158
/* 805AC66C  38 9F 08 48 */	addi r4, r31, 0x848
/* 805AC670  48 00 18 7D */	bl __ct__4cXyzFRC4cXyz
/* 805AC674  38 61 01 4C */	addi r3, r1, 0x14c
/* 805AC678  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AC67C  48 00 18 71 */	bl __ct__4cXyzFRC4cXyz
/* 805AC680  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AC684  38 81 01 58 */	addi r4, r1, 0x158
/* 805AC688  38 A1 01 4C */	addi r5, r1, 0x14c
/* 805AC68C  4B BD 44 1D */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805AC690  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC694  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AC698  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 805AC69C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AC6A0  40 82 00 30 */	bne lbl_805AC6D0
/* 805AC6A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805AC6A8  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805AC6AC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805AC6B0  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AC6B4  38 81 00 3C */	addi r4, r1, 0x3c
/* 805AC6B8  38 A0 00 00 */	li r5, 0
/* 805AC6BC  38 C0 FF FF */	li r6, -1
/* 805AC6C0  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AC6C4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805AC6C8  7D 89 03 A6 */	mtctr r12
/* 805AC6CC  4E 80 04 21 */	bctrl 
lbl_805AC6D0:
/* 805AC6D0  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC6D4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AC6D8  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 805AC6DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AC6E0  4C 41 13 82 */	cror 2, 1, 2
/* 805AC6E4  40 82 10 B0 */	bne lbl_805AD794
/* 805AC6E8  3C 60 80 5B */	lis r3, d_a_L7op_demo_dr__stringBase0@ha /* 0x805AE0AC@ha */
/* 805AC6EC  38 63 E0 AC */	addi r3, r3, d_a_L7op_demo_dr__stringBase0@l /* 0x805AE0AC@l */
/* 805AC6F0  38 80 00 30 */	li r4, 0x30
/* 805AC6F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AC6F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AC6FC  3C A5 00 02 */	addis r5, r5, 2
/* 805AC700  38 C0 00 80 */	li r6, 0x80
/* 805AC704  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AC708  4B A8 FB E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AC70C  7C 64 1B 78 */	mr r4, r3
/* 805AC710  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC714  38 A0 00 00 */	li r5, 0
/* 805AC718  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 805AC71C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805AC720  C0 7E 00 08 */	lfs f3, 8(r30)
/* 805AC724  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 805AC728  4B A6 47 49 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805AC72C  38 00 00 30 */	li r0, 0x30
/* 805AC730  90 1F 08 90 */	stw r0, 0x890(r31)
/* 805AC734  38 00 00 00 */	li r0, 0
/* 805AC738  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805AC73C  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805AC740  38 03 00 01 */	addi r0, r3, 1
/* 805AC744  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805AC748  48 00 10 4C */	b lbl_805AD794
lbl_805AC74C:
/* 805AC74C  2C 00 00 06 */	cmpwi r0, 6
/* 805AC750  40 82 02 14 */	bne lbl_805AC964
/* 805AC754  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AC758  38 80 00 00 */	li r4, 0
/* 805AC75C  38 A0 00 20 */	li r5, 0x20
/* 805AC760  4B CC 44 31 */	bl cLib_chaseAngleS__FPsss
/* 805AC764  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805AC768  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AC76C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805AC770  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805AC774  7C 23 04 2E */	lfsx f1, r3, r0
/* 805AC778  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 805AC77C  FC 00 00 50 */	fneg f0, f0
/* 805AC780  EC 00 00 72 */	fmuls f0, f0, f1
/* 805AC784  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805AC788  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 805AC78C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AC790  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AC794  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805AC798  4B AC A3 15 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805AC79C  7F E3 FB 78 */	mr r3, r31
/* 805AC7A0  38 80 00 00 */	li r4, 0
/* 805AC7A4  4B A6 DF 29 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805AC7A8  38 7F 08 48 */	addi r3, r31, 0x848
/* 805AC7AC  38 9F 08 30 */	addi r4, r31, 0x830
/* 805AC7B0  48 00 17 7D */	bl __as__4cXyzFRC4cXyz
/* 805AC7B4  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 805AC7B8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805AC7BC  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 805AC7C0  4B CC 3F 81 */	bl cLib_chaseF__FPfff
/* 805AC7C4  38 7F 08 9C */	addi r3, r31, 0x89c
/* 805AC7C8  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805AC7CC  C0 5F 08 A0 */	lfs f2, 0x8a0(r31)
/* 805AC7D0  4B CC 3F 71 */	bl cLib_chaseF__FPfff
/* 805AC7D4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805AC7D8  4B A6 05 8D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805AC7DC  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AC7E0  4B A6 07 65 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805AC7E4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805AC7E8  FC 40 08 90 */	fmr f2, f1
/* 805AC7EC  C0 7F 08 9C */	lfs f3, 0x89c(r31)
/* 805AC7F0  4B A6 05 AD */	bl transM__14mDoMtx_stack_cFfff
/* 805AC7F4  38 61 02 24 */	addi r3, r1, 0x224
/* 805AC7F8  48 00 17 11 */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 805AC7FC  C0 21 02 28 */	lfs f1, 0x228(r1)
/* 805AC800  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 805AC804  EC 01 00 2A */	fadds f0, f1, f0
/* 805AC808  D0 01 02 28 */	stfs f0, 0x228(r1)
/* 805AC80C  38 7F 08 98 */	addi r3, r31, 0x898
/* 805AC810  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805AC814  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805AC818  4B CC 3F 29 */	bl cLib_chaseF__FPfff
/* 805AC81C  38 7F 08 3C */	addi r3, r31, 0x83c
/* 805AC820  38 81 02 24 */	addi r4, r1, 0x224
/* 805AC824  C0 3F 08 98 */	lfs f1, 0x898(r31)
/* 805AC828  4B CC 3F 85 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 805AC82C  38 61 01 40 */	addi r3, r1, 0x140
/* 805AC830  38 9F 08 48 */	addi r4, r31, 0x848
/* 805AC834  48 00 16 B9 */	bl __ct__4cXyzFRC4cXyz
/* 805AC838  38 61 01 34 */	addi r3, r1, 0x134
/* 805AC83C  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AC840  48 00 16 AD */	bl __ct__4cXyzFRC4cXyz
/* 805AC844  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AC848  38 81 01 40 */	addi r4, r1, 0x140
/* 805AC84C  38 A1 01 34 */	addi r5, r1, 0x134
/* 805AC850  4B BD 42 59 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805AC854  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 805AC858  2C 00 00 30 */	cmpwi r0, 0x30
/* 805AC85C  40 82 00 A8 */	bne lbl_805AC904
/* 805AC860  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC864  48 00 15 45 */	bl isStop__13mDoExt_morf_cFv
/* 805AC868  2C 03 00 00 */	cmpwi r3, 0
/* 805AC86C  41 82 00 54 */	beq lbl_805AC8C0
/* 805AC870  3C 60 80 5B */	lis r3, d_a_L7op_demo_dr__stringBase0@ha /* 0x805AE0AC@ha */
/* 805AC874  38 63 E0 AC */	addi r3, r3, d_a_L7op_demo_dr__stringBase0@l /* 0x805AE0AC@l */
/* 805AC878  38 80 00 31 */	li r4, 0x31
/* 805AC87C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AC880  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AC884  3C A5 00 02 */	addis r5, r5, 2
/* 805AC888  38 C0 00 80 */	li r6, 0x80
/* 805AC88C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AC890  4B A8 FA 5D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AC894  7C 64 1B 78 */	mr r4, r3
/* 805AC898  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC89C  38 A0 00 02 */	li r5, 2
/* 805AC8A0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 805AC8A4  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805AC8A8  C0 7E 00 08 */	lfs f3, 8(r30)
/* 805AC8AC  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 805AC8B0  4B A6 45 C1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805AC8B4  38 00 00 31 */	li r0, 0x31
/* 805AC8B8  90 1F 08 90 */	stw r0, 0x890(r31)
/* 805AC8BC  48 00 00 7C */	b lbl_805AC938
lbl_805AC8C0:
/* 805AC8C0  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC8C4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AC8C8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 805AC8CC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AC8D0  40 82 00 68 */	bne lbl_805AC938
/* 805AC8D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805AC8D8  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805AC8DC  90 01 00 38 */	stw r0, 0x38(r1)
/* 805AC8E0  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AC8E4  38 81 00 38 */	addi r4, r1, 0x38
/* 805AC8E8  38 A0 00 00 */	li r5, 0
/* 805AC8EC  38 C0 FF FF */	li r6, -1
/* 805AC8F0  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AC8F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805AC8F8  7D 89 03 A6 */	mtctr r12
/* 805AC8FC  4E 80 04 21 */	bctrl 
/* 805AC900  48 00 00 38 */	b lbl_805AC938
lbl_805AC904:
/* 805AC904  2C 00 00 31 */	cmpwi r0, 0x31
/* 805AC908  40 82 00 30 */	bne lbl_805AC938
/* 805AC90C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047B@ha */
/* 805AC910  38 03 04 7B */	addi r0, r3, 0x047B /* 0x0007047B@l */
/* 805AC914  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AC918  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AC91C  38 81 00 34 */	addi r4, r1, 0x34
/* 805AC920  38 A0 00 00 */	li r5, 0
/* 805AC924  38 C0 FF FF */	li r6, -1
/* 805AC928  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AC92C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805AC930  7D 89 03 A6 */	mtctr r12
/* 805AC934  4E 80 04 21 */	bctrl 
lbl_805AC938:
/* 805AC938  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 805AC93C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 805AC940  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AC944  4C 41 13 82 */	cror 2, 1, 2
/* 805AC948  40 82 0E 4C */	bne lbl_805AD794
/* 805AC94C  38 00 00 0A */	li r0, 0xa
/* 805AC950  98 1F 08 B5 */	stb r0, 0x8b5(r31)
/* 805AC954  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805AC958  38 03 00 01 */	addi r0, r3, 1
/* 805AC95C  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805AC960  48 00 0E 34 */	b lbl_805AD794
lbl_805AC964:
/* 805AC964  2C 00 00 07 */	cmpwi r0, 7
/* 805AC968  40 82 03 80 */	bne lbl_805ACCE8
/* 805AC96C  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 805AC970  D0 01 02 18 */	stfs f0, 0x218(r1)
/* 805AC974  D0 21 02 1C */	stfs f1, 0x21c(r1)
/* 805AC978  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 805AC97C  D0 01 02 20 */	stfs f0, 0x220(r1)
/* 805AC980  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 805AC984  2C 00 00 30 */	cmpwi r0, 0x30
/* 805AC988  40 82 00 A8 */	bne lbl_805ACA30
/* 805AC98C  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC990  48 00 14 19 */	bl isStop__13mDoExt_morf_cFv
/* 805AC994  2C 03 00 00 */	cmpwi r3, 0
/* 805AC998  41 82 00 54 */	beq lbl_805AC9EC
/* 805AC99C  3C 60 80 5B */	lis r3, d_a_L7op_demo_dr__stringBase0@ha /* 0x805AE0AC@ha */
/* 805AC9A0  38 63 E0 AC */	addi r3, r3, d_a_L7op_demo_dr__stringBase0@l /* 0x805AE0AC@l */
/* 805AC9A4  38 80 00 31 */	li r4, 0x31
/* 805AC9A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AC9AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AC9B0  3C A5 00 02 */	addis r5, r5, 2
/* 805AC9B4  38 C0 00 80 */	li r6, 0x80
/* 805AC9B8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AC9BC  4B A8 F9 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AC9C0  7C 64 1B 78 */	mr r4, r3
/* 805AC9C4  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC9C8  38 A0 00 02 */	li r5, 2
/* 805AC9CC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 805AC9D0  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805AC9D4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 805AC9D8  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 805AC9DC  4B A6 44 95 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805AC9E0  38 00 00 31 */	li r0, 0x31
/* 805AC9E4  90 1F 08 90 */	stw r0, 0x890(r31)
/* 805AC9E8  48 00 00 7C */	b lbl_805ACA64
lbl_805AC9EC:
/* 805AC9EC  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AC9F0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AC9F4  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 805AC9F8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AC9FC  40 82 00 68 */	bne lbl_805ACA64
/* 805ACA00  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805ACA04  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805ACA08  90 01 00 30 */	stw r0, 0x30(r1)
/* 805ACA0C  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805ACA10  38 81 00 30 */	addi r4, r1, 0x30
/* 805ACA14  38 A0 00 00 */	li r5, 0
/* 805ACA18  38 C0 FF FF */	li r6, -1
/* 805ACA1C  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805ACA20  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805ACA24  7D 89 03 A6 */	mtctr r12
/* 805ACA28  4E 80 04 21 */	bctrl 
/* 805ACA2C  48 00 00 38 */	b lbl_805ACA64
lbl_805ACA30:
/* 805ACA30  2C 00 00 31 */	cmpwi r0, 0x31
/* 805ACA34  40 82 00 30 */	bne lbl_805ACA64
/* 805ACA38  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047B@ha */
/* 805ACA3C  38 03 04 7B */	addi r0, r3, 0x047B /* 0x0007047B@l */
/* 805ACA40  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805ACA44  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805ACA48  38 81 00 2C */	addi r4, r1, 0x2c
/* 805ACA4C  38 A0 00 00 */	li r5, 0
/* 805ACA50  38 C0 FF FF */	li r6, -1
/* 805ACA54  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805ACA58  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805ACA5C  7D 89 03 A6 */	mtctr r12
/* 805ACA60  4E 80 04 21 */	bctrl 
lbl_805ACA64:
/* 805ACA64  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805ACA68  38 80 08 00 */	li r4, 0x800
/* 805ACA6C  38 A0 00 10 */	li r5, 0x10
/* 805ACA70  4B CC 41 21 */	bl cLib_chaseAngleS__FPsss
/* 805ACA74  38 61 02 18 */	addi r3, r1, 0x218
/* 805ACA78  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805ACA7C  7C 65 1B 78 */	mr r5, r3
/* 805ACA80  4B D9 A6 11 */	bl PSVECAdd
/* 805ACA84  38 61 02 18 */	addi r3, r1, 0x218
/* 805ACA88  7C 64 1B 78 */	mr r4, r3
/* 805ACA8C  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 805ACA90  4B D9 A6 49 */	bl PSVECScale
/* 805ACA94  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805ACA98  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805ACA9C  28 00 E0 00 */	cmplwi r0, 0xe000
/* 805ACAA0  40 81 00 20 */	ble lbl_805ACAC0
/* 805ACAA4  38 7F 04 E0 */	addi r3, r31, 0x4e0
/* 805ACAA8  38 80 20 00 */	li r4, 0x2000
/* 805ACAAC  38 A0 00 1E */	li r5, 0x1e
/* 805ACAB0  38 C0 08 00 */	li r6, 0x800
/* 805ACAB4  38 E0 00 40 */	li r7, 0x40
/* 805ACAB8  4B CC 3A 89 */	bl cLib_addCalcAngleS__FPsssss
/* 805ACABC  48 00 00 2C */	b lbl_805ACAE8
lbl_805ACAC0:
/* 805ACAC0  38 7F 04 E0 */	addi r3, r31, 0x4e0
/* 805ACAC4  38 80 00 00 */	li r4, 0
/* 805ACAC8  38 A0 00 3C */	li r5, 0x3c
/* 805ACACC  38 C0 08 00 */	li r6, 0x800
/* 805ACAD0  38 E0 00 40 */	li r7, 0x40
/* 805ACAD4  4B CC 3A 6D */	bl cLib_addCalcAngleS__FPsssss
/* 805ACAD8  38 7F 05 2C */	addi r3, r31, 0x52c
/* 805ACADC  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 805ACAE0  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805ACAE4  4B CC 3C 5D */	bl cLib_chaseF__FPfff
lbl_805ACAE8:
/* 805ACAE8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805ACAEC  38 81 02 18 */	addi r4, r1, 0x218
/* 805ACAF0  4B CC 41 15 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805ACAF4  38 03 40 00 */	addi r0, r3, 0x4000
/* 805ACAF8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805ACAFC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805ACB00  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805ACB04  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805ACB08  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805ACB0C  7C 23 04 2E */	lfsx f1, r3, r0
/* 805ACB10  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 805ACB14  FC 00 00 50 */	fneg f0, f0
/* 805ACB18  EC 00 00 72 */	fmuls f0, f0, f1
/* 805ACB1C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805ACB20  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 805ACB24  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805ACB28  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805ACB2C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805ACB30  4B AC 9F 7D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805ACB34  7F E3 FB 78 */	mr r3, r31
/* 805ACB38  38 80 00 00 */	li r4, 0
/* 805ACB3C  4B A6 DB 91 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805ACB40  38 7F 08 48 */	addi r3, r31, 0x848
/* 805ACB44  38 9F 08 30 */	addi r4, r31, 0x830
/* 805ACB48  48 00 13 E5 */	bl __as__4cXyzFRC4cXyz
/* 805ACB4C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805ACB50  4B A6 02 15 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805ACB54  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805ACB58  4B A6 03 ED */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805ACB5C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805ACB60  FC 40 08 90 */	fmr f2, f1
/* 805ACB64  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 805ACB68  4B A6 02 35 */	bl transM__14mDoMtx_stack_cFfff
/* 805ACB6C  38 61 02 0C */	addi r3, r1, 0x20c
/* 805ACB70  48 00 13 99 */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 805ACB74  C0 21 02 10 */	lfs f1, 0x210(r1)
/* 805ACB78  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 805ACB7C  EC 01 00 2A */	fadds f0, f1, f0
/* 805ACB80  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 805ACB84  38 7F 08 3C */	addi r3, r31, 0x83c
/* 805ACB88  38 81 02 0C */	addi r4, r1, 0x20c
/* 805ACB8C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 805ACB90  4B CC 3C 1D */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 805ACB94  38 61 01 28 */	addi r3, r1, 0x128
/* 805ACB98  38 9F 08 48 */	addi r4, r31, 0x848
/* 805ACB9C  48 00 13 51 */	bl __ct__4cXyzFRC4cXyz
/* 805ACBA0  38 61 01 1C */	addi r3, r1, 0x11c
/* 805ACBA4  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805ACBA8  48 00 13 45 */	bl __ct__4cXyzFRC4cXyz
/* 805ACBAC  38 7D 02 48 */	addi r3, r29, 0x248
/* 805ACBB0  38 81 01 28 */	addi r4, r1, 0x128
/* 805ACBB4  38 A1 01 1C */	addi r5, r1, 0x11c
/* 805ACBB8  4B BD 3E F1 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805ACBBC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047B@ha */
/* 805ACBC0  38 03 04 7B */	addi r0, r3, 0x047B /* 0x0007047B@l */
/* 805ACBC4  90 01 00 28 */	stw r0, 0x28(r1)
/* 805ACBC8  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805ACBCC  38 81 00 28 */	addi r4, r1, 0x28
/* 805ACBD0  38 A0 00 00 */	li r5, 0
/* 805ACBD4  38 C0 FF FF */	li r6, -1
/* 805ACBD8  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805ACBDC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805ACBE0  7D 89 03 A6 */	mtctr r12
/* 805ACBE4  4E 80 04 21 */	bctrl 
/* 805ACBE8  88 1F 08 B5 */	lbz r0, 0x8b5(r31)
/* 805ACBEC  28 00 00 00 */	cmplwi r0, 0
/* 805ACBF0  40 82 0B A4 */	bne lbl_805AD794
/* 805ACBF4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805ACBF8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805ACBFC  28 00 80 00 */	cmplwi r0, 0x8000
/* 805ACC00  40 80 0B 94 */	bge lbl_805AD794
/* 805ACC04  38 00 80 00 */	li r0, -32768
/* 805ACC08  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805ACC0C  38 00 00 01 */	li r0, 1
/* 805ACC10  98 1F 08 B4 */	stb r0, 0x8b4(r31)
/* 805ACC14  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805ACC18  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805ACC1C  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 805ACC20  D0 3F 08 48 */	stfs f1, 0x848(r31)
/* 805ACC24  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 805ACC28  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 805ACC2C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 805ACC30  D0 1F 08 50 */	stfs f0, 0x850(r31)
/* 805ACC34  D0 3F 08 3C */	stfs f1, 0x83c(r31)
/* 805ACC38  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 805ACC3C  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 805ACC40  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 805ACC44  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 805ACC48  38 61 01 10 */	addi r3, r1, 0x110
/* 805ACC4C  38 9F 08 48 */	addi r4, r31, 0x848
/* 805ACC50  48 00 12 9D */	bl __ct__4cXyzFRC4cXyz
/* 805ACC54  38 61 01 04 */	addi r3, r1, 0x104
/* 805ACC58  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805ACC5C  48 00 12 91 */	bl __ct__4cXyzFRC4cXyz
/* 805ACC60  38 7D 02 48 */	addi r3, r29, 0x248
/* 805ACC64  38 81 01 10 */	addi r4, r1, 0x110
/* 805ACC68  38 A1 01 04 */	addi r5, r1, 0x104
/* 805ACC6C  4B BD 3E 3D */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805ACC70  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805ACC74  D0 01 02 00 */	stfs f0, 0x200(r1)
/* 805ACC78  D0 01 02 04 */	stfs f0, 0x204(r1)
/* 805ACC7C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805ACC80  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 805ACC84  7F 83 E3 78 */	mr r3, r28
/* 805ACC88  38 80 00 19 */	li r4, 0x19
/* 805ACC8C  38 A0 00 00 */	li r5, 0
/* 805ACC90  38 C0 00 00 */	li r6, 0
/* 805ACC94  38 E0 00 00 */	li r7, 0
/* 805ACC98  48 00 10 FD */	bl changeDemoMode__9daPy_py_cFUliis
/* 805ACC9C  7F 83 E3 78 */	mr r3, r28
/* 805ACCA0  38 81 02 00 */	addi r4, r1, 0x200
/* 805ACCA4  38 A0 80 00 */	li r5, -32768
/* 805ACCA8  38 C0 00 00 */	li r6, 0
/* 805ACCAC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805ACCB0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805ACCB4  7D 89 03 A6 */	mtctr r12
/* 805ACCB8  4E 80 04 21 */	bctrl 
/* 805ACCBC  7F 83 E3 78 */	mr r3, r28
/* 805ACCC0  38 81 02 00 */	addi r4, r1, 0x200
/* 805ACCC4  48 00 10 B5 */	bl changeDemoPos0__9daPy_py_cFPC4cXyz
/* 805ACCC8  38 00 80 00 */	li r0, -32768
/* 805ACCCC  B0 1C 06 06 */	sth r0, 0x606(r28)
/* 805ACCD0  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 805ACCD4  D0 1F 08 98 */	stfs f0, 0x898(r31)
/* 805ACCD8  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805ACCDC  38 03 00 01 */	addi r0, r3, 1
/* 805ACCE0  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805ACCE4  48 00 0A B0 */	b lbl_805AD794
lbl_805ACCE8:
/* 805ACCE8  2C 00 00 08 */	cmpwi r0, 8
/* 805ACCEC  40 82 01 88 */	bne lbl_805ACE74
/* 805ACCF0  D0 21 01 F4 */	stfs f1, 0x1f4(r1)
/* 805ACCF4  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 805ACCF8  D0 01 01 F8 */	stfs f0, 0x1f8(r1)
/* 805ACCFC  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 805ACD00  D0 01 01 FC */	stfs f0, 0x1fc(r1)
/* 805ACD04  C0 5F 08 44 */	lfs f2, 0x844(r31)
/* 805ACD08  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805ACD0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805ACD10  40 81 00 18 */	ble lbl_805ACD28
/* 805ACD14  38 7F 08 98 */	addi r3, r31, 0x898
/* 805ACD18  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805ACD1C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 805ACD20  4B CC 3A 21 */	bl cLib_chaseF__FPfff
/* 805ACD24  48 00 00 10 */	b lbl_805ACD34
lbl_805ACD28:
/* 805ACD28  38 7F 08 98 */	addi r3, r31, 0x898
/* 805ACD2C  C0 5E 00 C0 */	lfs f2, 0xc0(r30)
/* 805ACD30  4B CC 3A 11 */	bl cLib_chaseF__FPfff
lbl_805ACD34:
/* 805ACD34  38 7F 08 3C */	addi r3, r31, 0x83c
/* 805ACD38  38 81 01 F4 */	addi r4, r1, 0x1f4
/* 805ACD3C  C0 3F 08 98 */	lfs f1, 0x898(r31)
/* 805ACD40  4B CC 3A 6D */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 805ACD44  C0 3F 08 50 */	lfs f1, 0x850(r31)
/* 805ACD48  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 805ACD4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805ACD50  D0 1F 08 50 */	stfs f0, 0x850(r31)
/* 805ACD54  38 61 00 F8 */	addi r3, r1, 0xf8
/* 805ACD58  38 9F 08 48 */	addi r4, r31, 0x848
/* 805ACD5C  48 00 11 91 */	bl __ct__4cXyzFRC4cXyz
/* 805ACD60  38 61 00 EC */	addi r3, r1, 0xec
/* 805ACD64  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805ACD68  48 00 11 85 */	bl __ct__4cXyzFRC4cXyz
/* 805ACD6C  38 7D 02 48 */	addi r3, r29, 0x248
/* 805ACD70  38 81 00 F8 */	addi r4, r1, 0xf8
/* 805ACD74  38 A1 00 EC */	addi r5, r1, 0xec
/* 805ACD78  4B BD 3D 31 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805ACD7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047B@ha */
/* 805ACD80  38 03 04 7B */	addi r0, r3, 0x047B /* 0x0007047B@l */
/* 805ACD84  90 01 00 24 */	stw r0, 0x24(r1)
/* 805ACD88  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805ACD8C  38 81 00 24 */	addi r4, r1, 0x24
/* 805ACD90  38 A0 00 00 */	li r5, 0
/* 805ACD94  38 C0 FF FF */	li r6, -1
/* 805ACD98  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805ACD9C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805ACDA0  7D 89 03 A6 */	mtctr r12
/* 805ACDA4  4E 80 04 21 */	bctrl 
/* 805ACDA8  C0 3F 08 44 */	lfs f1, 0x844(r31)
/* 805ACDAC  C0 01 01 FC */	lfs f0, 0x1fc(r1)
/* 805ACDB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805ACDB4  4C 40 13 82 */	cror 2, 0, 2
/* 805ACDB8  40 82 09 DC */	bne lbl_805AD794
/* 805ACDBC  C0 1F 08 98 */	lfs f0, 0x898(r31)
/* 805ACDC0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805ACDC4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805ACDC8  40 82 09 CC */	bne lbl_805AD794
/* 805ACDCC  38 00 00 00 */	li r0, 0
/* 805ACDD0  98 1F 08 B4 */	stb r0, 0x8b4(r31)
/* 805ACDD4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805ACDD8  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805ACDDC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805ACDE0  98 1F 08 B5 */	stb r0, 0x8b5(r31)
/* 805ACDE4  D0 21 01 E8 */	stfs f1, 0x1e8(r1)
/* 805ACDE8  D0 21 01 EC */	stfs f1, 0x1ec(r1)
/* 805ACDEC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805ACDF0  D0 01 01 F0 */	stfs f0, 0x1f0(r1)
/* 805ACDF4  7F 83 E3 78 */	mr r3, r28
/* 805ACDF8  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 805ACDFC  38 A0 80 00 */	li r5, -32768
/* 805ACE00  38 C0 00 00 */	li r6, 0
/* 805ACE04  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805ACE08  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805ACE0C  7D 89 03 A6 */	mtctr r12
/* 805ACE10  4E 80 04 21 */	bctrl 
/* 805ACE14  7F 83 E3 78 */	mr r3, r28
/* 805ACE18  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 805ACE1C  48 00 0F 5D */	bl changeDemoPos0__9daPy_py_cFPC4cXyz
/* 805ACE20  38 60 80 00 */	li r3, -32768
/* 805ACE24  B0 7C 06 06 */	sth r3, 0x606(r28)
/* 805ACE28  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805ACE2C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805ACE30  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 805ACE34  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805ACE38  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 805ACE3C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805ACE40  38 00 06 70 */	li r0, 0x670
/* 805ACE44  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 805ACE48  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 805ACE4C  38 00 00 00 */	li r0, 0
/* 805ACE50  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 805ACE54  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 805ACE58  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805ACE5C  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 805ACE60  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805ACE64  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805ACE68  38 03 00 01 */	addi r0, r3, 1
/* 805ACE6C  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805ACE70  48 00 09 24 */	b lbl_805AD794
lbl_805ACE74:
/* 805ACE74  2C 00 00 09 */	cmpwi r0, 9
/* 805ACE78  40 82 01 AC */	bne lbl_805AD024
/* 805ACE7C  88 1F 08 B5 */	lbz r0, 0x8b5(r31)
/* 805ACE80  28 00 00 00 */	cmplwi r0, 0
/* 805ACE84  40 82 00 A8 */	bne lbl_805ACF2C
/* 805ACE88  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805ACE8C  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805ACE90  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805ACE94  38 7F 04 E0 */	addi r3, r31, 0x4e0
/* 805ACE98  38 80 00 00 */	li r4, 0
/* 805ACE9C  38 A0 00 20 */	li r5, 0x20
/* 805ACEA0  38 C0 08 00 */	li r6, 0x800
/* 805ACEA4  38 E0 00 40 */	li r7, 0x40
/* 805ACEA8  4B CC 36 99 */	bl cLib_addCalcAngleS__FPsssss
/* 805ACEAC  38 7F 08 98 */	addi r3, r31, 0x898
/* 805ACEB0  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 805ACEB4  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 805ACEB8  4B CC 38 89 */	bl cLib_chaseF__FPfff
/* 805ACEBC  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805ACEC0  38 80 02 00 */	li r4, 0x200
/* 805ACEC4  C0 1F 08 98 */	lfs f0, 0x898(r31)
/* 805ACEC8  FC 00 00 1E */	fctiwz f0, f0
/* 805ACECC  D8 01 02 60 */	stfd f0, 0x260(r1)
/* 805ACED0  80 A1 02 64 */	lwz r5, 0x264(r1)
/* 805ACED4  4B CC 3C BD */	bl cLib_chaseAngleS__FPsss
/* 805ACED8  38 7F 05 2C */	addi r3, r31, 0x52c
/* 805ACEDC  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 805ACEE0  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805ACEE4  4B CC 38 5D */	bl cLib_chaseF__FPfff
/* 805ACEE8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805ACEEC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805ACEF0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805ACEF4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805ACEF8  7C 23 04 2E */	lfsx f1, r3, r0
/* 805ACEFC  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 805ACF00  FC 00 00 50 */	fneg f0, f0
/* 805ACF04  EC 00 00 72 */	fmuls f0, f0, f1
/* 805ACF08  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805ACF0C  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 805ACF10  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805ACF14  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805ACF18  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805ACF1C  4B AC 9B 91 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805ACF20  7F E3 FB 78 */	mr r3, r31
/* 805ACF24  38 80 00 00 */	li r4, 0
/* 805ACF28  4B A6 D7 A5 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
lbl_805ACF2C:
/* 805ACF2C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805ACF30  D0 3F 08 48 */	stfs f1, 0x848(r31)
/* 805ACF34  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 805ACF38  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 805ACF3C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 805ACF40  D0 1F 08 50 */	stfs f0, 0x850(r31)
/* 805ACF44  D0 3F 08 3C */	stfs f1, 0x83c(r31)
/* 805ACF48  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 805ACF4C  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 805ACF50  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 805ACF54  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 805ACF58  38 61 00 E0 */	addi r3, r1, 0xe0
/* 805ACF5C  38 9F 08 48 */	addi r4, r31, 0x848
/* 805ACF60  48 00 0F 8D */	bl __ct__4cXyzFRC4cXyz
/* 805ACF64  38 61 00 D4 */	addi r3, r1, 0xd4
/* 805ACF68  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805ACF6C  48 00 0F 81 */	bl __ct__4cXyzFRC4cXyz
/* 805ACF70  38 7D 02 48 */	addi r3, r29, 0x248
/* 805ACF74  38 81 00 E0 */	addi r4, r1, 0xe0
/* 805ACF78  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 805ACF7C  4B BD 3B 2D */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805ACF80  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047B@ha */
/* 805ACF84  38 03 04 7B */	addi r0, r3, 0x047B /* 0x0007047B@l */
/* 805ACF88  90 01 00 20 */	stw r0, 0x20(r1)
/* 805ACF8C  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805ACF90  38 81 00 20 */	addi r4, r1, 0x20
/* 805ACF94  38 A0 00 00 */	li r5, 0
/* 805ACF98  38 C0 FF FF */	li r6, -1
/* 805ACF9C  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805ACFA0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805ACFA4  7D 89 03 A6 */	mtctr r12
/* 805ACFA8  4E 80 04 21 */	bctrl 
/* 805ACFAC  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 805ACFB0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805ACFB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805ACFB8  40 81 07 DC */	ble lbl_805AD794
/* 805ACFBC  3C 60 80 5B */	lis r3, d_a_L7op_demo_dr__stringBase0@ha /* 0x805AE0AC@ha */
/* 805ACFC0  38 63 E0 AC */	addi r3, r3, d_a_L7op_demo_dr__stringBase0@l /* 0x805AE0AC@l */
/* 805ACFC4  38 80 00 45 */	li r4, 0x45
/* 805ACFC8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805ACFCC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805ACFD0  3C A5 00 02 */	addis r5, r5, 2
/* 805ACFD4  38 C0 00 80 */	li r6, 0x80
/* 805ACFD8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805ACFDC  4B A8 F3 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805ACFE0  7C 64 1B 78 */	mr r4, r3
/* 805ACFE4  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805ACFE8  38 A0 00 00 */	li r5, 0
/* 805ACFEC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 805ACFF0  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805ACFF4  C0 7E 00 08 */	lfs f3, 8(r30)
/* 805ACFF8  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 805ACFFC  4B A6 3E 75 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805AD000  38 00 00 45 */	li r0, 0x45
/* 805AD004  90 1F 08 90 */	stw r0, 0x890(r31)
/* 805AD008  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805AD00C  D0 1F 08 98 */	stfs f0, 0x898(r31)
/* 805AD010  D0 1F 08 9C */	stfs f0, 0x89c(r31)
/* 805AD014  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805AD018  38 03 00 01 */	addi r0, r3, 1
/* 805AD01C  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805AD020  48 00 07 74 */	b lbl_805AD794
lbl_805AD024:
/* 805AD024  2C 00 00 0A */	cmpwi r0, 0xa
/* 805AD028  40 82 01 A4 */	bne lbl_805AD1CC
/* 805AD02C  38 7F 08 98 */	addi r3, r31, 0x898
/* 805AD030  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 805AD034  C0 5E 00 E8 */	lfs f2, 0xe8(r30)
/* 805AD038  4B CC 37 09 */	bl cLib_chaseF__FPfff
/* 805AD03C  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AD040  38 80 C0 00 */	li r4, -16384
/* 805AD044  C0 1F 08 98 */	lfs f0, 0x898(r31)
/* 805AD048  FC 00 00 1E */	fctiwz f0, f0
/* 805AD04C  D8 01 02 60 */	stfd f0, 0x260(r1)
/* 805AD050  80 A1 02 64 */	lwz r5, 0x264(r1)
/* 805AD054  4B CC 3B 3D */	bl cLib_chaseAngleS__FPsss
/* 805AD058  38 7F 08 9C */	addi r3, r31, 0x89c
/* 805AD05C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 805AD060  C0 5E 00 EC */	lfs f2, 0xec(r30)
/* 805AD064  4B CC 36 DD */	bl cLib_chaseF__FPfff
/* 805AD068  38 7F 05 2C */	addi r3, r31, 0x52c
/* 805AD06C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805AD070  C0 5F 08 9C */	lfs f2, 0x89c(r31)
/* 805AD074  4B CC 36 CD */	bl cLib_chaseF__FPfff
/* 805AD078  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805AD07C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AD080  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805AD084  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805AD088  7C 23 04 2E */	lfsx f1, r3, r0
/* 805AD08C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 805AD090  FC 00 00 50 */	fneg f0, f0
/* 805AD094  EC 00 00 72 */	fmuls f0, f0, f1
/* 805AD098  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805AD09C  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 805AD0A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AD0A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AD0A8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805AD0AC  4B AC 9A 01 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805AD0B0  7F E3 FB 78 */	mr r3, r31
/* 805AD0B4  38 80 00 00 */	li r4, 0
/* 805AD0B8  4B A6 D6 15 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805AD0BC  C0 3F 08 38 */	lfs f1, 0x838(r31)
/* 805AD0C0  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 805AD0C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AD0C8  40 81 00 20 */	ble lbl_805AD0E8
/* 805AD0CC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805AD0D0  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 805AD0D4  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 805AD0D8  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 805AD0DC  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 805AD0E0  D0 1F 08 50 */	stfs f0, 0x850(r31)
/* 805AD0E4  48 00 00 14 */	b lbl_805AD0F8
lbl_805AD0E8:
/* 805AD0E8  38 7F 08 48 */	addi r3, r31, 0x848
/* 805AD0EC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805AD0F0  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805AD0F4  4B CC 36 B9 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
lbl_805AD0F8:
/* 805AD0F8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805AD0FC  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 805AD100  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 805AD104  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 805AD108  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 805AD10C  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 805AD110  38 61 00 C8 */	addi r3, r1, 0xc8
/* 805AD114  38 9F 08 48 */	addi r4, r31, 0x848
/* 805AD118  48 00 0D D5 */	bl __ct__4cXyzFRC4cXyz
/* 805AD11C  38 61 00 BC */	addi r3, r1, 0xbc
/* 805AD120  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AD124  48 00 0D C9 */	bl __ct__4cXyzFRC4cXyz
/* 805AD128  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AD12C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 805AD130  38 A1 00 BC */	addi r5, r1, 0xbc
/* 805AD134  4B BD 39 75 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805AD138  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047B@ha */
/* 805AD13C  38 03 04 7B */	addi r0, r3, 0x047B /* 0x0007047B@l */
/* 805AD140  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805AD144  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AD148  38 81 00 1C */	addi r4, r1, 0x1c
/* 805AD14C  38 A0 00 00 */	li r5, 0
/* 805AD150  38 C0 FF FF */	li r6, -1
/* 805AD154  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AD158  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805AD15C  7D 89 03 A6 */	mtctr r12
/* 805AD160  4E 80 04 21 */	bctrl 
/* 805AD164  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805AD168  2C 00 E0 00 */	cmpwi r0, -8192
/* 805AD16C  40 80 06 28 */	bge lbl_805AD794
/* 805AD170  3C 60 80 5B */	lis r3, d_a_L7op_demo_dr__stringBase0@ha /* 0x805AE0AC@ha */
/* 805AD174  38 63 E0 AC */	addi r3, r3, d_a_L7op_demo_dr__stringBase0@l /* 0x805AE0AC@l */
/* 805AD178  38 80 00 42 */	li r4, 0x42
/* 805AD17C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AD180  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AD184  3C A5 00 02 */	addis r5, r5, 2
/* 805AD188  38 C0 00 80 */	li r6, 0x80
/* 805AD18C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AD190  4B A8 F1 5D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AD194  7C 64 1B 78 */	mr r4, r3
/* 805AD198  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD19C  38 A0 00 00 */	li r5, 0
/* 805AD1A0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 805AD1A4  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805AD1A8  C0 7E 00 08 */	lfs f3, 8(r30)
/* 805AD1AC  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 805AD1B0  4B A6 3C C1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805AD1B4  38 00 00 42 */	li r0, 0x42
/* 805AD1B8  90 1F 08 90 */	stw r0, 0x890(r31)
/* 805AD1BC  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805AD1C0  38 03 00 01 */	addi r0, r3, 1
/* 805AD1C4  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805AD1C8  48 00 05 CC */	b lbl_805AD794
lbl_805AD1CC:
/* 805AD1CC  2C 00 00 0B */	cmpwi r0, 0xb
/* 805AD1D0  40 82 01 E8 */	bne lbl_805AD3B8
/* 805AD1D4  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 805AD1D8  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 805AD1DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AD1E0  40 80 00 20 */	bge lbl_805AD200
/* 805AD1E4  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AD1E8  38 80 00 00 */	li r4, 0
/* 805AD1EC  38 A0 00 20 */	li r5, 0x20
/* 805AD1F0  38 C0 08 00 */	li r6, 0x800
/* 805AD1F4  38 E0 02 00 */	li r7, 0x200
/* 805AD1F8  4B CC 33 49 */	bl cLib_addCalcAngleS__FPsssss
/* 805AD1FC  48 00 00 30 */	b lbl_805AD22C
lbl_805AD200:
/* 805AD200  38 7F 08 98 */	addi r3, r31, 0x898
/* 805AD204  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 805AD208  C0 5E 00 E8 */	lfs f2, 0xe8(r30)
/* 805AD20C  4B CC 35 35 */	bl cLib_chaseF__FPfff
/* 805AD210  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805AD214  38 80 C0 00 */	li r4, -16384
/* 805AD218  C0 1F 08 98 */	lfs f0, 0x898(r31)
/* 805AD21C  FC 00 00 1E */	fctiwz f0, f0
/* 805AD220  D8 01 02 60 */	stfd f0, 0x260(r1)
/* 805AD224  80 A1 02 64 */	lwz r5, 0x264(r1)
/* 805AD228  4B CC 39 69 */	bl cLib_chaseAngleS__FPsss
lbl_805AD22C:
/* 805AD22C  38 7F 08 9C */	addi r3, r31, 0x89c
/* 805AD230  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 805AD234  C0 5E 00 EC */	lfs f2, 0xec(r30)
/* 805AD238  4B CC 35 09 */	bl cLib_chaseF__FPfff
/* 805AD23C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 805AD240  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805AD244  C0 5F 08 9C */	lfs f2, 0x89c(r31)
/* 805AD248  4B CC 34 F9 */	bl cLib_chaseF__FPfff
/* 805AD24C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805AD250  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805AD254  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805AD258  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805AD25C  7C 23 04 2E */	lfsx f1, r3, r0
/* 805AD260  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 805AD264  FC 00 00 50 */	fneg f0, f0
/* 805AD268  EC 00 00 72 */	fmuls f0, f0, f1
/* 805AD26C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805AD270  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 805AD274  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AD278  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AD27C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805AD280  4B AC 98 2D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805AD284  AB 9F 04 DE */	lha r28, 0x4de(r31)
/* 805AD288  38 00 80 00 */	li r0, -32768
/* 805AD28C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805AD290  7F E3 FB 78 */	mr r3, r31
/* 805AD294  38 80 00 00 */	li r4, 0
/* 805AD298  4B A6 D4 35 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 805AD29C  B3 9F 04 DE */	sth r28, 0x4de(r31)
/* 805AD2A0  38 7F 08 48 */	addi r3, r31, 0x848
/* 805AD2A4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805AD2A8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805AD2AC  4B CC 35 01 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 805AD2B0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805AD2B4  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 805AD2B8  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 805AD2BC  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 805AD2C0  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 805AD2C4  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 805AD2C8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805AD2CC  38 9F 08 48 */	addi r4, r31, 0x848
/* 805AD2D0  48 00 0C 1D */	bl __ct__4cXyzFRC4cXyz
/* 805AD2D4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 805AD2D8  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AD2DC  48 00 0C 11 */	bl __ct__4cXyzFRC4cXyz
/* 805AD2E0  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AD2E4  38 81 00 B0 */	addi r4, r1, 0xb0
/* 805AD2E8  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 805AD2EC  4B BD 37 BD */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805AD2F0  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD2F4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AD2F8  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 805AD2FC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD300  41 82 00 10 */	beq lbl_805AD310
/* 805AD304  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 805AD308  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD30C  40 82 00 30 */	bne lbl_805AD33C
lbl_805AD310:
/* 805AD310  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805AD314  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805AD318  90 01 00 18 */	stw r0, 0x18(r1)
/* 805AD31C  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AD320  38 81 00 18 */	addi r4, r1, 0x18
/* 805AD324  38 A0 00 00 */	li r5, 0
/* 805AD328  38 C0 FF FF */	li r6, -1
/* 805AD32C  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AD330  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805AD334  7D 89 03 A6 */	mtctr r12
/* 805AD338  4E 80 04 21 */	bctrl 
lbl_805AD33C:
/* 805AD33C  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD340  48 00 0A 69 */	bl isStop__13mDoExt_morf_cFv
/* 805AD344  2C 03 00 00 */	cmpwi r3, 0
/* 805AD348  41 82 04 4C */	beq lbl_805AD794
/* 805AD34C  3C 60 80 5B */	lis r3, d_a_L7op_demo_dr__stringBase0@ha /* 0x805AE0AC@ha */
/* 805AD350  38 63 E0 AC */	addi r3, r3, d_a_L7op_demo_dr__stringBase0@l /* 0x805AE0AC@l */
/* 805AD354  38 80 00 39 */	li r4, 0x39
/* 805AD358  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AD35C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AD360  3C A5 00 02 */	addis r5, r5, 2
/* 805AD364  38 C0 00 80 */	li r6, 0x80
/* 805AD368  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AD36C  4B A8 EF 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AD370  7C 64 1B 78 */	mr r4, r3
/* 805AD374  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD378  38 A0 00 00 */	li r5, 0
/* 805AD37C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805AD380  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805AD384  FC 60 08 90 */	fmr f3, f1
/* 805AD388  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 805AD38C  4B A6 3A E5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805AD390  38 60 04 85 */	li r3, 0x485
/* 805AD394  4B A7 2C 31 */	bl fopMsgM_messageSetDemo__FUl
/* 805AD398  38 00 00 39 */	li r0, 0x39
/* 805AD39C  90 1F 08 90 */	stw r0, 0x890(r31)
/* 805AD3A0  38 00 00 00 */	li r0, 0
/* 805AD3A4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805AD3A8  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805AD3AC  38 03 00 01 */	addi r0, r3, 1
/* 805AD3B0  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805AD3B4  48 00 03 E0 */	b lbl_805AD794
lbl_805AD3B8:
/* 805AD3B8  2C 00 00 0C */	cmpwi r0, 0xc
/* 805AD3BC  40 82 01 C8 */	bne lbl_805AD584
/* 805AD3C0  38 7F 08 48 */	addi r3, r31, 0x848
/* 805AD3C4  38 9F 08 30 */	addi r4, r31, 0x830
/* 805AD3C8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805AD3CC  4B CC 33 E1 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 805AD3D0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805AD3D4  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 805AD3D8  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 805AD3DC  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 805AD3E0  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 805AD3E4  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 805AD3E8  38 61 00 98 */	addi r3, r1, 0x98
/* 805AD3EC  38 9F 08 48 */	addi r4, r31, 0x848
/* 805AD3F0  48 00 0A FD */	bl __ct__4cXyzFRC4cXyz
/* 805AD3F4  38 61 00 8C */	addi r3, r1, 0x8c
/* 805AD3F8  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AD3FC  48 00 0A F1 */	bl __ct__4cXyzFRC4cXyz
/* 805AD400  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AD404  38 81 00 98 */	addi r4, r1, 0x98
/* 805AD408  38 A1 00 8C */	addi r5, r1, 0x8c
/* 805AD40C  4B BD 36 9D */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805AD410  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD414  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AD418  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 805AD41C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD420  41 82 00 28 */	beq lbl_805AD448
/* 805AD424  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 805AD428  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD42C  41 82 00 1C */	beq lbl_805AD448
/* 805AD430  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 805AD434  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD438  41 82 00 10 */	beq lbl_805AD448
/* 805AD43C  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 805AD440  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD444  40 82 00 34 */	bne lbl_805AD478
lbl_805AD448:
/* 805AD448  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805AD44C  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805AD450  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AD454  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AD458  38 81 00 14 */	addi r4, r1, 0x14
/* 805AD45C  38 A0 00 00 */	li r5, 0
/* 805AD460  38 C0 FF FF */	li r6, -1
/* 805AD464  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AD468  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805AD46C  7D 89 03 A6 */	mtctr r12
/* 805AD470  4E 80 04 21 */	bctrl 
/* 805AD474  48 00 00 9C */	b lbl_805AD510
lbl_805AD478:
/* 805AD478  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 805AD47C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD480  40 82 00 30 */	bne lbl_805AD4B0
/* 805AD484  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070487@ha */
/* 805AD488  38 03 04 87 */	addi r0, r3, 0x0487 /* 0x00070487@l */
/* 805AD48C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AD490  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AD494  38 81 00 10 */	addi r4, r1, 0x10
/* 805AD498  38 A0 FF FF */	li r5, -1
/* 805AD49C  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AD4A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805AD4A4  7D 89 03 A6 */	mtctr r12
/* 805AD4A8  4E 80 04 21 */	bctrl 
/* 805AD4AC  48 00 00 64 */	b lbl_805AD510
lbl_805AD4B0:
/* 805AD4B0  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 805AD4B4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD4B8  40 82 00 38 */	bne lbl_805AD4F0
/* 805AD4BC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805AD4C0  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 805AD4C4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805AD4C8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805AD4CC  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 805AD4D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AD4D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AD4D8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805AD4DC  38 80 00 04 */	li r4, 4
/* 805AD4E0  38 A0 00 1F */	li r5, 0x1f
/* 805AD4E4  38 C1 00 80 */	addi r6, r1, 0x80
/* 805AD4E8  4B AC 26 29 */	bl StartQuake__12dVibration_cFii4cXyz
/* 805AD4EC  48 00 00 24 */	b lbl_805AD510
lbl_805AD4F0:
/* 805AD4F0  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 805AD4F4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD4F8  40 82 00 18 */	bne lbl_805AD510
/* 805AD4FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AD500  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AD504  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805AD508  38 80 00 1F */	li r4, 0x1f
/* 805AD50C  4B AC 28 89 */	bl StopQuake__12dVibration_cFi
lbl_805AD510:
/* 805AD510  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD514  48 00 08 95 */	bl isStop__13mDoExt_morf_cFv
/* 805AD518  2C 03 00 00 */	cmpwi r3, 0
/* 805AD51C  41 82 02 78 */	beq lbl_805AD794
/* 805AD520  3C 60 80 5B */	lis r3, d_a_L7op_demo_dr__stringBase0@ha /* 0x805AE0AC@ha */
/* 805AD524  38 63 E0 AC */	addi r3, r3, d_a_L7op_demo_dr__stringBase0@l /* 0x805AE0AC@l */
/* 805AD528  38 80 00 35 */	li r4, 0x35
/* 805AD52C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AD530  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AD534  3C A5 00 02 */	addis r5, r5, 2
/* 805AD538  38 C0 00 80 */	li r6, 0x80
/* 805AD53C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AD540  4B A8 ED AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AD544  7C 64 1B 78 */	mr r4, r3
/* 805AD548  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD54C  38 A0 00 02 */	li r5, 2
/* 805AD550  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 805AD554  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805AD558  C0 7E 00 08 */	lfs f3, 8(r30)
/* 805AD55C  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 805AD560  4B A6 39 11 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805AD564  38 00 00 35 */	li r0, 0x35
/* 805AD568  90 1F 08 90 */	stw r0, 0x890(r31)
/* 805AD56C  38 00 00 78 */	li r0, 0x78
/* 805AD570  98 1F 08 B5 */	stb r0, 0x8b5(r31)
/* 805AD574  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805AD578  38 03 00 01 */	addi r0, r3, 1
/* 805AD57C  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805AD580  48 00 02 14 */	b lbl_805AD794
lbl_805AD584:
/* 805AD584  2C 00 00 0D */	cmpwi r0, 0xd
/* 805AD588  40 82 01 34 */	bne lbl_805AD6BC
/* 805AD58C  38 7F 08 48 */	addi r3, r31, 0x848
/* 805AD590  38 9F 08 30 */	addi r4, r31, 0x830
/* 805AD594  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 805AD598  4B CC 32 15 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 805AD59C  38 61 01 DC */	addi r3, r1, 0x1dc
/* 805AD5A0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805AD5A4  48 00 09 89 */	bl __as__4cXyzFRC4cXyz
/* 805AD5A8  C0 01 01 E0 */	lfs f0, 0x1e0(r1)
/* 805AD5AC  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 805AD5B0  EC 00 08 2A */	fadds f0, f0, f1
/* 805AD5B4  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
/* 805AD5B8  C0 01 01 E4 */	lfs f0, 0x1e4(r1)
/* 805AD5BC  EC 00 08 2A */	fadds f0, f0, f1
/* 805AD5C0  D0 01 01 E4 */	stfs f0, 0x1e4(r1)
/* 805AD5C4  38 7F 08 3C */	addi r3, r31, 0x83c
/* 805AD5C8  38 81 01 DC */	addi r4, r1, 0x1dc
/* 805AD5CC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805AD5D0  4B CC 31 DD */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 805AD5D4  38 61 00 74 */	addi r3, r1, 0x74
/* 805AD5D8  38 9F 08 48 */	addi r4, r31, 0x848
/* 805AD5DC  48 00 09 11 */	bl __ct__4cXyzFRC4cXyz
/* 805AD5E0  38 61 00 68 */	addi r3, r1, 0x68
/* 805AD5E4  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AD5E8  48 00 09 05 */	bl __ct__4cXyzFRC4cXyz
/* 805AD5EC  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AD5F0  38 81 00 74 */	addi r4, r1, 0x74
/* 805AD5F4  38 A1 00 68 */	addi r5, r1, 0x68
/* 805AD5F8  4B BD 34 B1 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 805AD5FC  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD600  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AD604  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 805AD608  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD60C  40 82 00 30 */	bne lbl_805AD63C
/* 805AD610  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805AD614  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805AD618  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AD61C  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AD620  38 81 00 0C */	addi r4, r1, 0xc
/* 805AD624  38 A0 00 00 */	li r5, 0
/* 805AD628  38 C0 FF FF */	li r6, -1
/* 805AD62C  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AD630  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805AD634  7D 89 03 A6 */	mtctr r12
/* 805AD638  4E 80 04 21 */	bctrl 
lbl_805AD63C:
/* 805AD63C  88 1F 08 B5 */	lbz r0, 0x8b5(r31)
/* 805AD640  28 00 00 00 */	cmplwi r0, 0
/* 805AD644  40 82 01 50 */	bne lbl_805AD794
/* 805AD648  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD64C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AD650  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 805AD654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AD658  4C 41 13 82 */	cror 2, 1, 2
/* 805AD65C  40 82 01 38 */	bne lbl_805AD794
/* 805AD660  3C 60 80 5B */	lis r3, d_a_L7op_demo_dr__stringBase0@ha /* 0x805AE0AC@ha */
/* 805AD664  38 63 E0 AC */	addi r3, r3, d_a_L7op_demo_dr__stringBase0@l /* 0x805AE0AC@l */
/* 805AD668  38 80 00 34 */	li r4, 0x34
/* 805AD66C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AD670  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AD674  3C A5 00 02 */	addis r5, r5, 2
/* 805AD678  38 C0 00 80 */	li r6, 0x80
/* 805AD67C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805AD680  4B A8 EC 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AD684  7C 64 1B 78 */	mr r4, r3
/* 805AD688  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD68C  38 A0 00 00 */	li r5, 0
/* 805AD690  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 805AD694  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 805AD698  C0 7E 00 08 */	lfs f3, 8(r30)
/* 805AD69C  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 805AD6A0  4B A6 37 D1 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 805AD6A4  38 00 00 34 */	li r0, 0x34
/* 805AD6A8  90 1F 08 90 */	stw r0, 0x890(r31)
/* 805AD6AC  80 7F 08 8C */	lwz r3, 0x88c(r31)
/* 805AD6B0  38 03 00 01 */	addi r0, r3, 1
/* 805AD6B4  90 1F 08 8C */	stw r0, 0x88c(r31)
/* 805AD6B8  48 00 00 DC */	b lbl_805AD794
lbl_805AD6BC:
/* 805AD6BC  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD6C0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805AD6C4  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 805AD6C8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD6CC  41 82 00 10 */	beq lbl_805AD6DC
/* 805AD6D0  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 805AD6D4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD6D8  40 82 00 34 */	bne lbl_805AD70C
lbl_805AD6DC:
/* 805AD6DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805AD6E0  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805AD6E4  90 01 00 08 */	stw r0, 8(r1)
/* 805AD6E8  38 7F 07 8C */	addi r3, r31, 0x78c
/* 805AD6EC  38 81 00 08 */	addi r4, r1, 8
/* 805AD6F0  38 A0 00 00 */	li r5, 0
/* 805AD6F4  38 C0 FF FF */	li r6, -1
/* 805AD6F8  81 9F 07 8C */	lwz r12, 0x78c(r31)
/* 805AD6FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805AD700  7D 89 03 A6 */	mtctr r12
/* 805AD704  4E 80 04 21 */	bctrl 
/* 805AD708  48 00 00 18 */	b lbl_805AD720
lbl_805AD70C:
/* 805AD70C  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 805AD710  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805AD714  40 82 00 0C */	bne lbl_805AD720
/* 805AD718  38 00 00 01 */	li r0, 1
/* 805AD71C  98 1F 04 99 */	stb r0, 0x499(r31)
lbl_805AD720:
/* 805AD720  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD724  48 00 06 85 */	bl isStop__13mDoExt_morf_cFv
/* 805AD728  2C 03 00 00 */	cmpwi r3, 0
/* 805AD72C  41 82 00 68 */	beq lbl_805AD794
/* 805AD730  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805AD734  D0 1F 08 3C */	stfs f0, 0x83c(r31)
/* 805AD738  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 805AD73C  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 805AD740  38 61 00 5C */	addi r3, r1, 0x5c
/* 805AD744  38 9F 08 48 */	addi r4, r31, 0x848
/* 805AD748  48 00 07 A5 */	bl __ct__4cXyzFRC4cXyz
/* 805AD74C  38 61 00 50 */	addi r3, r1, 0x50
/* 805AD750  38 9F 08 3C */	addi r4, r31, 0x83c
/* 805AD754  48 00 07 99 */	bl __ct__4cXyzFRC4cXyz
/* 805AD758  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AD75C  38 81 00 5C */	addi r4, r1, 0x5c
/* 805AD760  38 A1 00 50 */	addi r5, r1, 0x50
/* 805AD764  4B BD 34 B5 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 805AD768  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AD76C  4B BB 3D 41 */	bl Start__9dCamera_cFv
/* 805AD770  38 7D 02 48 */	addi r3, r29, 0x248
/* 805AD774  38 80 00 00 */	li r4, 0
/* 805AD778  4B BB 58 95 */	bl SetTrimSize__9dCamera_cFl
/* 805AD77C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805AD780  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805AD784  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805AD788  4B A9 4C E1 */	bl reset__14dEvt_control_cFv
/* 805AD78C  7F E3 FB 78 */	mr r3, r31
/* 805AD790  4B A6 C4 ED */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_805AD794:
/* 805AD794  E3 E1 02 88 */	psq_l f31, 648(r1), 0, 0 /* qr0 */
/* 805AD798  CB E1 02 80 */	lfd f31, 0x280(r1)
/* 805AD79C  39 61 02 80 */	addi r11, r1, 0x280
/* 805AD7A0  4B DB 4A 85 */	bl _restgpr_28
/* 805AD7A4  80 01 02 94 */	lwz r0, 0x294(r1)
/* 805AD7A8  7C 08 03 A6 */	mtlr r0
/* 805AD7AC  38 21 02 90 */	addi r1, r1, 0x290
/* 805AD7B0  4E 80 00 20 */	blr 
