lbl_8051DF54:
/* 8051DF54  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8051DF58  7C 08 02 A6 */	mflr r0
/* 8051DF5C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8051DF60  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8051DF64  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8051DF68  39 61 00 80 */	addi r11, r1, 0x80
/* 8051DF6C  4B E4 42 68 */	b _savegpr_27
/* 8051DF70  7C 7B 1B 78 */	mr r27, r3
/* 8051DF74  7C 9C 23 78 */	mr r28, r4
/* 8051DF78  7D 1D 43 79 */	or. r29, r8, r8
/* 8051DF7C  7D 3F 4B 78 */	mr r31, r9
/* 8051DF80  3C 60 80 52 */	lis r3, lit_3999@ha
/* 8051DF84  3B C3 30 28 */	addi r30, r3, lit_3999@l
/* 8051DF88  40 82 00 58 */	bne lbl_8051DFE0
/* 8051DF8C  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 8051DF90  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8051DF94  EC 41 00 28 */	fsubs f2, f1, f0
/* 8051DF98  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8051DF9C  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 8051DFA0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8051DFA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8051DFA8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8051DFAC  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 8051DFB0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8051DFB4  EC 21 00 28 */	fsubs f1, f1, f0
/* 8051DFB8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8051DFBC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8051DFC0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051DFC4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8051DFC8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8051DFCC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8051DFD0  4B E2 91 68 */	b PSVECSquareMag
/* 8051DFD4  FF E0 08 90 */	fmr f31, f1
/* 8051DFD8  AB BC 04 E6 */	lha r29, 0x4e6(r28)
/* 8051DFDC  48 00 01 38 */	b lbl_8051E114
lbl_8051DFE0:
/* 8051DFE0  7F A3 EB 78 */	mr r3, r29
/* 8051DFE4  4B B6 67 B8 */	b dCcD_GetGObjInf__FP8cCcD_Obj
/* 8051DFE8  C0 43 00 84 */	lfs f2, 0x84(r3)
/* 8051DFEC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8051DFF0  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 8051DFF4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8051DFF8  C0 23 00 8C */	lfs f1, 0x8c(r3)
/* 8051DFFC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8051E000  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8051E004  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051E008  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8051E00C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8051E010  38 61 00 20 */	addi r3, r1, 0x20
/* 8051E014  4B E2 91 24 */	b PSVECSquareMag
/* 8051E018  FF E0 08 90 */	fmr f31, f1
/* 8051E01C  FC 00 0A 10 */	fabs f0, f1
/* 8051E020  FC 20 00 18 */	frsp f1, f0
/* 8051E024  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 8051E028  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 8051E02C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E030  40 80 00 BC */	bge lbl_8051E0EC
/* 8051E034  7F A3 EB 78 */	mr r3, r29
/* 8051E038  81 9D 00 3C */	lwz r12, 0x3c(r29)
/* 8051E03C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8051E040  7D 89 03 A6 */	mtctr r12
/* 8051E044  4E 80 04 21 */	bctrl 
/* 8051E048  38 9B 00 0C */	addi r4, r27, 0xc
/* 8051E04C  38 A1 00 38 */	addi r5, r1, 0x38
/* 8051E050  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 8051E054  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8051E058  7D 89 03 A6 */	mtctr r12
/* 8051E05C  4E 80 04 21 */	bctrl 
/* 8051E060  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8051E064  41 82 00 3C */	beq lbl_8051E0A0
/* 8051E068  38 61 00 38 */	addi r3, r1, 0x38
/* 8051E06C  7C 64 1B 78 */	mr r4, r3
/* 8051E070  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 8051E074  4B E2 90 64 */	b PSVECScale
/* 8051E078  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8051E07C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8051E080  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051E084  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8051E088  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8051E08C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8051E090  38 61 00 14 */	addi r3, r1, 0x14
/* 8051E094  4B E2 90 A4 */	b PSVECSquareMag
/* 8051E098  FF E0 08 90 */	fmr f31, f1
/* 8051E09C  48 00 00 50 */	b lbl_8051E0EC
lbl_8051E0A0:
/* 8051E0A0  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 8051E0A4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8051E0A8  EC 41 00 28 */	fsubs f2, f1, f0
/* 8051E0AC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8051E0B0  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 8051E0B4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8051E0B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8051E0BC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8051E0C0  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 8051E0C4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8051E0C8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8051E0CC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8051E0D0  D0 41 00 08 */	stfs f2, 8(r1)
/* 8051E0D4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051E0D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8051E0DC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8051E0E0  38 61 00 08 */	addi r3, r1, 8
/* 8051E0E4  4B E2 90 54 */	b PSVECSquareMag
/* 8051E0E8  FF E0 08 90 */	fmr f31, f1
lbl_8051E0EC:
/* 8051E0EC  FC 00 FA 10 */	fabs f0, f31
/* 8051E0F0  FC 20 00 18 */	frsp f1, f0
/* 8051E0F4  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 8051E0F8  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 8051E0FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8051E100  41 80 00 A8 */	blt lbl_8051E1A8
/* 8051E104  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8051E108  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8051E10C  4B D4 95 68 */	b cM_atan2s__Fff
/* 8051E110  7C 7D 1B 78 */	mr r29, r3
lbl_8051E114:
/* 8051E114  4B D4 97 58 */	b cM_rnd__Fv
/* 8051E118  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8051E11C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8051E120  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8051E124  EC 40 08 2A */	fadds f2, f0, f1
/* 8051E128  7F A0 07 34 */	extsh r0, r29
/* 8051E12C  C8 3E 00 38 */	lfd f1, 0x38(r30)
/* 8051E130  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051E134  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8051E138  3C 00 43 30 */	lis r0, 0x4330
/* 8051E13C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8051E140  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 8051E144  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051E148  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8051E14C  FC 00 00 1E */	fctiwz f0, f0
/* 8051E150  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8051E154  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8051E158  B0 1F 00 02 */	sth r0, 2(r31)
/* 8051E15C  FC 20 F8 90 */	fmr f1, f31
/* 8051E160  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8051E164  4B D4 95 10 */	b cM_atan2s__Fff
/* 8051E168  7C 60 07 34 */	extsh r0, r3
/* 8051E16C  C8 3E 00 38 */	lfd f1, 0x38(r30)
/* 8051E170  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051E174  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8051E178  3C 00 43 30 */	lis r0, 0x4330
/* 8051E17C  90 01 00 58 */	stw r0, 0x58(r1)
/* 8051E180  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8051E184  EC 20 08 28 */	fsubs f1, f0, f1
/* 8051E188  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8051E18C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8051E190  FC 00 00 1E */	fctiwz f0, f0
/* 8051E194  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 8051E198  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8051E19C  B0 1F 00 00 */	sth r0, 0(r31)
/* 8051E1A0  38 00 00 00 */	li r0, 0
/* 8051E1A4  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8051E1A8:
/* 8051E1A8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8051E1AC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8051E1B0  39 61 00 80 */	addi r11, r1, 0x80
/* 8051E1B4  4B E4 40 6C */	b _restgpr_27
/* 8051E1B8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8051E1BC  7C 08 03 A6 */	mtlr r0
/* 8051E1C0  38 21 00 90 */	addi r1, r1, 0x90
/* 8051E1C4  4E 80 00 20 */	blr 
