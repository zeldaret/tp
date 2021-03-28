lbl_804BDE04:
/* 804BDE04  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804BDE08  7C 08 02 A6 */	mflr r0
/* 804BDE0C  90 01 00 94 */	stw r0, 0x94(r1)
/* 804BDE10  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804BDE14  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804BDE18  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804BDE1C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804BDE20  39 61 00 70 */	addi r11, r1, 0x70
/* 804BDE24  4B EA 43 B8 */	b _savegpr_29
/* 804BDE28  7C 7F 1B 78 */	mr r31, r3
/* 804BDE2C  3C 60 80 4C */	lis r3, lit_3777@ha
/* 804BDE30  3B C3 64 C8 */	addi r30, r3, lit_3777@l
/* 804BDE34  80 7E 03 A8 */	lwz r3, 0x3a8(r30)
/* 804BDE38  80 1E 03 AC */	lwz r0, 0x3ac(r30)
/* 804BDE3C  90 61 00 20 */	stw r3, 0x20(r1)
/* 804BDE40  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BDE44  80 1E 03 B0 */	lwz r0, 0x3b0(r30)
/* 804BDE48  90 01 00 28 */	stw r0, 0x28(r1)
/* 804BDE4C  38 9E 00 98 */	addi r4, r30, 0x98
/* 804BDE50  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 804BDE54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804BDE58  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 804BDE5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804BDE60  80 7E 03 B4 */	lwz r3, 0x3b4(r30)
/* 804BDE64  80 1E 03 B8 */	lwz r0, 0x3b8(r30)
/* 804BDE68  90 61 00 14 */	stw r3, 0x14(r1)
/* 804BDE6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804BDE70  80 1E 03 BC */	lwz r0, 0x3bc(r30)
/* 804BDE74  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BDE78  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 804BDE7C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804BDE80  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804BDE84  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804BDE88  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 804BDE8C  28 03 00 00 */	cmplwi r3, 0
/* 804BDE90  41 82 00 10 */	beq lbl_804BDEA0
/* 804BDE94  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804BDE98  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804BDE9C  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_804BDEA0:
/* 804BDEA0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804BDEA4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804BDEA8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804BDEAC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804BDEB0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804BDEB4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804BDEB8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804BDEBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BDEC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BDEC4  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 804BDEC8  80 DF 08 C0 */	lwz r6, 0x8c0(r31)
/* 804BDECC  28 06 02 00 */	cmplwi r6, 0x200
/* 804BDED0  40 82 00 90 */	bne lbl_804BDF60
/* 804BDED4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BDED8  38 80 00 01 */	li r4, 1
/* 804BDEDC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804BDEE0  4B B5 33 70 */	b getTransform__16mDoExt_McaMorfSOFUsP16J3DTransformInfo
/* 804BDEE4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804BDEE8  4B B4 EE 7C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 804BDEEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BDEF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BDEF4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 804BDEF8  4B B4 E5 3C */	b mDoMtx_YrotM__FPA4_fs
/* 804BDEFC  80 7E 03 C0 */	lwz r3, 0x3c0(r30)
/* 804BDF00  80 1E 03 C4 */	lwz r0, 0x3c4(r30)
/* 804BDF04  90 61 00 08 */	stw r3, 8(r1)
/* 804BDF08  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BDF0C  80 1E 03 C8 */	lwz r0, 0x3c8(r30)
/* 804BDF10  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BDF14  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804BDF18  D0 01 00 08 */	stfs f0, 8(r1)
/* 804BDF1C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804BDF20  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804BDF24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BDF28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BDF2C  38 81 00 08 */	addi r4, r1, 8
/* 804BDF30  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804BDF34  4B E8 8E 38 */	b PSMTXMultVec
/* 804BDF38  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804BDF3C  4B B4 EE 28 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 804BDF40  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 804BDF44  4B B4 F0 00 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804BDF48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BDF4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BDF50  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 804BDF54  38 84 00 24 */	addi r4, r4, 0x24
/* 804BDF58  4B E8 85 58 */	b PSMTXCopy
/* 804BDF5C  48 00 04 EC */	b lbl_804BE448
lbl_804BDF60:
/* 804BDF60  80 7F 09 D0 */	lwz r3, 0x9d0(r31)
/* 804BDF64  28 03 00 00 */	cmplwi r3, 0
/* 804BDF68  41 82 00 90 */	beq lbl_804BDFF8
/* 804BDF6C  80 63 05 70 */	lwz r3, 0x570(r3)
/* 804BDF70  80 63 00 04 */	lwz r3, 4(r3)
/* 804BDF74  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BDF78  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BDF7C  C0 03 00 CC */	lfs f0, 0xcc(r3)
/* 804BDF80  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804BDF84  C0 03 00 DC */	lfs f0, 0xdc(r3)
/* 804BDF88  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804BDF8C  C0 03 00 EC */	lfs f0, 0xec(r3)
/* 804BDF90  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804BDF94  80 7F 09 D0 */	lwz r3, 0x9d0(r31)
/* 804BDF98  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 804BDF9C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 804BDFA0  80 7F 09 D0 */	lwz r3, 0x9d0(r31)
/* 804BDFA4  80 63 05 70 */	lwz r3, 0x570(r3)
/* 804BDFA8  80 63 00 04 */	lwz r3, 4(r3)
/* 804BDFAC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BDFB0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BDFB4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 804BDFB8  38 9F 04 E4 */	addi r4, r31, 0x4e4
/* 804BDFBC  4B B4 EC 44 */	b mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 804BDFC0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804BDFC4  4B B4 ED A0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 804BDFC8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 804BDFCC  4B B4 EF 78 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804BDFD0  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 804BDFD4  C0 5E 03 CC */	lfs f2, 0x3cc(r30)
/* 804BDFD8  C0 7E 03 D0 */	lfs f3, 0x3d0(r30)
/* 804BDFDC  4B B4 ED C0 */	b transM__14mDoMtx_stack_cFfff
/* 804BDFE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BDFE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BDFE8  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 804BDFEC  38 84 00 24 */	addi r4, r4, 0x24
/* 804BDFF0  4B E8 84 C0 */	b PSMTXCopy
/* 804BDFF4  48 00 04 54 */	b lbl_804BE448
lbl_804BDFF8:
/* 804BDFF8  80 BF 08 90 */	lwz r5, 0x890(r31)
/* 804BDFFC  54 A4 05 29 */	rlwinm. r4, r5, 0, 0x14, 0x14
/* 804BE000  40 82 02 40 */	bne lbl_804BE240
/* 804BE004  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 804BE008  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804BE00C  41 82 00 30 */	beq lbl_804BE03C
/* 804BE010  38 00 00 00 */	li r0, 0
/* 804BE014  88 7F 08 4E */	lbz r3, 0x84e(r31)
/* 804BE018  28 03 00 03 */	cmplwi r3, 3
/* 804BE01C  41 82 00 14 */	beq lbl_804BE030
/* 804BE020  28 03 00 04 */	cmplwi r3, 4
/* 804BE024  41 82 00 0C */	beq lbl_804BE030
/* 804BE028  28 03 00 02 */	cmplwi r3, 2
/* 804BE02C  40 82 00 08 */	bne lbl_804BE034
lbl_804BE030:
/* 804BE030  38 00 00 01 */	li r0, 1
lbl_804BE034:
/* 804BE034  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804BE038  41 82 02 08 */	beq lbl_804BE240
lbl_804BE03C:
/* 804BE03C  88 9F 08 4E */	lbz r4, 0x84e(r31)
/* 804BE040  28 04 00 04 */	cmplwi r4, 4
/* 804BE044  41 82 01 CC */	beq lbl_804BE210
/* 804BE048  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 804BE04C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804BE050  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804BE054  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804BE058  7F E3 04 2E */	lfsx f31, r3, r0
/* 804BE05C  7C 63 02 14 */	add r3, r3, r0
/* 804BE060  C3 C3 00 04 */	lfs f30, 4(r3)
/* 804BE064  28 04 00 02 */	cmplwi r4, 2
/* 804BE068  40 82 00 28 */	bne lbl_804BE090
/* 804BE06C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804BE070  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804BE074  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804BE078  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804BE07C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804BE080  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804BE084  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 804BE088  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 804BE08C  48 00 00 A8 */	b lbl_804BE134
lbl_804BE090:
/* 804BE090  54 A0 03 19 */	rlwinm. r0, r5, 0, 0xc, 0xc
/* 804BE094  41 82 00 5C */	beq lbl_804BE0F0
/* 804BE098  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 804BE09C  C0 7E 03 D4 */	lfs f3, 0x3d4(r30)
/* 804BE0A0  EC 03 07 B2 */	fmuls f0, f3, f30
/* 804BE0A4  EC 21 00 2A */	fadds f1, f1, f0
/* 804BE0A8  C0 5E 03 D8 */	lfs f2, 0x3d8(r30)
/* 804BE0AC  EC 02 07 F2 */	fmuls f0, f2, f31
/* 804BE0B0  EC A1 00 28 */	fsubs f5, f1, f0
/* 804BE0B4  C0 9D 04 D4 */	lfs f4, 0x4d4(r29)
/* 804BE0B8  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 804BE0BC  EC 03 07 F2 */	fmuls f0, f3, f31
/* 804BE0C0  EC 21 00 2A */	fadds f1, f1, f0
/* 804BE0C4  EC 02 07 B2 */	fmuls f0, f2, f30
/* 804BE0C8  EC 01 00 2A */	fadds f0, f1, f0
/* 804BE0CC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804BE0D0  D0 9F 04 D4 */	stfs f4, 0x4d4(r31)
/* 804BE0D4  D0 BF 04 D8 */	stfs f5, 0x4d8(r31)
/* 804BE0D8  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 804BE0DC  38 03 DC 72 */	addi r0, r3, -9102
/* 804BE0E0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 804BE0E4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804BE0E8  B0 1F 08 5A */	sth r0, 0x85a(r31)
/* 804BE0EC  48 00 00 48 */	b lbl_804BE134
lbl_804BE0F0:
/* 804BE0F0  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 804BE0F4  C0 5E 03 DC */	lfs f2, 0x3dc(r30)
/* 804BE0F8  EC 02 07 B2 */	fmuls f0, f2, f30
/* 804BE0FC  EC 81 00 2A */	fadds f4, f1, f0
/* 804BE100  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 804BE104  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 804BE108  EC 02 07 F2 */	fmuls f0, f2, f31
/* 804BE10C  EC 01 00 2A */	fadds f0, f1, f0
/* 804BE110  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804BE114  D0 7F 04 D4 */	stfs f3, 0x4d4(r31)
/* 804BE118  D0 9F 04 D8 */	stfs f4, 0x4d8(r31)
/* 804BE11C  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 804BE120  3C 63 00 01 */	addis r3, r3, 1
/* 804BE124  38 03 80 00 */	addi r0, r3, -32768
/* 804BE128  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 804BE12C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804BE130  B0 1F 08 5A */	sth r0, 0x85a(r31)
lbl_804BE134:
/* 804BE134  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 804BE138  54 60 03 19 */	rlwinm. r0, r3, 0, 0xc, 0xc
/* 804BE13C  40 82 00 30 */	bne lbl_804BE16C
/* 804BE140  54 60 00 43 */	rlwinm. r0, r3, 0, 1, 1
/* 804BE144  41 82 00 28 */	beq lbl_804BE16C
/* 804BE148  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804BE14C  C0 5E 03 E0 */	lfs f2, 0x3e0(r30)
/* 804BE150  EC 02 07 F2 */	fmuls f0, f2, f31
/* 804BE154  EC 01 00 2A */	fadds f0, f1, f0
/* 804BE158  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804BE15C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 804BE160  EC 02 07 B2 */	fmuls f0, f2, f30
/* 804BE164  EC 01 00 2A */	fadds f0, f1, f0
/* 804BE168  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_804BE16C:
/* 804BE16C  7F A3 EB 78 */	mr r3, r29
/* 804BE170  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 804BE174  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 804BE178  7D 89 03 A6 */	mtctr r12
/* 804BE17C  4E 80 04 21 */	bctrl 
/* 804BE180  28 03 00 00 */	cmplwi r3, 0
/* 804BE184  40 82 00 20 */	bne lbl_804BE1A4
/* 804BE188  7F A3 EB 78 */	mr r3, r29
/* 804BE18C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 804BE190  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 804BE194  7D 89 03 A6 */	mtctr r12
/* 804BE198  4E 80 04 21 */	bctrl 
/* 804BE19C  28 03 00 00 */	cmplwi r3, 0
/* 804BE1A0  41 82 00 18 */	beq lbl_804BE1B8
lbl_804BE1A4:
/* 804BE1A4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804BE1A8  C0 1E 03 E4 */	lfs f0, 0x3e4(r30)
/* 804BE1AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804BE1B0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804BE1B4  48 00 00 28 */	b lbl_804BE1DC
lbl_804BE1B8:
/* 804BE1B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BE1BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BE1C0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804BE1C4  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 804BE1C8  41 82 00 14 */	beq lbl_804BE1DC
/* 804BE1CC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804BE1D0  C0 1E 03 E8 */	lfs f0, 0x3e8(r30)
/* 804BE1D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804BE1D8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_804BE1DC:
/* 804BE1DC  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 804BE1E0  28 00 00 02 */	cmplwi r0, 2
/* 804BE1E4  40 82 00 2C */	bne lbl_804BE210
/* 804BE1E8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804BE1EC  C0 1F 08 DC */	lfs f0, 0x8dc(r31)
/* 804BE1F0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804BE1F4  EC 01 00 2A */	fadds f0, f1, f0
/* 804BE1F8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804BE1FC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 804BE200  C0 1F 08 DC */	lfs f0, 0x8dc(r31)
/* 804BE204  EC 00 07 B2 */	fmuls f0, f0, f30
/* 804BE208  EC 01 00 2A */	fadds f0, f1, f0
/* 804BE20C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_804BE210:
/* 804BE210  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804BE214  4B B4 EB 50 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 804BE218  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BE21C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BE220  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 804BE224  4B B4 E2 10 */	b mDoMtx_YrotM__FPA4_fs
/* 804BE228  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BE22C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BE230  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 804BE234  38 84 00 24 */	addi r4, r4, 0x24
/* 804BE238  4B E8 82 78 */	b PSMTXCopy
/* 804BE23C  48 00 02 0C */	b lbl_804BE448
lbl_804BE240:
/* 804BE240  28 04 00 00 */	cmplwi r4, 0
/* 804BE244  40 82 00 E4 */	bne lbl_804BE328
/* 804BE248  28 06 00 09 */	cmplwi r6, 9
/* 804BE24C  41 82 00 DC */	beq lbl_804BE328
/* 804BE250  80 7D 06 50 */	lwz r3, 0x650(r29)
/* 804BE254  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BE258  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BE25C  38 63 04 B0 */	addi r3, r3, 0x4b0
/* 804BE260  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 804BE264  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 804BE268  4B E8 82 48 */	b PSMTXCopy
/* 804BE26C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BE270  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BE274  38 80 C0 00 */	li r4, -16384
/* 804BE278  38 A0 C0 00 */	li r5, -16384
/* 804BE27C  38 C0 00 00 */	li r6, 0
/* 804BE280  4B B4 E0 20 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 804BE284  C0 3E 03 EC */	lfs f1, 0x3ec(r30)
/* 804BE288  C0 5E 03 F0 */	lfs f2, 0x3f0(r30)
/* 804BE28C  C0 7E 03 F4 */	lfs f3, 0x3f4(r30)
/* 804BE290  4B B4 EB 0C */	b transM__14mDoMtx_stack_cFfff
/* 804BE294  38 7E 01 1C */	addi r3, r30, 0x11c
/* 804BE298  A0 63 00 B4 */	lhz r3, 0xb4(r3)
/* 804BE29C  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804BE2A0  7C 03 00 40 */	cmplw r3, r0
/* 804BE2A4  40 82 00 34 */	bne lbl_804BE2D8
/* 804BE2A8  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BE2AC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804BE2B0  40 82 00 28 */	bne lbl_804BE2D8
/* 804BE2B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BE2B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BE2BC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804BE2C0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804BE2C4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804BE2C8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804BE2CC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 804BE2D0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804BE2D4  48 00 00 18 */	b lbl_804BE2EC
lbl_804BE2D8:
/* 804BE2D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BE2DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BE2E0  38 81 00 20 */	addi r4, r1, 0x20
/* 804BE2E4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804BE2E8  4B E8 8A 84 */	b PSMTXMultVec
lbl_804BE2EC:
/* 804BE2EC  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 804BE2F0  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 804BE2F4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 804BE2F8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 804BE2FC  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 804BE300  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 804BE304  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804BE308  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BE30C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BE310  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804BE314  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804BE318  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804BE31C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804BE320  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 804BE324  48 00 00 B8 */	b lbl_804BE3DC
lbl_804BE328:
/* 804BE328  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804BE32C  4B B4 EA 38 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 804BE330  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BE334  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BE338  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 804BE33C  4B B4 E0 F8 */	b mDoMtx_YrotM__FPA4_fs
/* 804BE340  38 7E 01 1C */	addi r3, r30, 0x11c
/* 804BE344  A0 63 00 F0 */	lhz r3, 0xf0(r3)
/* 804BE348  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804BE34C  7C 03 00 40 */	cmplw r3, r0
/* 804BE350  40 82 00 8C */	bne lbl_804BE3DC
/* 804BE354  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804BE358  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 804BE35C  41 82 00 80 */	beq lbl_804BE3DC
/* 804BE360  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BE364  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 804BE368  C0 3E 03 F8 */	lfs f1, 0x3f8(r30)
/* 804BE36C  C0 1E 03 FC */	lfs f0, 0x3fc(r30)
/* 804BE370  EC 02 00 28 */	fsubs f0, f2, f0
/* 804BE374  EF C1 00 32 */	fmuls f30, f1, f0
/* 804BE378  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 804BE37C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804BE380  40 80 00 0C */	bge lbl_804BE38C
/* 804BE384  FF C0 00 90 */	fmr f30, f0
/* 804BE388  48 00 00 14 */	b lbl_804BE39C
lbl_804BE38C:
/* 804BE38C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 804BE390  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804BE394  40 81 00 08 */	ble lbl_804BE39C
/* 804BE398  FF C0 00 90 */	fmr f30, f0
lbl_804BE39C:
/* 804BE39C  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 804BE3A0  C0 5E 03 E8 */	lfs f2, 0x3e8(r30)
/* 804BE3A4  FC 60 08 90 */	fmr f3, f1
/* 804BE3A8  4B B4 E9 F4 */	b transM__14mDoMtx_stack_cFfff
/* 804BE3AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BE3B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BE3B4  C0 1E 04 00 */	lfs f0, 0x400(r30)
/* 804BE3B8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 804BE3BC  FC 00 00 1E */	fctiwz f0, f0
/* 804BE3C0  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804BE3C4  80 81 00 54 */	lwz r4, 0x54(r1)
/* 804BE3C8  4B B4 DF D4 */	b mDoMtx_XrotM__FPA4_fs
/* 804BE3CC  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 804BE3D0  C0 5E 04 04 */	lfs f2, 0x404(r30)
/* 804BE3D4  FC 60 08 90 */	fmr f3, f1
/* 804BE3D8  4B B4 E9 C4 */	b transM__14mDoMtx_stack_cFfff
lbl_804BE3DC:
/* 804BE3DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BE3E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BE3E4  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 804BE3E8  38 84 00 24 */	addi r4, r4, 0x24
/* 804BE3EC  4B E8 80 C4 */	b PSMTXCopy
/* 804BE3F0  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 804BE3F4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 804BE3F8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 804BE3FC  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 804BE400  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804BE404  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804BE408  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 804BE40C  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 804BE410  38 7F 08 74 */	addi r3, r31, 0x874
/* 804BE414  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BE418  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804BE41C  41 82 00 18 */	beq lbl_804BE434
/* 804BE420  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 804BE424  7C 00 0E 70 */	srawi r0, r0, 1
/* 804BE428  7C 00 00 D0 */	neg r0, r0
/* 804BE42C  7C 04 07 34 */	extsh r4, r0
/* 804BE430  48 00 00 08 */	b lbl_804BE438
lbl_804BE434:
/* 804BE434  38 80 00 00 */	li r4, 0
lbl_804BE438:
/* 804BE438  38 A0 00 03 */	li r5, 3
/* 804BE43C  38 C0 08 00 */	li r6, 0x800
/* 804BE440  38 E0 01 00 */	li r7, 0x100
/* 804BE444  4B DB 20 FC */	b cLib_addCalcAngleS__FPsssss
lbl_804BE448:
/* 804BE448  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804BE44C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804BE450  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804BE454  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804BE458  39 61 00 70 */	addi r11, r1, 0x70
/* 804BE45C  4B EA 3D CC */	b _restgpr_29
/* 804BE460  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804BE464  7C 08 03 A6 */	mtlr r0
/* 804BE468  38 21 00 90 */	addi r1, r1, 0x90
/* 804BE46C  4E 80 00 20 */	blr 
