lbl_8077BEAC:
/* 8077BEAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8077BEB0  7C 08 02 A6 */	mflr r0
/* 8077BEB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8077BEB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8077BEBC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8077BEC0  7C 7F 1B 78 */	mr r31, r3
/* 8077BEC4  3C 80 80 78 */	lis r4, lit_3903@ha
/* 8077BEC8  3B C4 0D C4 */	addi r30, r4, lit_3903@l
/* 8077BECC  A8 03 06 98 */	lha r0, 0x698(r3)
/* 8077BED0  2C 00 00 01 */	cmpwi r0, 1
/* 8077BED4  41 82 00 6C */	beq lbl_8077BF40
/* 8077BED8  40 80 00 B0 */	bge lbl_8077BF88
/* 8077BEDC  2C 00 00 00 */	cmpwi r0, 0
/* 8077BEE0  40 80 00 08 */	bge lbl_8077BEE8
/* 8077BEE4  48 00 00 A4 */	b lbl_8077BF88
lbl_8077BEE8:
/* 8077BEE8  38 80 00 08 */	li r4, 8
/* 8077BEEC  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8077BEF0  38 A0 00 02 */	li r5, 2
/* 8077BEF4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8077BEF8  4B FF ED 01 */	bl anm_init__FP10e_s1_classifUcf
/* 8077BEFC  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8077BF00  4B AE BA 54 */	b cM_rndF__Ff
/* 8077BF04  FC 00 08 1E */	fctiwz f0, f1
/* 8077BF08  D8 01 00 08 */	stfd f0, 8(r1)
/* 8077BF0C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8077BF10  7C 00 07 34 */	extsh r0, r0
/* 8077BF14  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 8077BF18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8077BF1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077BF20  3C 00 43 30 */	lis r0, 0x4330
/* 8077BF24  90 01 00 10 */	stw r0, 0x10(r1)
/* 8077BF28  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8077BF2C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8077BF30  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077BF34  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8077BF38  38 00 00 01 */	li r0, 1
/* 8077BF3C  B0 1F 06 98 */	sth r0, 0x698(r31)
lbl_8077BF40:
/* 8077BF40  7F E3 FB 78 */	mr r3, r31
/* 8077BF44  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8077BF48  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8077BF4C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8077BF50  4B 89 E7 C0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8077BF54  7C 64 1B 78 */	mr r4, r3
/* 8077BF58  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8077BF5C  38 A0 00 04 */	li r5, 4
/* 8077BF60  38 C0 10 00 */	li r6, 0x1000
/* 8077BF64  4B AF 46 A4 */	b cLib_addCalcAngleS2__FPssss
/* 8077BF68  3C 60 80 78 */	lis r3, l_HIO@ha
/* 8077BF6C  38 63 13 8C */	addi r3, r3, l_HIO@l
/* 8077BF70  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8077BF74  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8077BF78  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8077BF7C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 8077BF80  EC 60 00 72 */	fmuls f3, f0, f1
/* 8077BF84  4B AF 3A B8 */	b cLib_addCalc2__FPffff
lbl_8077BF88:
/* 8077BF88  7F E3 FB 78 */	mr r3, r31
/* 8077BF8C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8077BF90  C0 1F 30 64 */	lfs f0, 0x3064(r31)
/* 8077BF94  EC 21 00 2A */	fadds f1, f1, f0
/* 8077BF98  4B FF EE A1 */	bl pl_check__FP10e_s1_classf
/* 8077BF9C  2C 03 00 00 */	cmpwi r3, 0
/* 8077BFA0  40 82 00 18 */	bne lbl_8077BFB8
/* 8077BFA4  38 00 00 00 */	li r0, 0
/* 8077BFA8  B0 1F 06 96 */	sth r0, 0x696(r31)
/* 8077BFAC  38 00 00 02 */	li r0, 2
/* 8077BFB0  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 8077BFB4  48 00 00 30 */	b lbl_8077BFE4
lbl_8077BFB8:
/* 8077BFB8  7F E3 FB 78 */	mr r3, r31
/* 8077BFBC  3C 80 80 78 */	lis r4, l_HIO@ha
/* 8077BFC0  38 84 13 8C */	addi r4, r4, l_HIO@l
/* 8077BFC4  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 8077BFC8  4B FF EF 35 */	bl pl_at_check__FP10e_s1_classf
/* 8077BFCC  2C 03 00 00 */	cmpwi r3, 0
/* 8077BFD0  41 82 00 14 */	beq lbl_8077BFE4
/* 8077BFD4  38 00 00 03 */	li r0, 3
/* 8077BFD8  B0 1F 06 96 */	sth r0, 0x696(r31)
/* 8077BFDC  38 00 00 00 */	li r0, 0
/* 8077BFE0  B0 1F 06 98 */	sth r0, 0x698(r31)
lbl_8077BFE4:
/* 8077BFE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8077BFE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8077BFEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8077BFF0  7C 08 03 A6 */	mtlr r0
/* 8077BFF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8077BFF8  4E 80 00 20 */	blr 
