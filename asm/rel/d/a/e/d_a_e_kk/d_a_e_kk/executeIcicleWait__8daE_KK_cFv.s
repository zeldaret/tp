lbl_806FB908:
/* 806FB908  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806FB90C  7C 08 02 A6 */	mflr r0
/* 806FB910  90 01 00 24 */	stw r0, 0x24(r1)
/* 806FB914  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806FB918  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806FB91C  7C 7E 1B 78 */	mr r30, r3
/* 806FB920  3C 80 80 70 */	lis r4, lit_3792@ha
/* 806FB924  3B E4 F5 E8 */	addi r31, r4, lit_3792@l
/* 806FB928  80 03 06 64 */	lwz r0, 0x664(r3)
/* 806FB92C  2C 00 00 01 */	cmpwi r0, 1
/* 806FB930  41 82 00 6C */	beq lbl_806FB99C
/* 806FB934  40 80 00 10 */	bge lbl_806FB944
/* 806FB938  2C 00 00 00 */	cmpwi r0, 0
/* 806FB93C  40 80 00 14 */	bge lbl_806FB950
/* 806FB940  48 00 01 C4 */	b lbl_806FBB04
lbl_806FB944:
/* 806FB944  2C 00 00 03 */	cmpwi r0, 3
/* 806FB948  40 80 01 BC */	bge lbl_806FBB04
/* 806FB94C  48 00 00 C0 */	b lbl_806FBA0C
lbl_806FB950:
/* 806FB950  38 80 00 04 */	li r4, 4
/* 806FB954  38 A0 00 00 */	li r5, 0
/* 806FB958  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806FB95C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FB960  4B FF F1 09 */	bl setBck__8daE_KK_cFiUcff
/* 806FB964  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070383@ha */
/* 806FB968  38 03 03 83 */	addi r0, r3, 0x0383 /* 0x00070383@l */
/* 806FB96C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FB970  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FB974  38 81 00 0C */	addi r4, r1, 0xc
/* 806FB978  38 A0 00 00 */	li r5, 0
/* 806FB97C  38 C0 FF FF */	li r6, -1
/* 806FB980  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FB984  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FB988  7D 89 03 A6 */	mtctr r12
/* 806FB98C  4E 80 04 21 */	bctrl 
/* 806FB990  38 00 00 01 */	li r0, 1
/* 806FB994  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FB998  48 00 01 6C */	b lbl_806FBB04
lbl_806FB99C:
/* 806FB99C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FB9A0  38 80 00 01 */	li r4, 1
/* 806FB9A4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FB9A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FB9AC  40 82 00 18 */	bne lbl_806FB9C4
/* 806FB9B0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FB9B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FB9B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FB9BC  41 82 00 08 */	beq lbl_806FB9C4
/* 806FB9C0  38 80 00 00 */	li r4, 0
lbl_806FB9C4:
/* 806FB9C4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FB9C8  41 82 01 3C */	beq lbl_806FBB04
/* 806FB9CC  7F C3 F3 78 */	mr r3, r30
/* 806FB9D0  38 80 00 13 */	li r4, 0x13
/* 806FB9D4  38 A0 00 00 */	li r5, 0
/* 806FB9D8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FB9DC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FB9E0  4B FF F0 89 */	bl setBck__8daE_KK_cFiUcff
/* 806FB9E4  7F C3 F3 78 */	mr r3, r30
/* 806FB9E8  38 80 00 1E */	li r4, 0x1e
/* 806FB9EC  38 A0 00 00 */	li r5, 0
/* 806FB9F0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FB9F4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FB9F8  4B FF F1 1D */	bl setWeaponBck__8daE_KK_cFiUcff
/* 806FB9FC  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 806FBA00  38 03 00 01 */	addi r0, r3, 1
/* 806FBA04  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FBA08  48 00 00 FC */	b lbl_806FBB04
lbl_806FBA0C:
/* 806FBA0C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806FBA10  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FBA14  FC 00 00 1E */	fctiwz f0, f0
/* 806FBA18  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806FBA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FBA20  2C 00 00 22 */	cmpwi r0, 0x22
/* 806FBA24  41 80 00 54 */	blt lbl_806FBA78
/* 806FBA28  88 1E 06 7D */	lbz r0, 0x67d(r30)
/* 806FBA2C  28 00 00 00 */	cmplwi r0, 0
/* 806FBA30  41 82 00 30 */	beq lbl_806FBA60
/* 806FBA34  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070382@ha */
/* 806FBA38  38 03 03 82 */	addi r0, r3, 0x0382 /* 0x00070382@l */
/* 806FBA3C  90 01 00 08 */	stw r0, 8(r1)
/* 806FBA40  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FBA44  38 81 00 08 */	addi r4, r1, 8
/* 806FBA48  38 A0 00 00 */	li r5, 0
/* 806FBA4C  38 C0 FF FF */	li r6, -1
/* 806FBA50  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FBA54  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FBA58  7D 89 03 A6 */	mtctr r12
/* 806FBA5C  4E 80 04 21 */	bctrl 
lbl_806FBA60:
/* 806FBA60  38 60 00 00 */	li r3, 0
/* 806FBA64  98 7E 06 7D */	stb r3, 0x67d(r30)
/* 806FBA68  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FBA6C  60 00 00 04 */	ori r0, r0, 4
/* 806FBA70  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FBA74  98 7E 07 6C */	stb r3, 0x76c(r30)
lbl_806FBA78:
/* 806FBA78  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FBA7C  38 80 00 01 */	li r4, 1
/* 806FBA80  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FBA84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FBA88  40 82 00 18 */	bne lbl_806FBAA0
/* 806FBA8C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FBA90  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FBA94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FBA98  41 82 00 08 */	beq lbl_806FBAA0
/* 806FBA9C  38 80 00 00 */	li r4, 0
lbl_806FBAA0:
/* 806FBAA0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FBAA4  41 82 00 60 */	beq lbl_806FBB04
/* 806FBAA8  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806FBAAC  38 80 00 01 */	li r4, 1
/* 806FBAB0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FBAB4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FBAB8  40 82 00 18 */	bne lbl_806FBAD0
/* 806FBABC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FBAC0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FBAC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FBAC8  41 82 00 08 */	beq lbl_806FBAD0
/* 806FBACC  38 80 00 00 */	li r4, 0
lbl_806FBAD0:
/* 806FBAD0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FBAD4  41 82 00 30 */	beq lbl_806FBB04
/* 806FBAD8  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FBADC  60 00 00 04 */	ori r0, r0, 4
/* 806FBAE0  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FBAE4  38 00 00 00 */	li r0, 0
/* 806FBAE8  98 1E 06 7D */	stb r0, 0x67d(r30)
/* 806FBAEC  98 1E 07 6C */	stb r0, 0x76c(r30)
/* 806FBAF0  7F C3 F3 78 */	mr r3, r30
/* 806FBAF4  4B FF F7 F9 */	bl nextActionCheck__8daE_KK_cFv
/* 806FBAF8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806FBAFC  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 806FBB00  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_806FBB04:
/* 806FBB04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806FBB08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806FBB0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FBB10  7C 08 03 A6 */	mtlr r0
/* 806FBB14  38 21 00 20 */	addi r1, r1, 0x20
/* 806FBB18  4E 80 00 20 */	blr 
