lbl_804FCCE8:
/* 804FCCE8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804FCCEC  7C 08 02 A6 */	mflr r0
/* 804FCCF0  90 01 00 84 */	stw r0, 0x84(r1)
/* 804FCCF4  39 61 00 80 */	addi r11, r1, 0x80
/* 804FCCF8  4B E6 54 E5 */	bl _savegpr_29
/* 804FCCFC  7C 7E 1B 78 */	mr r30, r3
/* 804FCD00  3C 60 80 50 */	lis r3, lit_3788@ha /* 0x80500B04@ha */
/* 804FCD04  3B E3 0B 04 */	addi r31, r3, lit_3788@l /* 0x80500B04@l */
/* 804FCD08  A8 1E 06 68 */	lha r0, 0x668(r30)
/* 804FCD0C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 804FCD10  40 82 00 40 */	bne lbl_804FCD50
/* 804FCD14  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804FCD18  4B D6 AC 3D */	bl cM_rndF__Ff
/* 804FCD1C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 804FCD20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FCD24  40 80 00 2C */	bge lbl_804FCD50
/* 804FCD28  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070087@ha */
/* 804FCD2C  38 03 00 87 */	addi r0, r3, 0x0087 /* 0x00070087@l */
/* 804FCD30  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FCD34  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 804FCD38  38 81 00 0C */	addi r4, r1, 0xc
/* 804FCD3C  38 A0 FF FF */	li r5, -1
/* 804FCD40  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 804FCD44  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804FCD48  7D 89 03 A6 */	mtctr r12
/* 804FCD4C  4E 80 04 21 */	bctrl 
lbl_804FCD50:
/* 804FCD50  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 804FCD54  2C 00 00 00 */	cmpwi r0, 0
/* 804FCD58  41 82 00 FC */	beq lbl_804FCE54
/* 804FCD5C  40 80 00 10 */	bge lbl_804FCD6C
/* 804FCD60  2C 00 FF FF */	cmpwi r0, -1
/* 804FCD64  40 80 00 14 */	bge lbl_804FCD78
/* 804FCD68  48 00 03 D4 */	b lbl_804FD13C
lbl_804FCD6C:
/* 804FCD6C  2C 00 00 02 */	cmpwi r0, 2
/* 804FCD70  40 80 03 CC */	bge lbl_804FD13C
/* 804FCD74  48 00 01 B4 */	b lbl_804FCF28
lbl_804FCD78:
/* 804FCD78  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 804FCD7C  38 80 00 01 */	li r4, 1
/* 804FCD80  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804FCD84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804FCD88  40 82 00 18 */	bne lbl_804FCDA0
/* 804FCD8C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804FCD90  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804FCD94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804FCD98  41 82 00 08 */	beq lbl_804FCDA0
/* 804FCD9C  38 80 00 00 */	li r4, 0
lbl_804FCDA0:
/* 804FCDA0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804FCDA4  41 82 00 10 */	beq lbl_804FCDB4
/* 804FCDA8  38 00 00 00 */	li r0, 0
/* 804FCDAC  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 804FCDB0  48 00 00 A4 */	b lbl_804FCE54
lbl_804FCDB4:
/* 804FCDB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FCDB8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804FCDBC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 804FCDC0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804FCDC4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804FCDC8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804FCDCC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FCDD0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FCDD4  80 63 00 00 */	lwz r3, 0(r3)
/* 804FCDD8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804FCDDC  4B B0 F6 01 */	bl mDoMtx_YrotS__FPA4_fs
/* 804FCDE0  38 61 00 40 */	addi r3, r1, 0x40
/* 804FCDE4  38 81 00 34 */	addi r4, r1, 0x34
/* 804FCDE8  4B D7 41 05 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804FCDEC  38 61 00 1C */	addi r3, r1, 0x1c
/* 804FCDF0  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 804FCDF4  38 A1 00 34 */	addi r5, r1, 0x34
/* 804FCDF8  4B D6 9C ED */	bl __pl__4cXyzCFRC3Vec
/* 804FCDFC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804FCE00  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 804FCE04  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804FCE08  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 804FCE0C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804FCE10  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 804FCE14  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804FCE18  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 804FCE1C  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 804FCE20  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 804FCE24  4B D7 2C 19 */	bl cLib_addCalc2__FPffff
/* 804FCE28  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 804FCE2C  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 804FCE30  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 804FCE34  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 804FCE38  4B D7 2C 05 */	bl cLib_addCalc2__FPffff
/* 804FCE3C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 804FCE40  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 804FCE44  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 804FCE48  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 804FCE4C  4B D7 2B F1 */	bl cLib_addCalc2__FPffff
/* 804FCE50  48 00 02 EC */	b lbl_804FD13C
lbl_804FCE54:
/* 804FCE54  7F C3 F3 78 */	mr r3, r30
/* 804FCE58  38 80 00 12 */	li r4, 0x12
/* 804FCE5C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804FCE60  38 A0 00 02 */	li r5, 2
/* 804FCE64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FCE68  4B FF EF 51 */	bl anm_init__FP10e_hb_classifUcf
/* 804FCE6C  7F C3 F3 78 */	mr r3, r30
/* 804FCE70  38 80 00 14 */	li r4, 0x14
/* 804FCE74  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804FCE78  38 A0 00 02 */	li r5, 2
/* 804FCE7C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FCE80  4B FF EF E5 */	bl leaf_anm_init__FP10e_hb_classifUcf
/* 804FCE84  38 00 00 01 */	li r0, 1
/* 804FCE88  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 804FCE8C  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 804FCE90  28 00 00 01 */	cmplwi r0, 1
/* 804FCE94  40 82 00 28 */	bne lbl_804FCEBC
/* 804FCE98  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804FCE9C  4B D6 AA B9 */	bl cM_rndF__Ff
/* 804FCEA0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 804FCEA4  EC 00 08 2A */	fadds f0, f0, f1
/* 804FCEA8  FC 00 00 1E */	fctiwz f0, f0
/* 804FCEAC  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 804FCEB0  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 804FCEB4  B0 1E 06 9A */	sth r0, 0x69a(r30)
/* 804FCEB8  48 00 00 64 */	b lbl_804FCF1C
lbl_804FCEBC:
/* 804FCEBC  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x80500E70@ha */
/* 804FCEC0  3B A3 0E 70 */	addi r29, r3, l_HIO@l /* 0x80500E70@l */
/* 804FCEC4  A8 1D 00 16 */	lha r0, 0x16(r29)
/* 804FCEC8  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 804FCECC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804FCED0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 804FCED4  3C 00 43 30 */	lis r0, 0x4330
/* 804FCED8  90 01 00 58 */	stw r0, 0x58(r1)
/* 804FCEDC  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 804FCEE0  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FCEE4  4B D6 AA 71 */	bl cM_rndF__Ff
/* 804FCEE8  A8 1D 00 16 */	lha r0, 0x16(r29)
/* 804FCEEC  C8 5F 00 98 */	lfd f2, 0x98(r31)
/* 804FCEF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804FCEF4  90 01 00 64 */	stw r0, 0x64(r1)
/* 804FCEF8  3C 00 43 30 */	lis r0, 0x4330
/* 804FCEFC  90 01 00 60 */	stw r0, 0x60(r1)
/* 804FCF00  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 804FCF04  EC 00 10 28 */	fsubs f0, f0, f2
/* 804FCF08  EC 00 08 2A */	fadds f0, f0, f1
/* 804FCF0C  FC 00 00 1E */	fctiwz f0, f0
/* 804FCF10  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 804FCF14  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 804FCF18  B0 1E 06 9A */	sth r0, 0x69a(r30)
lbl_804FCF1C:
/* 804FCF1C  38 00 00 00 */	li r0, 0
/* 804FCF20  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 804FCF24  48 00 02 18 */	b lbl_804FD13C
lbl_804FCF28:
/* 804FCF28  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 804FCF2C  2C 00 00 00 */	cmpwi r0, 0
/* 804FCF30  40 82 00 9C */	bne lbl_804FCFCC
/* 804FCF34  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 804FCF38  4B D6 AA 1D */	bl cM_rndF__Ff
/* 804FCF3C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804FCF40  EC 00 08 2A */	fadds f0, f0, f1
/* 804FCF44  FC 00 00 1E */	fctiwz f0, f0
/* 804FCF48  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 804FCF4C  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 804FCF50  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 804FCF54  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804FCF58  4B D6 AA 35 */	bl cM_rndFX__Ff
/* 804FCF5C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804FCF60  EC 00 08 2A */	fadds f0, f0, f1
/* 804FCF64  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 804FCF68  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804FCF6C  4B D6 AA 21 */	bl cM_rndFX__Ff
/* 804FCF70  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 804FCF74  EC 00 08 2A */	fadds f0, f0, f1
/* 804FCF78  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 804FCF7C  88 1E 08 51 */	lbz r0, 0x851(r30)
/* 804FCF80  7C 00 07 75 */	extsb. r0, r0
/* 804FCF84  41 82 00 24 */	beq lbl_804FCFA8
/* 804FCF88  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 804FCF8C  4B D6 AA 01 */	bl cM_rndFX__Ff
/* 804FCF90  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804FCF94  EC 20 08 2A */	fadds f1, f0, f1
/* 804FCF98  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 804FCF9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804FCFA0  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 804FCFA4  48 00 00 20 */	b lbl_804FCFC4
lbl_804FCFA8:
/* 804FCFA8  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 804FCFAC  4B D6 A9 E1 */	bl cM_rndFX__Ff
/* 804FCFB0  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804FCFB4  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 804FCFB8  EC 02 00 2A */	fadds f0, f2, f0
/* 804FCFBC  EC 00 08 2A */	fadds f0, f0, f1
/* 804FCFC0  D0 1E 06 78 */	stfs f0, 0x678(r30)
lbl_804FCFC4:
/* 804FCFC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FCFC8  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_804FCFCC:
/* 804FCFCC  A8 9E 06 68 */	lha r4, 0x668(r30)
/* 804FCFD0  1C 04 07 6C */	mulli r0, r4, 0x76c
/* 804FCFD4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FCFD8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804FCFDC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804FCFE0  7C 03 04 2E */	lfsx f0, r3, r0
/* 804FCFE4  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 804FCFE8  EC 22 00 32 */	fmuls f1, f2, f0
/* 804FCFEC  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 804FCFF0  1C 04 08 98 */	mulli r0, r4, 0x898
/* 804FCFF4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FCFF8  7C 03 04 2E */	lfsx f0, r3, r0
/* 804FCFFC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804FD000  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804FD004  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 804FD008  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FD00C  7C 63 02 14 */	add r3, r3, r0
/* 804FD010  C0 03 00 04 */	lfs f0, 4(r3)
/* 804FD014  EC 02 00 32 */	fmuls f0, f2, f0
/* 804FD018  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804FD01C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804FD020  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 804FD024  EC 20 08 2A */	fadds f1, f0, f1
/* 804FD028  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804FD02C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 804FD030  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FD034  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FD038  4B D7 2A 05 */	bl cLib_addCalc2__FPffff
/* 804FD03C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 804FD040  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 804FD044  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 804FD048  EC 21 00 2A */	fadds f1, f1, f0
/* 804FD04C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804FD050  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 804FD054  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FD058  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FD05C  4B D7 29 E1 */	bl cLib_addCalc2__FPffff
/* 804FD060  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 804FD064  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 804FD068  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 804FD06C  EC 21 00 2A */	fadds f1, f1, f0
/* 804FD070  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804FD074  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 804FD078  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FD07C  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FD080  4B D7 29 BD */	bl cLib_addCalc2__FPffff
/* 804FD084  38 7E 06 90 */	addi r3, r30, 0x690
/* 804FD088  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804FD08C  FC 40 08 90 */	fmr f2, f1
/* 804FD090  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804FD094  4B D7 29 A9 */	bl cLib_addCalc2__FPffff
/* 804FD098  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 804FD09C  2C 00 00 00 */	cmpwi r0, 0
/* 804FD0A0  40 82 00 9C */	bne lbl_804FD13C
/* 804FD0A4  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 804FD0A8  28 00 00 01 */	cmplwi r0, 1
/* 804FD0AC  41 82 00 60 */	beq lbl_804FD10C
/* 804FD0B0  7F C3 F3 78 */	mr r3, r30
/* 804FD0B4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804FD0B8  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 804FD0BC  EC 21 00 2A */	fadds f1, f1, f0
/* 804FD0C0  4B FF F0 01 */	bl pl_check__FP10e_hb_classf
/* 804FD0C4  2C 03 00 00 */	cmpwi r3, 0
/* 804FD0C8  40 82 00 44 */	bne lbl_804FD10C
/* 804FD0CC  38 00 00 00 */	li r0, 0
/* 804FD0D0  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 804FD0D4  38 00 00 02 */	li r0, 2
/* 804FD0D8  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 804FD0DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008D@ha */
/* 804FD0E0  38 03 00 8D */	addi r0, r3, 0x008D /* 0x0007008D@l */
/* 804FD0E4  90 01 00 08 */	stw r0, 8(r1)
/* 804FD0E8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 804FD0EC  38 81 00 08 */	addi r4, r1, 8
/* 804FD0F0  38 A0 00 00 */	li r5, 0
/* 804FD0F4  38 C0 FF FF */	li r6, -1
/* 804FD0F8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 804FD0FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804FD100  7D 89 03 A6 */	mtctr r12
/* 804FD104  4E 80 04 21 */	bctrl 
/* 804FD108  48 00 00 34 */	b lbl_804FD13C
lbl_804FD10C:
/* 804FD10C  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 804FD110  2C 00 00 00 */	cmpwi r0, 0
/* 804FD114  40 82 00 28 */	bne lbl_804FD13C
/* 804FD118  7F C3 F3 78 */	mr r3, r30
/* 804FD11C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 804FD120  4B FF EF A1 */	bl pl_check__FP10e_hb_classf
/* 804FD124  2C 03 00 00 */	cmpwi r3, 0
/* 804FD128  41 82 00 14 */	beq lbl_804FD13C
/* 804FD12C  38 00 00 04 */	li r0, 4
/* 804FD130  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 804FD134  38 00 00 00 */	li r0, 0
/* 804FD138  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_804FD13C:
/* 804FD13C  88 1E 08 51 */	lbz r0, 0x851(r30)
/* 804FD140  7C 00 07 75 */	extsb. r0, r0
/* 804FD144  41 82 00 AC */	beq lbl_804FD1F0
/* 804FD148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804FD14C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804FD150  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 804FD154  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 804FD158  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 804FD15C  3C 84 00 01 */	addis r4, r4, 1
/* 804FD160  38 04 80 00 */	addi r0, r4, -32768
/* 804FD164  7C 04 07 34 */	extsh r4, r0
/* 804FD168  38 A0 00 08 */	li r5, 8
/* 804FD16C  38 C0 08 00 */	li r6, 0x800
/* 804FD170  4B D7 34 99 */	bl cLib_addCalcAngleS2__FPssss
/* 804FD174  38 61 00 10 */	addi r3, r1, 0x10
/* 804FD178  38 9D 05 38 */	addi r4, r29, 0x538
/* 804FD17C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804FD180  4B D6 99 B5 */	bl __mi__4cXyzCFRC3Vec
/* 804FD184  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804FD188  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804FD18C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804FD190  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804FD194  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804FD198  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804FD19C  EC 21 00 72 */	fmuls f1, f1, f1
/* 804FD1A0  EC 00 00 32 */	fmuls f0, f0, f0
/* 804FD1A4  EC 41 00 2A */	fadds f2, f1, f0
/* 804FD1A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FD1AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804FD1B0  40 81 00 0C */	ble lbl_804FD1BC
/* 804FD1B4  FC 00 10 34 */	frsqrte f0, f2
/* 804FD1B8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804FD1BC:
/* 804FD1BC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804FD1C0  4B D6 A4 B5 */	bl cM_atan2s__Fff
/* 804FD1C4  7C 64 07 34 */	extsh r4, r3
/* 804FD1C8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804FD1CC  3C 84 00 01 */	addis r4, r4, 1
/* 804FD1D0  38 04 80 00 */	addi r0, r4, -32768
/* 804FD1D4  7C 04 07 34 */	extsh r4, r0
/* 804FD1D8  38 A0 00 08 */	li r5, 8
/* 804FD1DC  38 C0 04 00 */	li r6, 0x400
/* 804FD1E0  4B D7 34 29 */	bl cLib_addCalcAngleS2__FPssss
/* 804FD1E4  38 00 00 01 */	li r0, 1
/* 804FD1E8  98 1E 0B 0C */	stb r0, 0xb0c(r30)
/* 804FD1EC  48 00 00 2C */	b lbl_804FD218
lbl_804FD1F0:
/* 804FD1F0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 804FD1F4  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 804FD1F8  38 A0 00 08 */	li r5, 8
/* 804FD1FC  38 C0 08 00 */	li r6, 0x800
/* 804FD200  4B D7 34 09 */	bl cLib_addCalcAngleS2__FPssss
/* 804FD204  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804FD208  38 80 00 00 */	li r4, 0
/* 804FD20C  38 A0 00 08 */	li r5, 8
/* 804FD210  38 C0 04 00 */	li r6, 0x400
/* 804FD214  4B D7 33 F5 */	bl cLib_addCalcAngleS2__FPssss
lbl_804FD218:
/* 804FD218  39 61 00 80 */	addi r11, r1, 0x80
/* 804FD21C  4B E6 50 0D */	bl _restgpr_29
/* 804FD220  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804FD224  7C 08 03 A6 */	mtlr r0
/* 804FD228  38 21 00 80 */	addi r1, r1, 0x80
/* 804FD22C  4E 80 00 20 */	blr 
