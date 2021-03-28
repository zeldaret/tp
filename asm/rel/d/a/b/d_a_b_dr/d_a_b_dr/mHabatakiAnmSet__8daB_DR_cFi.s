lbl_805BC248:
/* 805BC248  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BC24C  7C 08 02 A6 */	mflr r0
/* 805BC250  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BC254  39 61 00 30 */	addi r11, r1, 0x30
/* 805BC258  4B DA 5F 84 */	b _savegpr_29
/* 805BC25C  7C 7D 1B 78 */	mr r29, r3
/* 805BC260  7C 9E 23 78 */	mr r30, r4
/* 805BC264  3C 80 80 5C */	lis r4, lit_3800@ha
/* 805BC268  3B E4 6C 74 */	addi r31, r4, lit_3800@l
/* 805BC26C  80 83 07 10 */	lwz r4, 0x710(r3)
/* 805BC270  38 04 FF EC */	addi r0, r4, -20
/* 805BC274  28 00 00 21 */	cmplwi r0, 0x21
/* 805BC278  41 81 02 68 */	bgt lbl_805BC4E0
/* 805BC27C  3C 80 80 5C */	lis r4, lit_4528@ha
/* 805BC280  38 84 75 5C */	addi r4, r4, lit_4528@l
/* 805BC284  54 00 10 3A */	slwi r0, r0, 2
/* 805BC288  7C 04 00 2E */	lwzx r0, r4, r0
/* 805BC28C  7C 09 03 A6 */	mtctr r0
/* 805BC290  4E 80 04 20 */	bctr 
lbl_805BC294:
/* 805BC294  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BC298  38 80 00 01 */	li r4, 1
/* 805BC29C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BC2A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BC2A4  40 82 00 18 */	bne lbl_805BC2BC
/* 805BC2A8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BC2AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BC2B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BC2B4  41 82 00 08 */	beq lbl_805BC2BC
/* 805BC2B8  38 80 00 00 */	li r4, 0
lbl_805BC2BC:
/* 805BC2BC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BC2C0  41 82 02 A4 */	beq lbl_805BC564
/* 805BC2C4  7F A3 EB 78 */	mr r3, r29
/* 805BC2C8  38 80 00 31 */	li r4, 0x31
/* 805BC2CC  38 A0 00 02 */	li r5, 2
/* 805BC2D0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC2D4  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC2D8  4B FF F1 31 */	bl setBck__8daB_DR_cFiUcff
/* 805BC2DC  48 00 02 88 */	b lbl_805BC564
lbl_805BC2E0:
/* 805BC2E0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BC2E4  38 80 00 01 */	li r4, 1
/* 805BC2E8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BC2EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BC2F0  40 82 00 18 */	bne lbl_805BC308
/* 805BC2F4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BC2F8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BC2FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BC300  41 82 00 08 */	beq lbl_805BC308
/* 805BC304  38 80 00 00 */	li r4, 0
lbl_805BC308:
/* 805BC308  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BC30C  41 82 02 58 */	beq lbl_805BC564
/* 805BC310  7F A3 EB 78 */	mr r3, r29
/* 805BC314  38 80 00 14 */	li r4, 0x14
/* 805BC318  38 A0 00 00 */	li r5, 0
/* 805BC31C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC320  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC324  4B FF F0 E5 */	bl setBck__8daB_DR_cFiUcff
/* 805BC328  48 00 02 3C */	b lbl_805BC564
lbl_805BC32C:
/* 805BC32C  38 80 00 14 */	li r4, 0x14
/* 805BC330  38 A0 00 00 */	li r5, 0
/* 805BC334  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC338  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC33C  4B FF F0 CD */	bl setBck__8daB_DR_cFiUcff
/* 805BC340  48 00 02 24 */	b lbl_805BC564
lbl_805BC344:
/* 805BC344  80 9D 05 B4 */	lwz r4, 0x5b4(r29)
/* 805BC348  A8 04 00 14 */	lha r0, 0x14(r4)
/* 805BC34C  C8 3F 03 58 */	lfd f1, 0x358(r31)
/* 805BC350  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805BC354  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BC358  3C 00 43 30 */	lis r0, 0x4330
/* 805BC35C  90 01 00 08 */	stw r0, 8(r1)
/* 805BC360  C8 01 00 08 */	lfd f0, 8(r1)
/* 805BC364  EC 20 08 28 */	fsubs f1, f0, f1
/* 805BC368  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805BC36C  FC 00 00 1E */	fctiwz f0, f0
/* 805BC370  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805BC374  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805BC378  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC37C  EC 01 10 28 */	fsubs f0, f1, f2
/* 805BC380  FC 00 00 1E */	fctiwz f0, f0
/* 805BC384  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805BC388  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BC38C  7C 04 00 00 */	cmpw r4, r0
/* 805BC390  41 80 01 D4 */	blt lbl_805BC564
/* 805BC394  38 80 00 14 */	li r4, 0x14
/* 805BC398  38 A0 00 00 */	li r5, 0
/* 805BC39C  3C C0 80 5C */	lis r6, l_HIO@ha
/* 805BC3A0  38 C6 79 0C */	addi r6, r6, l_HIO@l
/* 805BC3A4  C0 26 00 2C */	lfs f1, 0x2c(r6)
/* 805BC3A8  4B FF F0 61 */	bl setBck__8daB_DR_cFiUcff
/* 805BC3AC  48 00 01 B8 */	b lbl_805BC564
lbl_805BC3B0:
/* 805BC3B0  80 9D 05 B4 */	lwz r4, 0x5b4(r29)
/* 805BC3B4  A8 04 00 14 */	lha r0, 0x14(r4)
/* 805BC3B8  C8 3F 03 58 */	lfd f1, 0x358(r31)
/* 805BC3BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805BC3C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805BC3C4  3C 00 43 30 */	lis r0, 0x4330
/* 805BC3C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 805BC3CC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805BC3D0  EC 20 08 28 */	fsubs f1, f0, f1
/* 805BC3D4  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805BC3D8  FC 00 00 1E */	fctiwz f0, f0
/* 805BC3DC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805BC3E0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805BC3E4  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC3E8  EC 01 10 28 */	fsubs f0, f1, f2
/* 805BC3EC  FC 00 00 1E */	fctiwz f0, f0
/* 805BC3F0  D8 01 00 08 */	stfd f0, 8(r1)
/* 805BC3F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805BC3F8  7C 04 00 00 */	cmpw r4, r0
/* 805BC3FC  41 80 01 68 */	blt lbl_805BC564
/* 805BC400  2C 1E 00 05 */	cmpwi r30, 5
/* 805BC404  41 82 00 20 */	beq lbl_805BC424
/* 805BC408  2C 1E 00 06 */	cmpwi r30, 6
/* 805BC40C  41 82 00 18 */	beq lbl_805BC424
/* 805BC410  38 80 00 2E */	li r4, 0x2e
/* 805BC414  38 A0 00 00 */	li r5, 0
/* 805BC418  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC41C  4B FF EF ED */	bl setBck__8daB_DR_cFiUcff
/* 805BC420  48 00 01 44 */	b lbl_805BC564
lbl_805BC424:
/* 805BC424  7F A3 EB 78 */	mr r3, r29
/* 805BC428  38 80 00 35 */	li r4, 0x35
/* 805BC42C  38 A0 00 02 */	li r5, 2
/* 805BC430  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC434  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC438  4B FF EF D1 */	bl setBck__8daB_DR_cFiUcff
/* 805BC43C  48 00 01 28 */	b lbl_805BC564
lbl_805BC440:
/* 805BC440  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BC444  38 80 00 01 */	li r4, 1
/* 805BC448  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BC44C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BC450  40 82 00 18 */	bne lbl_805BC468
/* 805BC454  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BC458  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BC45C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BC460  41 82 00 08 */	beq lbl_805BC468
/* 805BC464  38 80 00 00 */	li r4, 0
lbl_805BC468:
/* 805BC468  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BC46C  41 82 00 F8 */	beq lbl_805BC564
/* 805BC470  7F A3 EB 78 */	mr r3, r29
/* 805BC474  38 80 00 2F */	li r4, 0x2f
/* 805BC478  38 A0 00 02 */	li r5, 2
/* 805BC47C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805BC480  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC484  4B FF EF 85 */	bl setBck__8daB_DR_cFiUcff
/* 805BC488  48 00 00 DC */	b lbl_805BC564
lbl_805BC48C:
/* 805BC48C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BC490  38 80 00 01 */	li r4, 1
/* 805BC494  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805BC498  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BC49C  40 82 00 18 */	bne lbl_805BC4B4
/* 805BC4A0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BC4A4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805BC4A8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BC4AC  41 82 00 08 */	beq lbl_805BC4B4
/* 805BC4B0  38 80 00 00 */	li r4, 0
lbl_805BC4B4:
/* 805BC4B4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805BC4B8  41 82 00 AC */	beq lbl_805BC564
/* 805BC4BC  2C 1E 00 04 */	cmpwi r30, 4
/* 805BC4C0  40 82 00 20 */	bne lbl_805BC4E0
/* 805BC4C4  7F A3 EB 78 */	mr r3, r29
/* 805BC4C8  38 80 00 2D */	li r4, 0x2d
/* 805BC4CC  38 A0 00 02 */	li r5, 2
/* 805BC4D0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC4D4  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC4D8  4B FF EF 31 */	bl setBck__8daB_DR_cFiUcff
/* 805BC4DC  48 00 00 88 */	b lbl_805BC564
lbl_805BC4E0:
/* 805BC4E0  7F A3 EB 78 */	mr r3, r29
/* 805BC4E4  38 80 00 35 */	li r4, 0x35
/* 805BC4E8  38 A0 00 02 */	li r5, 2
/* 805BC4EC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC4F0  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC4F4  4B FF EF 15 */	bl setBck__8daB_DR_cFiUcff
lbl_805BC4F8:
/* 805BC4F8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BC4FC  A8 03 00 14 */	lha r0, 0x14(r3)
/* 805BC500  C8 3F 03 58 */	lfd f1, 0x358(r31)
/* 805BC504  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805BC508  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805BC50C  3C 00 43 30 */	lis r0, 0x4330
/* 805BC510  90 01 00 18 */	stw r0, 0x18(r1)
/* 805BC514  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805BC518  EC 20 08 28 */	fsubs f1, f0, f1
/* 805BC51C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BC520  FC 00 00 1E */	fctiwz f0, f0
/* 805BC524  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805BC528  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805BC52C  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805BC530  EC 01 10 28 */	fsubs f0, f1, f2
/* 805BC534  FC 00 00 1E */	fctiwz f0, f0
/* 805BC538  D8 01 00 08 */	stfd f0, 8(r1)
/* 805BC53C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805BC540  7C 03 00 00 */	cmpw r3, r0
/* 805BC544  41 80 00 20 */	blt lbl_805BC564
/* 805BC548  2C 1E 00 04 */	cmpwi r30, 4
/* 805BC54C  40 82 00 18 */	bne lbl_805BC564
/* 805BC550  7F A3 EB 78 */	mr r3, r29
/* 805BC554  38 80 00 2D */	li r4, 0x2d
/* 805BC558  38 A0 00 02 */	li r5, 2
/* 805BC55C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BC560  4B FF EE A9 */	bl setBck__8daB_DR_cFiUcff
lbl_805BC564:
/* 805BC564  39 61 00 30 */	addi r11, r1, 0x30
/* 805BC568  4B DA 5C C0 */	b _restgpr_29
/* 805BC56C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BC570  7C 08 03 A6 */	mtlr r0
/* 805BC574  38 21 00 30 */	addi r1, r1, 0x30
/* 805BC578  4E 80 00 20 */	blr 
