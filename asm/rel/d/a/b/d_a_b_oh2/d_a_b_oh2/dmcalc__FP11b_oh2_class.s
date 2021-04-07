lbl_8061DE4C:
/* 8061DE4C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8061DE50  7C 08 02 A6 */	mflr r0
/* 8061DE54  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8061DE58  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8061DE5C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8061DE60  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8061DE64  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 8061DE68  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 8061DE6C  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 8061DE70  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 8061DE74  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 8061DE78  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 8061DE7C  F3 61 00 88 */	psq_st f27, 136(r1), 0, 0 /* qr0 */
/* 8061DE80  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 8061DE84  F3 41 00 78 */	psq_st f26, 120(r1), 0, 0 /* qr0 */
/* 8061DE88  DB 21 00 60 */	stfd f25, 0x60(r1)
/* 8061DE8C  F3 21 00 68 */	psq_st f25, 104(r1), 0, 0 /* qr0 */
/* 8061DE90  DB 01 00 50 */	stfd f24, 0x50(r1)
/* 8061DE94  F3 01 00 58 */	psq_st f24, 88(r1), 0, 0 /* qr0 */
/* 8061DE98  39 61 00 50 */	addi r11, r1, 0x50
/* 8061DE9C  4B D4 43 2D */	bl _savegpr_24
/* 8061DEA0  7C 7C 1B 78 */	mr r28, r3
/* 8061DEA4  3C 60 80 62 */	lis r3, lit_3678@ha /* 0x8061EA38@ha */
/* 8061DEA8  3B E3 EA 38 */	addi r31, r3, lit_3678@l /* 0x8061EA38@l */
/* 8061DEAC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8061DEB0  D0 1C 06 60 */	stfs f0, 0x660(r28)
/* 8061DEB4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8061DEB8  D0 1C 06 64 */	stfs f0, 0x664(r28)
/* 8061DEBC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8061DEC0  D0 1C 06 68 */	stfs f0, 0x668(r28)
/* 8061DEC4  3B DC 06 6C */	addi r30, r28, 0x66c
/* 8061DEC8  3B BC 07 DA */	addi r29, r28, 0x7da
/* 8061DECC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8061DED0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8061DED4  80 63 00 00 */	lwz r3, 0(r3)
/* 8061DED8  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 8061DEDC  4B 9E E5 01 */	bl mDoMtx_YrotS__FPA4_fs
/* 8061DEE0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8061DEE4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8061DEE8  80 63 00 00 */	lwz r3, 0(r3)
/* 8061DEEC  A8 9C 04 E4 */	lha r4, 0x4e4(r28)
/* 8061DEF0  4B 9E E4 AD */	bl mDoMtx_XrotM__FPA4_fs
/* 8061DEF4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8061DEF8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8061DEFC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8061DF00  A8 1C 05 D8 */	lha r0, 0x5d8(r28)
/* 8061DF04  2C 00 00 00 */	cmpwi r0, 0
/* 8061DF08  41 82 00 10 */	beq lbl_8061DF18
/* 8061DF0C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8061DF10  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8061DF14  48 00 00 38 */	b lbl_8061DF4C
lbl_8061DF18:
/* 8061DF18  3C 60 80 62 */	lis r3, boss@ha /* 0x8061EAE8@ha */
/* 8061DF1C  38 63 EA E8 */	addi r3, r3, boss@l /* 0x8061EAE8@l */
/* 8061DF20  80 63 00 00 */	lwz r3, 0(r3)
/* 8061DF24  A8 03 47 52 */	lha r0, 0x4752(r3)
/* 8061DF28  2C 00 00 65 */	cmpwi r0, 0x65
/* 8061DF2C  40 82 00 10 */	bne lbl_8061DF3C
/* 8061DF30  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8061DF34  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8061DF38  48 00 00 14 */	b lbl_8061DF4C
lbl_8061DF3C:
/* 8061DF3C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8061DF40  C0 03 5D 04 */	lfs f0, 0x5d04(r3)
/* 8061DF44  EC 01 00 32 */	fmuls f0, f1, f0
/* 8061DF48  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_8061DF4C:
/* 8061DF4C  38 61 00 20 */	addi r3, r1, 0x20
/* 8061DF50  38 81 00 08 */	addi r4, r1, 8
/* 8061DF54  4B C5 2F 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8061DF58  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8061DF5C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8061DF60  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8061DF64  C0 1C 05 E4 */	lfs f0, 0x5e4(r28)
/* 8061DF68  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8061DF6C  C3 FF 00 00 */	lfs f31, 0(r31)
/* 8061DF70  FF C0 08 90 */	fmr f30, f1
/* 8061DF74  C3 BF 00 14 */	lfs f29, 0x14(r31)
/* 8061DF78  3C 60 80 62 */	lis r3, boss@ha /* 0x8061EAE8@ha */
/* 8061DF7C  38 63 EA E8 */	addi r3, r3, boss@l /* 0x8061EAE8@l */
/* 8061DF80  80 63 00 00 */	lwz r3, 0(r3)
/* 8061DF84  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 8061DF88  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8061DF8C  40 80 00 14 */	bge lbl_8061DFA0
/* 8061DF90  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8061DF94  C0 03 47 A0 */	lfs f0, 0x47a0(r3)
/* 8061DF98  EF A1 00 2A */	fadds f29, f1, f0
/* 8061DF9C  C3 DF 00 18 */	lfs f30, 0x18(r31)
lbl_8061DFA0:
/* 8061DFA0  3B 40 00 01 */	li r26, 1
/* 8061DFA4  C3 7F 00 1C */	lfs f27, 0x1c(r31)
/* 8061DFA8  C3 9F 00 04 */	lfs f28, 4(r31)
/* 8061DFAC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8061DFB0  3B 63 07 68 */	addi r27, r3, calc_mtx@l /* 0x80450768@l */
lbl_8061DFB4:
/* 8061DFB4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8061DFB8  C0 1E FF F4 */	lfs f0, -0xc(r30)
/* 8061DFBC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8061DFC0  C0 01 00 08 */	lfs f0, 8(r1)
/* 8061DFC4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8061DFC8  EF 41 00 2A */	fadds f26, f1, f0
/* 8061DFCC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8061DFD0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8061DFD4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8061DFD8  EC 01 00 2A */	fadds f0, f1, f0
/* 8061DFDC  EC 3E 00 2A */	fadds f1, f30, f0
/* 8061DFE0  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8061DFE4  40 80 00 08 */	bge lbl_8061DFEC
/* 8061DFE8  FC 20 E8 90 */	fmr f1, f29
lbl_8061DFEC:
/* 8061DFEC  C0 1E FF F8 */	lfs f0, -8(r30)
/* 8061DFF0  EF 21 00 28 */	fsubs f25, f1, f0
/* 8061DFF4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8061DFF8  C0 1E FF FC */	lfs f0, -4(r30)
/* 8061DFFC  EC 21 00 28 */	fsubs f1, f1, f0
/* 8061E000  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8061E004  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8061E008  EF 01 00 2A */	fadds f24, f1, f0
/* 8061E00C  EF FF 06 F2 */	fmuls f31, f31, f27
/* 8061E010  FC 20 D0 90 */	fmr f1, f26
/* 8061E014  FC 40 C0 90 */	fmr f2, f24
/* 8061E018  4B C4 96 5D */	bl cM_atan2s__Fff
/* 8061E01C  7C 78 07 34 */	extsh r24, r3
/* 8061E020  EC 3A 06 B2 */	fmuls f1, f26, f26
/* 8061E024  EC 18 06 32 */	fmuls f0, f24, f24
/* 8061E028  EC 41 00 2A */	fadds f2, f1, f0
/* 8061E02C  FC 02 E0 40 */	fcmpo cr0, f2, f28
/* 8061E030  40 81 00 0C */	ble lbl_8061E03C
/* 8061E034  FC 00 10 34 */	frsqrte f0, f2
/* 8061E038  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8061E03C:
/* 8061E03C  FC 20 C8 90 */	fmr f1, f25
/* 8061E040  4B C4 96 35 */	bl cM_atan2s__Fff
/* 8061E044  7C 03 00 D0 */	neg r0, r3
/* 8061E048  7C 19 07 34 */	extsh r25, r0
/* 8061E04C  80 7B 00 00 */	lwz r3, 0(r27)
/* 8061E050  7F 04 C3 78 */	mr r4, r24
/* 8061E054  4B 9E E3 89 */	bl mDoMtx_YrotS__FPA4_fs
/* 8061E058  80 7B 00 00 */	lwz r3, 0(r27)
/* 8061E05C  7F 24 CB 78 */	mr r4, r25
/* 8061E060  4B 9E E3 3D */	bl mDoMtx_XrotM__FPA4_fs
/* 8061E064  38 61 00 20 */	addi r3, r1, 0x20
/* 8061E068  38 81 00 14 */	addi r4, r1, 0x14
/* 8061E06C  4B C5 2E 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8061E070  C0 3E FF F4 */	lfs f1, -0xc(r30)
/* 8061E074  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8061E078  EC 01 00 2A */	fadds f0, f1, f0
/* 8061E07C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8061E080  C0 3E FF F8 */	lfs f1, -8(r30)
/* 8061E084  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8061E088  EC 01 00 2A */	fadds f0, f1, f0
/* 8061E08C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8061E090  C0 3E FF FC */	lfs f1, -4(r30)
/* 8061E094  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8061E098  EC 01 00 2A */	fadds f0, f1, f0
/* 8061E09C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8061E0A0  B3 3D FF FA */	sth r25, -6(r29)
/* 8061E0A4  B3 1D FF FC */	sth r24, -4(r29)
/* 8061E0A8  3B 5A 00 01 */	addi r26, r26, 1
/* 8061E0AC  2C 1A 00 1F */	cmpwi r26, 0x1f
/* 8061E0B0  3B DE 00 0C */	addi r30, r30, 0xc
/* 8061E0B4  3B BD 00 06 */	addi r29, r29, 6
/* 8061E0B8  41 80 FE FC */	blt lbl_8061DFB4
/* 8061E0BC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8061E0C0  D0 1C 05 E0 */	stfs f0, 0x5e0(r28)
/* 8061E0C4  A8 7C 05 DC */	lha r3, 0x5dc(r28)
/* 8061E0C8  38 03 07 D0 */	addi r0, r3, 0x7d0
/* 8061E0CC  B0 1C 05 DC */	sth r0, 0x5dc(r28)
/* 8061E0D0  38 C0 00 00 */	li r6, 0
/* 8061E0D4  38 60 00 00 */	li r3, 0
/* 8061E0D8  3C 80 80 62 */	lis r4, boss@ha /* 0x8061EAE8@ha */
/* 8061E0DC  38 A4 EA E8 */	addi r5, r4, boss@l /* 0x8061EAE8@l */
/* 8061E0E0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8061E0E4  38 00 00 1E */	li r0, 0x1e
/* 8061E0E8  7C 09 03 A6 */	mtctr r0
lbl_8061E0EC:
/* 8061E0EC  80 85 00 00 */	lwz r4, 0(r5)
/* 8061E0F0  C0 04 05 2C */	lfs f0, 0x52c(r4)
/* 8061E0F4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8061E0F8  40 81 00 38 */	ble lbl_8061E130
/* 8061E0FC  A8 1C 05 DC */	lha r0, 0x5dc(r28)
/* 8061E100  7C 00 32 14 */	add r0, r0, r6
/* 8061E104  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8061E108  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8061E10C  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8061E110  7C 04 04 2E */	lfsx f0, r4, r0
/* 8061E114  C0 7C 05 E0 */	lfs f3, 0x5e0(r28)
/* 8061E118  EC 22 18 2A */	fadds f1, f2, f3
/* 8061E11C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8061E120  EC 01 00 2A */	fadds f0, f1, f0
/* 8061E124  38 03 05 E8 */	addi r0, r3, 0x5e8
/* 8061E128  7C 1C 05 2E */	stfsx f0, r28, r0
/* 8061E12C  48 00 00 0C */	b lbl_8061E138
lbl_8061E130:
/* 8061E130  38 03 05 E8 */	addi r0, r3, 0x5e8
/* 8061E134  7C 5C 05 2E */	stfsx f2, r28, r0
lbl_8061E138:
/* 8061E138  38 63 00 04 */	addi r3, r3, 4
/* 8061E13C  38 C6 D8 F0 */	addi r6, r6, -10000
/* 8061E140  42 00 FF AC */	bdnz lbl_8061E0EC
/* 8061E144  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 8061E148  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8061E14C  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 8061E150  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8061E154  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 8061E158  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 8061E15C  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 8061E160  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 8061E164  E3 61 00 88 */	psq_l f27, 136(r1), 0, 0 /* qr0 */
/* 8061E168  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 8061E16C  E3 41 00 78 */	psq_l f26, 120(r1), 0, 0 /* qr0 */
/* 8061E170  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 8061E174  E3 21 00 68 */	psq_l f25, 104(r1), 0, 0 /* qr0 */
/* 8061E178  CB 21 00 60 */	lfd f25, 0x60(r1)
/* 8061E17C  E3 01 00 58 */	psq_l f24, 88(r1), 0, 0 /* qr0 */
/* 8061E180  CB 01 00 50 */	lfd f24, 0x50(r1)
/* 8061E184  39 61 00 50 */	addi r11, r1, 0x50
/* 8061E188  4B D4 40 8D */	bl _restgpr_24
/* 8061E18C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8061E190  7C 08 03 A6 */	mtlr r0
/* 8061E194  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8061E198  4E 80 00 20 */	blr 
