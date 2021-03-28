lbl_806FC8F4:
/* 806FC8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FC8F8  7C 08 02 A6 */	mflr r0
/* 806FC8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FC900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FC904  93 C1 00 08 */	stw r30, 8(r1)
/* 806FC908  7C 7F 1B 78 */	mr r31, r3
/* 806FC90C  3C 80 80 70 */	lis r4, lit_3792@ha
/* 806FC910  3B C4 F5 E8 */	addi r30, r4, lit_3792@l
/* 806FC914  80 03 06 64 */	lwz r0, 0x664(r3)
/* 806FC918  2C 00 00 01 */	cmpwi r0, 1
/* 806FC91C  41 82 00 8C */	beq lbl_806FC9A8
/* 806FC920  40 80 00 C0 */	bge lbl_806FC9E0
/* 806FC924  2C 00 00 00 */	cmpwi r0, 0
/* 806FC928  40 80 00 08 */	bge lbl_806FC930
/* 806FC92C  48 00 00 B4 */	b lbl_806FC9E0
lbl_806FC930:
/* 806FC930  38 80 00 1D */	li r4, 0x1d
/* 806FC934  38 A0 00 00 */	li r5, 0
/* 806FC938  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806FC93C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806FC940  4B FF E1 D5 */	bl setWeaponBck__8daE_KK_cFiUcff
/* 806FC944  88 1F 06 7C */	lbz r0, 0x67c(r31)
/* 806FC948  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 806FC94C  98 1F 06 7C */	stb r0, 0x67c(r31)
/* 806FC950  88 1F 06 7C */	lbz r0, 0x67c(r31)
/* 806FC954  28 00 00 00 */	cmplwi r0, 0
/* 806FC958  40 82 00 20 */	bne lbl_806FC978
/* 806FC95C  7F E3 FB 78 */	mr r3, r31
/* 806FC960  38 80 00 10 */	li r4, 0x10
/* 806FC964  38 A0 00 00 */	li r5, 0
/* 806FC968  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806FC96C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806FC970  4B FF E0 F9 */	bl setBck__8daE_KK_cFiUcff
/* 806FC974  48 00 00 1C */	b lbl_806FC990
lbl_806FC978:
/* 806FC978  7F E3 FB 78 */	mr r3, r31
/* 806FC97C  38 80 00 11 */	li r4, 0x11
/* 806FC980  38 A0 00 00 */	li r5, 0
/* 806FC984  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806FC988  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806FC98C  4B FF E0 DD */	bl setBck__8daE_KK_cFiUcff
lbl_806FC990:
/* 806FC990  88 7F 06 7C */	lbz r3, 0x67c(r31)
/* 806FC994  38 03 00 01 */	addi r0, r3, 1
/* 806FC998  98 1F 06 7C */	stb r0, 0x67c(r31)
/* 806FC99C  38 00 00 01 */	li r0, 1
/* 806FC9A0  90 1F 06 64 */	stw r0, 0x664(r31)
/* 806FC9A4  48 00 00 3C */	b lbl_806FC9E0
lbl_806FC9A8:
/* 806FC9A8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806FC9AC  38 80 00 01 */	li r4, 1
/* 806FC9B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FC9B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FC9B8  40 82 00 18 */	bne lbl_806FC9D0
/* 806FC9BC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806FC9C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FC9C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FC9C8  41 82 00 08 */	beq lbl_806FC9D0
/* 806FC9CC  38 80 00 00 */	li r4, 0
lbl_806FC9D0:
/* 806FC9D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FC9D4  41 82 00 0C */	beq lbl_806FC9E0
/* 806FC9D8  7F E3 FB 78 */	mr r3, r31
/* 806FC9DC  4B FF E9 11 */	bl nextActionCheck__8daE_KK_cFv
lbl_806FC9E0:
/* 806FC9E0  7F E3 FB 78 */	mr r3, r31
/* 806FC9E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806FC9E8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806FC9EC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806FC9F0  4B 91 DD 20 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FC9F4  7C 64 1B 78 */	mr r4, r3
/* 806FC9F8  38 7F 04 DE */	addi r3, r31, 0x4de
/* 806FC9FC  38 A0 00 08 */	li r5, 8
/* 806FCA00  38 C0 05 00 */	li r6, 0x500
/* 806FCA04  4B B7 3C 04 */	b cLib_addCalcAngleS2__FPssss
/* 806FCA08  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 806FCA0C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 806FCA10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FCA14  83 C1 00 08 */	lwz r30, 8(r1)
/* 806FCA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FCA1C  7C 08 03 A6 */	mtlr r0
/* 806FCA20  38 21 00 10 */	addi r1, r1, 0x10
/* 806FCA24  4E 80 00 20 */	blr 
