lbl_80CB31FC:
/* 80CB31FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CB3200  7C 08 02 A6 */	mflr r0
/* 80CB3204  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CB3208  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CB320C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CB3210  7C 7F 1B 78 */	mr r31, r3
/* 80CB3214  3C 80 80 CB */	lis r4, lit_3662@ha
/* 80CB3218  3B C4 3E EC */	addi r30, r4, lit_3662@l
/* 80CB321C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80CB3220  28 00 00 06 */	cmplwi r0, 6
/* 80CB3224  40 82 00 0C */	bne lbl_80CB3230
/* 80CB3228  48 00 00 C5 */	bl init_modeWaitSetEffect__10daPoFire_cFv
/* 80CB322C  48 00 00 4C */	b lbl_80CB3278
lbl_80CB3230:
/* 80CB3230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB3234  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB3238  38 63 5B 54 */	addi r3, r3, 0x5b54
/* 80CB323C  7F E4 FB 78 */	mr r4, r31
/* 80CB3240  88 1F 05 93 */	lbz r0, 0x593(r31)
/* 80CB3244  38 BE 00 1C */	addi r5, r30, 0x1c
/* 80CB3248  7C A5 00 AE */	lbzx r5, r5, r0
/* 80CB324C  3C C0 80 CB */	lis r6, l_HIO@ha
/* 80CB3250  38 C6 41 14 */	addi r6, r6, l_HIO@l
/* 80CB3254  C0 26 00 2C */	lfs f1, 0x2c(r6)
/* 80CB3258  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 80CB325C  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 80CB3260  38 C0 50 00 */	li r6, 0x5000
/* 80CB3264  38 E0 00 01 */	li r7, 1
/* 80CB3268  4B 3C 07 A0 */	b request__11dAttCatch_cFP10fopAc_ac_cUcfffsi
/* 80CB326C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80CB3270  60 00 00 40 */	ori r0, r0, 0x40
/* 80CB3274  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80CB3278:
/* 80CB3278  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80CB327C  C0 3F 05 D8 */	lfs f1, 0x5d8(r31)
/* 80CB3280  3C 60 80 CB */	lis r3, l_HIO@ha
/* 80CB3284  38 83 41 14 */	addi r4, r3, l_HIO@l
/* 80CB3288  C0 04 00 08 */	lfs f0, 8(r4)
/* 80CB328C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CB3290  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CB3294  FC 00 00 1E */	fctiwz f0, f0
/* 80CB3298  D8 01 00 08 */	stfd f0, 8(r1)
/* 80CB329C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80CB32A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CB32A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CB32A8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CB32AC  7C 43 04 2E */	lfsx f2, r3, r0
/* 80CB32B0  C0 3F 05 D4 */	lfs f1, 0x5d4(r31)
/* 80CB32B4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80CB32B8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CB32BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB32C0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CB32C4  C0 3F 05 D8 */	lfs f1, 0x5d8(r31)
/* 80CB32C8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80CB32CC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CB32D0  D0 1F 05 D8 */	stfs f0, 0x5d8(r31)
/* 80CB32D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CB32D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CB32DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CB32E0  7C 08 03 A6 */	mtlr r0
/* 80CB32E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CB32E8  4E 80 00 20 */	blr 
