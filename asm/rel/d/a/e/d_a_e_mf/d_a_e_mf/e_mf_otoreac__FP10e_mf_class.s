lbl_8070BF94:
/* 8070BF94  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8070BF98  7C 08 02 A6 */	mflr r0
/* 8070BF9C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8070BFA0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8070BFA4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8070BFA8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8070BFAC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8070BFB0  7C 7E 1B 78 */	mr r30, r3
/* 8070BFB4  3C 60 80 71 */	lis r3, lit_3828@ha
/* 8070BFB8  3B E3 39 74 */	addi r31, r3, lit_3828@l
/* 8070BFBC  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8070BFC0  38 80 00 02 */	li r4, 2
/* 8070BFC4  98 9E 06 D4 */	stb r4, 0x6d4(r30)
/* 8070BFC8  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8070BFCC  2C 00 00 01 */	cmpwi r0, 1
/* 8070BFD0  41 82 00 6C */	beq lbl_8070C03C
/* 8070BFD4  40 80 00 10 */	bge lbl_8070BFE4
/* 8070BFD8  2C 00 00 00 */	cmpwi r0, 0
/* 8070BFDC  40 80 00 14 */	bge lbl_8070BFF0
/* 8070BFE0  48 00 02 50 */	b lbl_8070C230
lbl_8070BFE4:
/* 8070BFE4  2C 00 00 03 */	cmpwi r0, 3
/* 8070BFE8  40 80 02 48 */	bge lbl_8070C230
/* 8070BFEC  48 00 00 8C */	b lbl_8070C078
lbl_8070BFF0:
/* 8070BFF0  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8070BFF4  4B B5 B9 60 */	b cM_rndF__Ff
/* 8070BFF8  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8070BFFC  EC 40 08 2A */	fadds f2, f0, f1
/* 8070C000  7F C3 F3 78 */	mr r3, r30
/* 8070C004  38 80 00 1F */	li r4, 0x1f
/* 8070C008  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070C00C  38 A0 00 02 */	li r5, 2
/* 8070C010  4B FF E8 1D */	bl anm_init__FP10e_mf_classifUcf
/* 8070C014  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070C018  4B B5 B9 3C */	b cM_rndF__Ff
/* 8070C01C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8070C020  EC 00 08 2A */	fadds f0, f0, f1
/* 8070C024  FC 00 00 1E */	fctiwz f0, f0
/* 8070C028  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8070C02C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8070C030  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070C034  38 00 00 01 */	li r0, 1
/* 8070C038  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070C03C:
/* 8070C03C  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070C040  2C 00 00 00 */	cmpwi r0, 0
/* 8070C044  40 82 01 EC */	bne lbl_8070C230
/* 8070C048  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8070C04C  4B B5 B9 40 */	b cM_rndFX__Ff
/* 8070C050  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8070C054  EC 40 08 2A */	fadds f2, f0, f1
/* 8070C058  7F C3 F3 78 */	mr r3, r30
/* 8070C05C  38 80 00 1E */	li r4, 0x1e
/* 8070C060  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070C064  38 A0 00 02 */	li r5, 2
/* 8070C068  4B FF E7 C5 */	bl anm_init__FP10e_mf_classifUcf
/* 8070C06C  38 00 00 02 */	li r0, 2
/* 8070C070  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070C074  48 00 01 BC */	b lbl_8070C230
lbl_8070C078:
/* 8070C078  3C 60 80 71 */	lis r3, l_HIO@ha
/* 8070C07C  38 63 3F 74 */	addi r3, r3, l_HIO@l
/* 8070C080  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 8070C084  A8 7E 06 AC */	lha r3, 0x6ac(r30)
/* 8070C088  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 8070C08C  40 82 00 1C */	bne lbl_8070C0A8
/* 8070C090  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8070C094  41 82 00 10 */	beq lbl_8070C0A4
/* 8070C098  38 00 00 01 */	li r0, 1
/* 8070C09C  98 1E 10 C4 */	stb r0, 0x10c4(r30)
/* 8070C0A0  48 00 00 08 */	b lbl_8070C0A8
lbl_8070C0A4:
/* 8070C0A4  98 9E 10 C4 */	stb r4, 0x10c4(r30)
lbl_8070C0A8:
/* 8070C0A8  38 61 00 0C */	addi r3, r1, 0xc
/* 8070C0AC  38 9E 07 18 */	addi r4, r30, 0x718
/* 8070C0B0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8070C0B4  4B B5 AA 80 */	b __mi__4cXyzCFRC3Vec
/* 8070C0B8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8070C0BC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8070C0C0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8070C0C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070C0C8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8070C0CC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8070C0D0  4B B5 B5 A4 */	b cM_atan2s__Fff
/* 8070C0D4  7C 64 1B 78 */	mr r4, r3
/* 8070C0D8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8070C0DC  38 A0 00 02 */	li r5, 2
/* 8070C0E0  38 C0 0C 00 */	li r6, 0xc00
/* 8070C0E4  4B B6 45 24 */	b cLib_addCalcAngleS2__FPssss
/* 8070C0E8  38 61 00 18 */	addi r3, r1, 0x18
/* 8070C0EC  4B C3 B0 4C */	b PSVECSquareMag
/* 8070C0F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070C0F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C0F8  40 81 00 58 */	ble lbl_8070C150
/* 8070C0FC  FC 00 08 34 */	frsqrte f0, f1
/* 8070C100  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8070C104  FC 44 00 32 */	fmul f2, f4, f0
/* 8070C108  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8070C10C  FC 00 00 32 */	fmul f0, f0, f0
/* 8070C110  FC 01 00 32 */	fmul f0, f1, f0
/* 8070C114  FC 03 00 28 */	fsub f0, f3, f0
/* 8070C118  FC 02 00 32 */	fmul f0, f2, f0
/* 8070C11C  FC 44 00 32 */	fmul f2, f4, f0
/* 8070C120  FC 00 00 32 */	fmul f0, f0, f0
/* 8070C124  FC 01 00 32 */	fmul f0, f1, f0
/* 8070C128  FC 03 00 28 */	fsub f0, f3, f0
/* 8070C12C  FC 02 00 32 */	fmul f0, f2, f0
/* 8070C130  FC 44 00 32 */	fmul f2, f4, f0
/* 8070C134  FC 00 00 32 */	fmul f0, f0, f0
/* 8070C138  FC 01 00 32 */	fmul f0, f1, f0
/* 8070C13C  FC 03 00 28 */	fsub f0, f3, f0
/* 8070C140  FC 02 00 32 */	fmul f0, f2, f0
/* 8070C144  FC 21 00 32 */	fmul f1, f1, f0
/* 8070C148  FC 20 08 18 */	frsp f1, f1
/* 8070C14C  48 00 00 88 */	b lbl_8070C1D4
lbl_8070C150:
/* 8070C150  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8070C154  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C158  40 80 00 10 */	bge lbl_8070C168
/* 8070C15C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8070C160  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8070C164  48 00 00 70 */	b lbl_8070C1D4
lbl_8070C168:
/* 8070C168  D0 21 00 08 */	stfs f1, 8(r1)
/* 8070C16C  80 81 00 08 */	lwz r4, 8(r1)
/* 8070C170  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8070C174  3C 00 7F 80 */	lis r0, 0x7f80
/* 8070C178  7C 03 00 00 */	cmpw r3, r0
/* 8070C17C  41 82 00 14 */	beq lbl_8070C190
/* 8070C180  40 80 00 40 */	bge lbl_8070C1C0
/* 8070C184  2C 03 00 00 */	cmpwi r3, 0
/* 8070C188  41 82 00 20 */	beq lbl_8070C1A8
/* 8070C18C  48 00 00 34 */	b lbl_8070C1C0
lbl_8070C190:
/* 8070C190  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8070C194  41 82 00 0C */	beq lbl_8070C1A0
/* 8070C198  38 00 00 01 */	li r0, 1
/* 8070C19C  48 00 00 28 */	b lbl_8070C1C4
lbl_8070C1A0:
/* 8070C1A0  38 00 00 02 */	li r0, 2
/* 8070C1A4  48 00 00 20 */	b lbl_8070C1C4
lbl_8070C1A8:
/* 8070C1A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8070C1AC  41 82 00 0C */	beq lbl_8070C1B8
/* 8070C1B0  38 00 00 05 */	li r0, 5
/* 8070C1B4  48 00 00 10 */	b lbl_8070C1C4
lbl_8070C1B8:
/* 8070C1B8  38 00 00 03 */	li r0, 3
/* 8070C1BC  48 00 00 08 */	b lbl_8070C1C4
lbl_8070C1C0:
/* 8070C1C0  38 00 00 04 */	li r0, 4
lbl_8070C1C4:
/* 8070C1C4  2C 00 00 01 */	cmpwi r0, 1
/* 8070C1C8  40 82 00 0C */	bne lbl_8070C1D4
/* 8070C1CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8070C1D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8070C1D4:
/* 8070C1D4  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8070C1D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070C1DC  41 80 00 10 */	blt lbl_8070C1EC
/* 8070C1E0  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 8070C1E4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8070C1E8  41 82 00 48 */	beq lbl_8070C230
lbl_8070C1EC:
/* 8070C1EC  38 00 00 00 */	li r0, 0
/* 8070C1F0  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070C1F4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070C1F8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8070C1FC  4B B5 B7 58 */	b cM_rndF__Ff
/* 8070C200  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8070C204  EC 00 08 2A */	fadds f0, f0, f1
/* 8070C208  FC 00 00 1E */	fctiwz f0, f0
/* 8070C20C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8070C210  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8070C214  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070C218  7F C3 F3 78 */	mr r3, r30
/* 8070C21C  38 80 00 21 */	li r4, 0x21
/* 8070C220  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070C224  38 A0 00 02 */	li r5, 2
/* 8070C228  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070C22C  4B FF E6 01 */	bl anm_init__FP10e_mf_classifUcf
lbl_8070C230:
/* 8070C230  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8070C234  FC 20 F8 90 */	fmr f1, f31
/* 8070C238  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8070C23C  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 8070C240  4B B6 37 FC */	b cLib_addCalc2__FPffff
/* 8070C244  A8 1E 06 AC */	lha r0, 0x6ac(r30)
/* 8070C248  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8070C24C  40 82 00 58 */	bne lbl_8070C2A4
/* 8070C250  7F C3 F3 78 */	mr r3, r30
/* 8070C254  C0 3E 06 B8 */	lfs f1, 0x6b8(r30)
/* 8070C258  38 80 40 00 */	li r4, 0x4000
/* 8070C25C  4B FF F5 11 */	bl pl_check__FP10e_mf_classfs
/* 8070C260  2C 03 00 00 */	cmpwi r3, 0
/* 8070C264  41 82 00 20 */	beq lbl_8070C284
/* 8070C268  38 00 00 03 */	li r0, 3
/* 8070C26C  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070C270  38 00 FF F6 */	li r0, -10
/* 8070C274  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070C278  38 00 00 3C */	li r0, 0x3c
/* 8070C27C  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070C280  48 00 00 24 */	b lbl_8070C2A4
lbl_8070C284:
/* 8070C284  7F C3 F3 78 */	mr r3, r30
/* 8070C288  4B FF F4 59 */	bl bomb_view_check__FP10e_mf_class
/* 8070C28C  28 03 00 00 */	cmplwi r3, 0
/* 8070C290  41 82 00 14 */	beq lbl_8070C2A4
/* 8070C294  38 00 00 0B */	li r0, 0xb
/* 8070C298  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070C29C  38 00 00 00 */	li r0, 0
/* 8070C2A0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070C2A4:
/* 8070C2A4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8070C2A8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8070C2AC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8070C2B0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8070C2B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8070C2B8  7C 08 03 A6 */	mtlr r0
/* 8070C2BC  38 21 00 50 */	addi r1, r1, 0x50
/* 8070C2C0  4E 80 00 20 */	blr 
