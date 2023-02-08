lbl_800AFCF0:
/* 800AFCF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800AFCF4  7C 08 02 A6 */	mflr r0
/* 800AFCF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800AFCFC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800AFD00  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800AFD04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800AFD08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800AFD0C  7C 7E 1B 78 */	mr r30, r3
/* 800AFD10  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800AFD14  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800AFD18  41 82 00 24 */	beq lbl_800AFD3C
/* 800AFD1C  A0 1E 21 1A */	lhz r0, 0x211a(r30)
/* 800AFD20  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AFD24  41 82 00 18 */	beq lbl_800AFD3C
/* 800AFD28  80 7E 21 54 */	lwz r3, 0x2154(r30)
/* 800AFD2C  4B FF 95 1D */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800AFD30  80 7E 21 58 */	lwz r3, 0x2158(r30)
/* 800AFD34  4B FF 95 15 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800AFD38  48 00 01 78 */	b lbl_800AFEB0
lbl_800AFD3C:
/* 800AFD3C  A0 1E 21 1A */	lhz r0, 0x211a(r30)
/* 800AFD40  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AFD44  41 82 00 18 */	beq lbl_800AFD5C
/* 800AFD48  C0 1E 20 58 */	lfs f0, 0x2058(r30)
/* 800AFD4C  FC 00 00 1E */	fctiwz f0, f0
/* 800AFD50  D8 01 00 08 */	stfd f0, 8(r1)
/* 800AFD54  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800AFD58  48 00 00 E0 */	b lbl_800AFE38
lbl_800AFD5C:
/* 800AFD5C  7F C3 F3 78 */	mr r3, r30
/* 800AFD60  38 80 01 12 */	li r4, 0x112
/* 800AFD64  4B FF C7 F5 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800AFD68  2C 03 00 00 */	cmpwi r3, 0
/* 800AFD6C  41 82 00 14 */	beq lbl_800AFD80
/* 800AFD70  80 7E 21 58 */	lwz r3, 0x2158(r30)
/* 800AFD74  A8 03 00 06 */	lha r0, 6(r3)
/* 800AFD78  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 800AFD7C  48 00 00 BC */	b lbl_800AFE38
lbl_800AFD80:
/* 800AFD80  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800AFD84  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800AFD88  40 82 00 3C */	bne lbl_800AFDC4
/* 800AFD8C  80 7E 1F 2C */	lwz r3, 0x1f2c(r30)
/* 800AFD90  80 1E 1F 44 */	lwz r0, 0x1f44(r30)
/* 800AFD94  7C 03 00 40 */	cmplw r3, r0
/* 800AFD98  41 82 00 18 */	beq lbl_800AFDB0
/* 800AFD9C  C0 1E 20 28 */	lfs f0, 0x2028(r30)
/* 800AFDA0  FC 00 00 1E */	fctiwz f0, f0
/* 800AFDA4  D8 01 00 08 */	stfd f0, 8(r1)
/* 800AFDA8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800AFDAC  48 00 00 8C */	b lbl_800AFE38
lbl_800AFDB0:
/* 800AFDB0  C0 1E 1F E0 */	lfs f0, 0x1fe0(r30)
/* 800AFDB4  FC 00 00 1E */	fctiwz f0, f0
/* 800AFDB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 800AFDBC  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800AFDC0  48 00 00 78 */	b lbl_800AFE38
lbl_800AFDC4:
/* 800AFDC4  80 7E 21 58 */	lwz r3, 0x2158(r30)
/* 800AFDC8  A8 A3 00 06 */	lha r5, 6(r3)
/* 800AFDCC  80 7E 21 54 */	lwz r3, 0x2154(r30)
/* 800AFDD0  A8 83 00 06 */	lha r4, 6(r3)
/* 800AFDD4  7C 83 07 34 */	extsh r3, r4
/* 800AFDD8  7C A0 07 34 */	extsh r0, r5
/* 800AFDDC  7C 03 00 00 */	cmpw r3, r0
/* 800AFDE0  40 81 00 08 */	ble lbl_800AFDE8
/* 800AFDE4  7C 85 23 78 */	mr r5, r4
lbl_800AFDE8:
/* 800AFDE8  7C A4 07 34 */	extsh r4, r5
/* 800AFDEC  A0 7E 2F EA */	lhz r3, 0x2fea(r30)
/* 800AFDF0  28 03 00 00 */	cmplwi r3, 0
/* 800AFDF4  41 82 00 24 */	beq lbl_800AFE18
/* 800AFDF8  38 03 00 01 */	addi r0, r3, 1
/* 800AFDFC  B0 1E 2F EA */	sth r0, 0x2fea(r30)
/* 800AFE00  A0 1E 2F EA */	lhz r0, 0x2fea(r30)
/* 800AFE04  7C 00 20 00 */	cmpw r0, r4
/* 800AFE08  40 81 00 2C */	ble lbl_800AFE34
/* 800AFE0C  38 00 00 00 */	li r0, 0
/* 800AFE10  B0 1E 2F EA */	sth r0, 0x2fea(r30)
/* 800AFE14  48 00 00 20 */	b lbl_800AFE34
lbl_800AFE18:
/* 800AFE18  48 1B 7A 55 */	bl cM_rnd__Fv
/* 800AFE1C  C0 1E 34 40 */	lfs f0, 0x3440(r30)
/* 800AFE20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AFE24  40 80 00 10 */	bge lbl_800AFE34
/* 800AFE28  A0 7E 2F EA */	lhz r3, 0x2fea(r30)
/* 800AFE2C  38 03 00 01 */	addi r0, r3, 1
/* 800AFE30  B0 1E 2F EA */	sth r0, 0x2fea(r30)
lbl_800AFE34:
/* 800AFE34  A0 DE 2F EA */	lhz r6, 0x2fea(r30)
lbl_800AFE38:
/* 800AFE38  7C C7 33 78 */	mr r7, r6
/* 800AFE3C  80 BE 21 54 */	lwz r5, 0x2154(r30)
/* 800AFE40  A8 85 00 06 */	lha r4, 6(r5)
/* 800AFE44  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 800AFE48  7C 80 07 34 */	extsh r0, r4
/* 800AFE4C  7C 03 00 00 */	cmpw r3, r0
/* 800AFE50  40 81 00 08 */	ble lbl_800AFE58
/* 800AFE54  54 86 04 3E */	clrlwi r6, r4, 0x10
lbl_800AFE58:
/* 800AFE58  80 7E 21 58 */	lwz r3, 0x2158(r30)
/* 800AFE5C  A8 83 00 06 */	lha r4, 6(r3)
/* 800AFE60  54 E3 04 3E */	clrlwi r3, r7, 0x10
/* 800AFE64  7C 80 07 34 */	extsh r0, r4
/* 800AFE68  7C 03 00 00 */	cmpw r3, r0
/* 800AFE6C  40 81 00 08 */	ble lbl_800AFE74
/* 800AFE70  54 87 04 3E */	clrlwi r7, r4, 0x10
lbl_800AFE74:
/* 800AFE74  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 800AFE78  C8 22 96 08 */	lfd f1, lit_32072(r2)
/* 800AFE7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800AFE80  3C 60 43 30 */	lis r3, 0x4330
/* 800AFE84  90 61 00 08 */	stw r3, 8(r1)
/* 800AFE88  C8 01 00 08 */	lfd f0, 8(r1)
/* 800AFE8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800AFE90  D0 05 00 08 */	stfs f0, 8(r5)
/* 800AFE94  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 800AFE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AFE9C  90 61 00 10 */	stw r3, 0x10(r1)
/* 800AFEA0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800AFEA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 800AFEA8  80 7E 21 58 */	lwz r3, 0x2158(r30)
/* 800AFEAC  D0 03 00 08 */	stfs f0, 8(r3)
lbl_800AFEB0:
/* 800AFEB0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 800AFEB4  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 800AFEB8  40 82 01 C0 */	bne lbl_800B0078
/* 800AFEBC  83 FE 21 78 */	lwz r31, 0x2178(r30)
/* 800AFEC0  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 800AFEC4  41 82 00 1C */	beq lbl_800AFEE0
/* 800AFEC8  A0 1E 21 42 */	lhz r0, 0x2142(r30)
/* 800AFECC  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AFED0  41 82 00 10 */	beq lbl_800AFEE0
/* 800AFED4  7F E3 FB 78 */	mr r3, r31
/* 800AFED8  4B FF 93 71 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800AFEDC  48 00 01 9C */	b lbl_800B0078
lbl_800AFEE0:
/* 800AFEE0  7F C3 F3 78 */	mr r3, r30
/* 800AFEE4  38 80 01 12 */	li r4, 0x112
/* 800AFEE8  4B FF C6 71 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800AFEEC  2C 03 00 00 */	cmpwi r3, 0
/* 800AFEF0  41 82 00 28 */	beq lbl_800AFF18
/* 800AFEF4  A8 1F 00 06 */	lha r0, 6(r31)
/* 800AFEF8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800AFEFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800AFF00  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AFF04  3C 00 43 30 */	lis r0, 0x4330
/* 800AFF08  90 01 00 10 */	stw r0, 0x10(r1)
/* 800AFF0C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800AFF10  EF E0 08 28 */	fsubs f31, f0, f1
/* 800AFF14  48 00 00 F4 */	b lbl_800B0008
lbl_800AFF18:
/* 800AFF18  A0 1E 21 42 */	lhz r0, 0x2142(r30)
/* 800AFF1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AFF20  40 82 00 E4 */	bne lbl_800B0004
/* 800AFF24  A0 7E 21 40 */	lhz r3, 0x2140(r30)
/* 800AFF28  A0 1E 21 44 */	lhz r0, 0x2144(r30)
/* 800AFF2C  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AFF30  40 82 00 B4 */	bne lbl_800AFFE4
/* 800AFF34  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 800AFF38  28 03 00 E8 */	cmplwi r3, 0xe8
/* 800AFF3C  40 82 00 0C */	bne lbl_800AFF48
/* 800AFF40  C3 E2 92 B8 */	lfs f31, lit_6040(r2)
/* 800AFF44  48 00 00 C4 */	b lbl_800B0008
lbl_800AFF48:
/* 800AFF48  28 03 01 57 */	cmplwi r3, 0x157
/* 800AFF4C  41 82 00 20 */	beq lbl_800AFF6C
/* 800AFF50  28 03 01 20 */	cmplwi r3, 0x120
/* 800AFF54  41 82 00 18 */	beq lbl_800AFF6C
/* 800AFF58  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800AFF5C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800AFF60  41 82 00 64 */	beq lbl_800AFFC4
/* 800AFF64  28 03 01 60 */	cmplwi r3, 0x160
/* 800AFF68  40 82 00 5C */	bne lbl_800AFFC4
lbl_800AFF6C:
/* 800AFF6C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800AFF70  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800AFF74  EF E1 00 2A */	fadds f31, f1, f0
/* 800AFF78  A8 9F 00 06 */	lha r4, 6(r31)
/* 800AFF7C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800AFF80  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 800AFF84  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AFF88  3C 60 43 30 */	lis r3, 0x4330
/* 800AFF8C  90 61 00 10 */	stw r3, 0x10(r1)
/* 800AFF90  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800AFF94  EC 00 08 28 */	fsubs f0, f0, f1
/* 800AFF98  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800AFF9C  4C 41 13 82 */	cror 2, 1, 2
/* 800AFFA0  40 82 00 68 */	bne lbl_800B0008
/* 800AFFA4  7C 80 07 34 */	extsh r0, r4
/* 800AFFA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800AFFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AFFB0  90 61 00 10 */	stw r3, 0x10(r1)
/* 800AFFB4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800AFFB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 800AFFBC  EF FF 00 28 */	fsubs f31, f31, f0
/* 800AFFC0  48 00 00 48 */	b lbl_800B0008
lbl_800AFFC4:
/* 800AFFC4  80 7E 1F 2C */	lwz r3, 0x1f2c(r30)
/* 800AFFC8  80 1E 1F 44 */	lwz r0, 0x1f44(r30)
/* 800AFFCC  7C 03 00 40 */	cmplw r3, r0
/* 800AFFD0  41 82 00 0C */	beq lbl_800AFFDC
/* 800AFFD4  C3 FE 20 28 */	lfs f31, 0x2028(r30)
/* 800AFFD8  48 00 00 30 */	b lbl_800B0008
lbl_800AFFDC:
/* 800AFFDC  C3 FE 1F E0 */	lfs f31, 0x1fe0(r30)
/* 800AFFE0  48 00 00 28 */	b lbl_800B0008
lbl_800AFFE4:
/* 800AFFE4  80 7E 1F 2C */	lwz r3, 0x1f2c(r30)
/* 800AFFE8  80 1E 1F 44 */	lwz r0, 0x1f44(r30)
/* 800AFFEC  7C 03 00 40 */	cmplw r3, r0
/* 800AFFF0  41 82 00 0C */	beq lbl_800AFFFC
/* 800AFFF4  C3 FE 20 28 */	lfs f31, 0x2028(r30)
/* 800AFFF8  48 00 00 10 */	b lbl_800B0008
lbl_800AFFFC:
/* 800AFFFC  C3 FE 1F E0 */	lfs f31, 0x1fe0(r30)
/* 800B0000  48 00 00 08 */	b lbl_800B0008
lbl_800B0004:
/* 800B0004  C3 FE 20 58 */	lfs f31, 0x2058(r30)
lbl_800B0008:
/* 800B0008  A8 9F 00 06 */	lha r4, 6(r31)
/* 800B000C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800B0010  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 800B0014  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B0018  3C 60 43 30 */	lis r3, 0x4330
/* 800B001C  90 61 00 10 */	stw r3, 0x10(r1)
/* 800B0020  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800B0024  EC 00 08 28 */	fsubs f0, f0, f1
/* 800B0028  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800B002C  40 81 00 1C */	ble lbl_800B0048
/* 800B0030  7C 80 07 34 */	extsh r0, r4
/* 800B0034  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800B0038  90 01 00 0C */	stw r0, 0xc(r1)
/* 800B003C  90 61 00 08 */	stw r3, 8(r1)
/* 800B0040  C8 01 00 08 */	lfd f0, 8(r1)
/* 800B0044  EF E0 08 28 */	fsubs f31, f0, f1
lbl_800B0048:
/* 800B0048  88 1E 2F BF */	lbz r0, 0x2fbf(r30)
/* 800B004C  28 00 00 00 */	cmplwi r0, 0
/* 800B0050  40 82 00 28 */	bne lbl_800B0078
/* 800B0054  7F C3 F3 78 */	mr r3, r30
/* 800B0058  48 05 18 39 */	bl checkZoraWearMaskDraw__9daAlink_cFv
/* 800B005C  2C 03 00 00 */	cmpwi r3, 0
/* 800B0060  40 82 00 18 */	bne lbl_800B0078
/* 800B0064  80 7E 06 54 */	lwz r3, 0x654(r30)
/* 800B0068  80 83 00 04 */	lwz r4, 4(r3)
/* 800B006C  38 7E 21 64 */	addi r3, r30, 0x2164
/* 800B0070  FC 20 F8 90 */	fmr f1, f31
/* 800B0074  4B F5 D9 59 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_800B0078:
/* 800B0078  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800B007C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800B0080  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B0084  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B0088  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B008C  7C 08 03 A6 */	mtlr r0
/* 800B0090  38 21 00 30 */	addi r1, r1, 0x30
/* 800B0094  4E 80 00 20 */	blr 
