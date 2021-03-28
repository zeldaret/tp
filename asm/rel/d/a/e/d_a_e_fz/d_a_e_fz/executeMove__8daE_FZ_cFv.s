lbl_806BF8E8:
/* 806BF8E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806BF8EC  7C 08 02 A6 */	mflr r0
/* 806BF8F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BF8F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806BF8F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806BF8FC  7C 7F 1B 78 */	mr r31, r3
/* 806BF900  3C 60 80 6C */	lis r3, lit_3803@ha
/* 806BF904  3B C3 19 38 */	addi r30, r3, lit_3803@l
/* 806BF908  80 1F 06 F8 */	lwz r0, 0x6f8(r31)
/* 806BF90C  2C 00 00 01 */	cmpwi r0, 1
/* 806BF910  41 82 00 68 */	beq lbl_806BF978
/* 806BF914  40 80 00 C8 */	bge lbl_806BF9DC
/* 806BF918  2C 00 00 00 */	cmpwi r0, 0
/* 806BF91C  40 80 00 08 */	bge lbl_806BF924
/* 806BF920  48 00 00 BC */	b lbl_806BF9DC
lbl_806BF924:
/* 806BF924  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806BF928  38 63 1B B0 */	addi r3, r3, l_HIO@l
/* 806BF92C  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 806BF930  4B BA 80 5C */	b cM_rndFX__Ff
/* 806BF934  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806BF938  38 63 1B B0 */	addi r3, r3, l_HIO@l
/* 806BF93C  A8 03 00 08 */	lha r0, 8(r3)
/* 806BF940  C8 5E 00 78 */	lfd f2, 0x78(r30)
/* 806BF944  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806BF948  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BF94C  3C 00 43 30 */	lis r0, 0x4330
/* 806BF950  90 01 00 08 */	stw r0, 8(r1)
/* 806BF954  C8 01 00 08 */	lfd f0, 8(r1)
/* 806BF958  EC 00 10 28 */	fsubs f0, f0, f2
/* 806BF95C  EC 00 08 2A */	fadds f0, f0, f1
/* 806BF960  FC 00 00 1E */	fctiwz f0, f0
/* 806BF964  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806BF968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BF96C  98 1F 07 10 */	stb r0, 0x710(r31)
/* 806BF970  38 00 00 01 */	li r0, 1
/* 806BF974  90 1F 06 F8 */	stw r0, 0x6f8(r31)
lbl_806BF978:
/* 806BF978  38 7F 04 DE */	addi r3, r31, 0x4de
/* 806BF97C  A8 9F 07 06 */	lha r4, 0x706(r31)
/* 806BF980  38 A0 00 08 */	li r5, 8
/* 806BF984  38 C0 01 00 */	li r6, 0x100
/* 806BF988  4B BB 0C 80 */	b cLib_addCalcAngleS2__FPssss
/* 806BF98C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806BF990  3C 80 80 6C */	lis r4, l_HIO@ha
/* 806BF994  38 84 1B B0 */	addi r4, r4, l_HIO@l
/* 806BF998  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 806BF99C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806BF9A0  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 806BF9A4  4B BB 00 98 */	b cLib_addCalc2__FPffff
/* 806BF9A8  7F E3 FB 78 */	mr r3, r31
/* 806BF9AC  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 806BF9B0  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 806BF9B4  4B 95 D5 1C */	b fopAcM_wayBgCheck__FPC10fopAc_ac_cff
/* 806BF9B8  2C 03 00 00 */	cmpwi r3, 0
/* 806BF9BC  40 82 00 10 */	bne lbl_806BF9CC
/* 806BF9C0  88 1F 07 10 */	lbz r0, 0x710(r31)
/* 806BF9C4  28 00 00 00 */	cmplwi r0, 0
/* 806BF9C8  40 82 00 14 */	bne lbl_806BF9DC
lbl_806BF9CC:
/* 806BF9CC  7F E3 FB 78 */	mr r3, r31
/* 806BF9D0  38 80 00 00 */	li r4, 0
/* 806BF9D4  38 A0 00 00 */	li r5, 0
/* 806BF9D8  4B FF F1 21 */	bl setActionMode__8daE_FZ_cFii
lbl_806BF9DC:
/* 806BF9DC  7F E3 FB 78 */	mr r3, r31
/* 806BF9E0  4B FF FA 65 */	bl way_gake_check__8daE_FZ_cFv
/* 806BF9E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BF9E8  41 82 00 20 */	beq lbl_806BFA08
/* 806BF9EC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806BF9F0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 806BF9F4  7F E3 FB 78 */	mr r3, r31
/* 806BF9F8  38 80 00 00 */	li r4, 0
/* 806BF9FC  38 A0 00 00 */	li r5, 0
/* 806BFA00  4B FF F0 F9 */	bl setActionMode__8daE_FZ_cFii
/* 806BFA04  48 00 00 48 */	b lbl_806BFA4C
lbl_806BFA08:
/* 806BFA08  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 806BFA0C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 806BFA10  7F E3 FB 78 */	mr r3, r31
/* 806BFA14  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806BFA18  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806BFA1C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806BFA20  4B 95 AD C0 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BFA24  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806BFA28  38 63 1B B0 */	addi r3, r3, l_HIO@l
/* 806BFA2C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 806BFA30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BFA34  4C 40 13 82 */	cror 2, 0, 2
/* 806BFA38  40 82 00 14 */	bne lbl_806BFA4C
/* 806BFA3C  7F E3 FB 78 */	mr r3, r31
/* 806BFA40  38 80 00 02 */	li r4, 2
/* 806BFA44  38 A0 00 00 */	li r5, 0
/* 806BFA48  4B FF F0 B1 */	bl setActionMode__8daE_FZ_cFii
lbl_806BFA4C:
/* 806BFA4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806BFA50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806BFA54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806BFA58  7C 08 03 A6 */	mtlr r0
/* 806BFA5C  38 21 00 20 */	addi r1, r1, 0x20
/* 806BFA60  4E 80 00 20 */	blr 
