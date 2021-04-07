lbl_800DDA10:
/* 800DDA10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DDA14  7C 08 02 A6 */	mflr r0
/* 800DDA18  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DDA1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DDA20  93 C1 00 08 */	stw r30, 8(r1)
/* 800DDA24  7C 7F 1B 78 */	mr r31, r3
/* 800DDA28  80 03 06 14 */	lwz r0, 0x614(r3)
/* 800DDA2C  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DDA30  40 82 00 18 */	bne lbl_800DDA48
/* 800DDA34  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800DDA38  28 00 00 1E */	cmplwi r0, 0x1e
/* 800DDA3C  40 82 00 0C */	bne lbl_800DDA48
/* 800DDA40  38 60 00 01 */	li r3, 1
/* 800DDA44  48 00 01 4C */	b lbl_800DDB90
lbl_800DDA48:
/* 800DDA48  7F E3 FB 78 */	mr r3, r31
/* 800DDA4C  38 80 00 1E */	li r4, 0x1e
/* 800DDA50  4B FE 45 1D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DDA54  3C 60 80 39 */	lis r3, m__21daAlinkHIO_gAtPush_c0@ha /* 0x8038DF28@ha */
/* 800DDA58  3B C3 DF 28 */	addi r30, r3, m__21daAlinkHIO_gAtPush_c0@l /* 0x8038DF28@l */
/* 800DDA5C  38 00 00 03 */	li r0, 3
/* 800DDA60  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800DDA64  3C 60 80 42 */	lis r3, l_rWaitBaseAnime@ha /* 0x8042555C@ha */
/* 800DDA68  C4 03 55 5C */	lfsu f0, l_rWaitBaseAnime@l(r3)  /* 0x8042555C@l */
/* 800DDA6C  D0 1F 34 D4 */	stfs f0, 0x34d4(r31)
/* 800DDA70  C0 03 00 04 */	lfs f0, 4(r3)
/* 800DDA74  D0 1F 34 D8 */	stfs f0, 0x34d8(r31)
/* 800DDA78  C0 03 00 08 */	lfs f0, 8(r3)
/* 800DDA7C  D0 1F 34 DC */	stfs f0, 0x34dc(r31)
/* 800DDA80  C0 03 00 00 */	lfs f0, 0(r3)
/* 800DDA84  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800DDA88  C0 03 00 04 */	lfs f0, 4(r3)
/* 800DDA8C  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800DDA90  C0 03 00 08 */	lfs f0, 8(r3)
/* 800DDA94  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800DDA98  7F E3 FB 78 */	mr r3, r31
/* 800DDA9C  38 80 00 29 */	li r4, 0x29
/* 800DDAA0  4B FF 3A 8D */	bl setCutType__9daAlink_cFUc
/* 800DDAA4  7F E3 FB 78 */	mr r3, r31
/* 800DDAA8  38 80 00 2E */	li r4, 0x2e
/* 800DDAAC  3C A0 80 39 */	lis r5, m__21daAlinkHIO_gAtPush_c0@ha /* 0x8038DF28@ha */
/* 800DDAB0  38 A5 DF 28 */	addi r5, r5, m__21daAlinkHIO_gAtPush_c0@l /* 0x8038DF28@l */
/* 800DDAB4  4B FC F6 41 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DDAB8  3C 60 80 39 */	lis r3, m__21daAlinkHIO_gAtPush_c0@ha /* 0x8038DF28@ha */
/* 800DDABC  38 63 DF 28 */	addi r3, r3, m__21daAlinkHIO_gAtPush_c0@l /* 0x8038DF28@l */
/* 800DDAC0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 800DDAC4  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800DDAC8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800DDACC  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 800DDAD0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 800DDAD4  D0 1F 34 80 */	stfs f0, 0x3480(r31)
/* 800DDAD8  7F E3 FB 78 */	mr r3, r31
/* 800DDADC  38 80 00 01 */	li r4, 1
/* 800DDAE0  38 A0 00 01 */	li r5, 1
/* 800DDAE4  4B FD D9 D5 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800DDAE8  2C 03 00 00 */	cmpwi r3, 0
/* 800DDAEC  41 82 00 14 */	beq lbl_800DDB00
/* 800DDAF0  C0 3F 34 80 */	lfs f1, 0x3480(r31)
/* 800DDAF4  C0 1F 34 34 */	lfs f0, 0x3434(r31)
/* 800DDAF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800DDAFC  D0 1F 34 80 */	stfs f0, 0x3480(r31)
lbl_800DDB00:
/* 800DDB00  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800DDB04  28 00 00 4B */	cmplwi r0, 0x4b
/* 800DDB08  40 82 00 14 */	bne lbl_800DDB1C
/* 800DDB0C  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800DDB10  D0 1F 34 84 */	stfs f0, 0x3484(r31)
/* 800DDB14  D0 1F 34 88 */	stfs f0, 0x3488(r31)
/* 800DDB18  48 00 00 14 */	b lbl_800DDB2C
lbl_800DDB1C:
/* 800DDB1C  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 800DDB20  D0 1F 34 84 */	stfs f0, 0x3484(r31)
/* 800DDB24  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 800DDB28  D0 1F 34 88 */	stfs f0, 0x3488(r31)
lbl_800DDB2C:
/* 800DDB2C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DDB30  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800DDB34  7F E3 FB 78 */	mr r3, r31
/* 800DDB38  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010093@ha */
/* 800DDB3C  38 84 00 93 */	addi r4, r4, 0x0093 /* 0x00010093@l */
/* 800DDB40  4B FF 47 45 */	bl setSwordVoiceSe__9daAlink_cFUl
/* 800DDB44  38 7F 15 F8 */	addi r3, r31, 0x15f8
/* 800DDB48  4B FA 67 D1 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800DDB4C  38 00 00 02 */	li r0, 2
/* 800DDB50  98 1F 16 6C */	stb r0, 0x166c(r31)
/* 800DDB54  3C 60 80 39 */	lis r3, m__19daAlinkHIO_guard_c0@ha /* 0x8038DF9C@ha */
/* 800DDB58  38 63 DF 9C */	addi r3, r3, m__19daAlinkHIO_guard_c0@l /* 0x8038DF9C@l */
/* 800DDB5C  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 800DDB60  D0 1F 17 38 */	stfs f0, 0x1738(r31)
/* 800DDB64  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800DDB68  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800DDB6C  7F E3 FB 78 */	mr r3, r31
/* 800DDB70  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800DDB74  4B FF F4 95 */	bl setUpperGuardAnime__9daAlink_cFf
/* 800DDB78  38 00 00 00 */	li r0, 0
/* 800DDB7C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800DDB80  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800DDB84  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 800DDB88  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800DDB8C  38 60 00 01 */	li r3, 1
lbl_800DDB90:
/* 800DDB90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DDB94  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DDB98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DDB9C  7C 08 03 A6 */	mtlr r0
/* 800DDBA0  38 21 00 10 */	addi r1, r1, 0x10
/* 800DDBA4  4E 80 00 20 */	blr 
