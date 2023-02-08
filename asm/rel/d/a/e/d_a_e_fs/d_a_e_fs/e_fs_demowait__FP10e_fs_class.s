lbl_806BCE5C:
/* 806BCE5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806BCE60  7C 08 02 A6 */	mflr r0
/* 806BCE64  90 01 00 34 */	stw r0, 0x34(r1)
/* 806BCE68  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806BCE6C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806BCE70  7C 7E 1B 78 */	mr r30, r3
/* 806BCE74  3C 60 80 6C */	lis r3, lit_3917@ha /* 0x806BE48C@ha */
/* 806BCE78  3B E3 E4 8C */	addi r31, r3, lit_3917@l /* 0x806BE48C@l */
/* 806BCE7C  38 00 00 60 */	li r0, 0x60
/* 806BCE80  B0 01 00 08 */	sth r0, 8(r1)
/* 806BCE84  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 806BCE88  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 806BCE8C  38 81 00 08 */	addi r4, r1, 8
/* 806BCE90  4B 95 C9 69 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 806BCE94  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 806BCE98  28 00 00 06 */	cmplwi r0, 6
/* 806BCE9C  41 81 01 E0 */	bgt lbl_806BD07C
/* 806BCEA0  3C 80 80 6C */	lis r4, lit_4449@ha /* 0x806BE5C0@ha */
/* 806BCEA4  38 84 E5 C0 */	addi r4, r4, lit_4449@l /* 0x806BE5C0@l */
/* 806BCEA8  54 00 10 3A */	slwi r0, r0, 2
/* 806BCEAC  7C 04 00 2E */	lwzx r0, r4, r0
/* 806BCEB0  7C 09 03 A6 */	mtctr r0
/* 806BCEB4  4E 80 04 20 */	bctr 
lbl_806BCEB8:
/* 806BCEB8  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 806BCEBC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 806BCEC0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806BCEC4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806BCEC8  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 806BCECC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 806BCED0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806BCED4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806BCED8  EC 01 00 2A */	fadds f0, f1, f0
/* 806BCEDC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806BCEE0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806BCEE4  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 806BCEE8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806BCEEC  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 806BCEF0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806BCEF4  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 806BCEF8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BCEFC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806BCF00  48 00 01 7C */	b lbl_806BD07C
lbl_806BCF04:
/* 806BCF04  7F C3 F3 78 */	mr r3, r30
/* 806BCF08  38 80 00 04 */	li r4, 4
/* 806BCF0C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806BCF10  38 A0 00 00 */	li r5, 0
/* 806BCF14  FC 40 08 90 */	fmr f2, f1
/* 806BCF18  4B FF EB F9 */	bl anm_init__FP10e_fs_classifUcf
/* 806BCF1C  C0 7F 00 B0 */	lfs f3, 0xb0(r31)
/* 806BCF20  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 806BCF24  28 1E 00 00 */	cmplwi r30, 0
/* 806BCF28  41 82 00 0C */	beq lbl_806BCF34
/* 806BCF2C  80 1E 00 04 */	lwz r0, 4(r30)
/* 806BCF30  48 00 00 08 */	b lbl_806BCF38
lbl_806BCF34:
/* 806BCF34  38 00 FF FF */	li r0, -1
lbl_806BCF38:
/* 806BCF38  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 806BCF3C  C8 3F 00 B8 */	lfd f1, 0xb8(r31)
/* 806BCF40  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BCF44  3C 00 43 30 */	lis r0, 0x4330
/* 806BCF48  90 01 00 20 */	stw r0, 0x20(r1)
/* 806BCF4C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 806BCF50  EC 00 08 28 */	fsubs f0, f0, f1
/* 806BCF54  EC 02 00 32 */	fmuls f0, f2, f0
/* 806BCF58  EC 03 00 2A */	fadds f0, f3, f0
/* 806BCF5C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806BCF60  38 00 00 02 */	li r0, 2
/* 806BCF64  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 806BCF68  38 00 00 01 */	li r0, 1
/* 806BCF6C  98 1E 05 66 */	stb r0, 0x566(r30)
/* 806BCF70  48 00 01 0C */	b lbl_806BD07C
lbl_806BCF74:
/* 806BCF74  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 806BCF78  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806BCF7C  EC 21 00 28 */	fsubs f1, f1, f0
/* 806BCF80  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806BCF84  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 806BCF88  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806BCF8C  EC 42 00 28 */	fsubs f2, f2, f0
/* 806BCF90  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 806BCF94  4B BA A6 E1 */	bl cM_atan2s__Fff
/* 806BCF98  B0 7E 05 C4 */	sth r3, 0x5c4(r30)
/* 806BCF9C  80 1E 07 00 */	lwz r0, 0x700(r30)
/* 806BCFA0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806BCFA4  41 82 00 D8 */	beq lbl_806BD07C
/* 806BCFA8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806BCFAC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806BCFB0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806BCFB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700D8@ha */
/* 806BCFB8  38 03 00 D8 */	addi r0, r3, 0x00D8 /* 0x000700D8@l */
/* 806BCFBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BCFC0  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806BCFC4  38 81 00 0C */	addi r4, r1, 0xc
/* 806BCFC8  38 A0 00 00 */	li r5, 0
/* 806BCFCC  38 C0 FF FF */	li r6, -1
/* 806BCFD0  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806BCFD4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BCFD8  7D 89 03 A6 */	mtctr r12
/* 806BCFDC  4E 80 04 21 */	bctrl 
/* 806BCFE0  38 00 00 03 */	li r0, 3
/* 806BCFE4  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 806BCFE8  48 00 00 94 */	b lbl_806BD07C
lbl_806BCFEC:
/* 806BCFEC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806BCFF0  38 80 00 01 */	li r4, 1
/* 806BCFF4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806BCFF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806BCFFC  40 82 00 18 */	bne lbl_806BD014
/* 806BD000  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806BD004  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806BD008  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806BD00C  41 82 00 08 */	beq lbl_806BD014
/* 806BD010  38 80 00 00 */	li r4, 0
lbl_806BD014:
/* 806BD014  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806BD018  41 82 00 64 */	beq lbl_806BD07C
/* 806BD01C  7F C3 F3 78 */	mr r3, r30
/* 806BD020  38 80 00 09 */	li r4, 9
/* 806BD024  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806BD028  38 A0 00 02 */	li r5, 2
/* 806BD02C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806BD030  4B FF EA E1 */	bl anm_init__FP10e_fs_classifUcf
/* 806BD034  38 00 00 04 */	li r0, 4
/* 806BD038  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 806BD03C  48 00 00 40 */	b lbl_806BD07C
lbl_806BD040:
/* 806BD040  A8 1E 06 88 */	lha r0, 0x688(r30)
/* 806BD044  2C 00 00 00 */	cmpwi r0, 0
/* 806BD048  40 82 00 34 */	bne lbl_806BD07C
/* 806BD04C  A8 1E 05 C6 */	lha r0, 0x5c6(r30)
/* 806BD050  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
/* 806BD054  48 00 00 28 */	b lbl_806BD07C
lbl_806BD058:
/* 806BD058  A8 1E 06 88 */	lha r0, 0x688(r30)
/* 806BD05C  2C 00 00 00 */	cmpwi r0, 0
/* 806BD060  40 82 00 1C */	bne lbl_806BD07C
/* 806BD064  38 00 00 02 */	li r0, 2
/* 806BD068  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 806BD06C  38 00 00 00 */	li r0, 0
/* 806BD070  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 806BD074  38 00 00 04 */	li r0, 4
/* 806BD078  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_806BD07C:
/* 806BD07C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806BD080  A8 9E 05 C4 */	lha r4, 0x5c4(r30)
/* 806BD084  38 A0 00 02 */	li r5, 2
/* 806BD088  38 C0 10 00 */	li r6, 0x1000
/* 806BD08C  4B BB 35 7D */	bl cLib_addCalcAngleS2__FPssss
/* 806BD090  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806BD094  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806BD098  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806BD09C  7C 08 03 A6 */	mtlr r0
/* 806BD0A0  38 21 00 30 */	addi r1, r1, 0x30
/* 806BD0A4  4E 80 00 20 */	blr 
