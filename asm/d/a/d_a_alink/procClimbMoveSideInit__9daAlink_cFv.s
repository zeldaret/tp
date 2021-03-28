lbl_800FFDB0:
/* 800FFDB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800FFDB4  7C 08 02 A6 */	mflr r0
/* 800FFDB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800FFDBC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800FFDC0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800FFDC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FFDC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FFDCC  7C 7E 1B 78 */	mr r30, r3
/* 800FFDD0  4B FF E2 65 */	bl getClimbMoveSideAnmSpeed__9daAlink_cFv
/* 800FFDD4  FF E0 08 90 */	fmr f31, f1
/* 800FFDD8  7F C3 F3 78 */	mr r3, r30
/* 800FFDDC  38 80 00 83 */	li r4, 0x83
/* 800FFDE0  4B FC 21 8D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FFDE4  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 800FFDE8  28 00 00 03 */	cmplwi r0, 3
/* 800FFDEC  40 82 00 18 */	bne lbl_800FFE04
/* 800FFDF0  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800FFDF4  D0 1E 33 F0 */	stfs f0, 0x33f0(r30)
/* 800FFDF8  38 00 E8 00 */	li r0, -6144
/* 800FFDFC  B0 1E 30 A2 */	sth r0, 0x30a2(r30)
/* 800FFE00  48 00 00 14 */	b lbl_800FFE14
lbl_800FFE04:
/* 800FFE04  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800FFE08  D0 1E 33 F0 */	stfs f0, 0x33f0(r30)
/* 800FFE0C  38 00 18 00 */	li r0, 0x1800
/* 800FFE10  B0 1E 30 A2 */	sth r0, 0x30a2(r30)
lbl_800FFE14:
/* 800FFE14  38 00 00 0B */	li r0, 0xb
/* 800FFE18  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800FFE1C  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 800FFE20  28 00 00 02 */	cmplwi r0, 2
/* 800FFE24  3B E0 00 A6 */	li r31, 0xa6
/* 800FFE28  40 82 00 08 */	bne lbl_800FFE30
/* 800FFE2C  3B E0 00 A5 */	li r31, 0xa5
lbl_800FFE30:
/* 800FFE30  7F C3 F3 78 */	mr r3, r30
/* 800FFE34  38 80 00 A4 */	li r4, 0xa4
/* 800FFE38  4B FA C7 21 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800FFE3C  2C 03 00 00 */	cmpwi r3, 0
/* 800FFE40  40 82 00 38 */	bne lbl_800FFE78
/* 800FFE44  7F C3 F3 78 */	mr r3, r30
/* 800FFE48  38 80 00 A3 */	li r4, 0xa3
/* 800FFE4C  4B FA C7 0D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800FFE50  2C 03 00 00 */	cmpwi r3, 0
/* 800FFE54  40 82 00 24 */	bne lbl_800FFE78
/* 800FFE58  7F C3 F3 78 */	mr r3, r30
/* 800FFE5C  7F E4 FB 78 */	mr r4, r31
/* 800FFE60  FC 20 F8 90 */	fmr f1, f31
/* 800FFE64  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800FFE68  4B FA D1 79 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800FFE6C  38 00 00 00 */	li r0, 0
/* 800FFE70  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800FFE74  48 00 00 1C */	b lbl_800FFE90
lbl_800FFE78:
/* 800FFE78  93 FE 31 98 */	stw r31, 0x3198(r30)
/* 800FFE7C  7F C3 F3 78 */	mr r3, r30
/* 800FFE80  38 80 00 A2 */	li r4, 0xa2
/* 800FFE84  FC 20 F8 50 */	fneg f1, f31
/* 800FFE88  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800FFE8C  4B FA D1 55 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800FFE90:
/* 800FFE90  7F C3 F3 78 */	mr r3, r30
/* 800FFE94  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FFE98  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 800FFE9C  38 80 00 00 */	li r4, 0
/* 800FFEA0  4B FB B8 D1 */	bl setSpecialGravity__9daAlink_cFffi
/* 800FFEA4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FFEA8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800FFEAC  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800FFEB0  38 00 00 01 */	li r0, 1
/* 800FFEB4  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800FFEB8  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800FFEBC  C0 42 93 AC */	lfs f2, lit_9828(r2)
/* 800FFEC0  A8 1E 1F D8 */	lha r0, 0x1fd8(r30)
/* 800FFEC4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800FFEC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800FFECC  90 01 00 0C */	stw r0, 0xc(r1)
/* 800FFED0  3C 00 43 30 */	lis r0, 0x4330
/* 800FFED4  90 01 00 08 */	stw r0, 8(r1)
/* 800FFED8  C8 01 00 08 */	lfd f0, 8(r1)
/* 800FFEDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 800FFEE0  EC 02 00 24 */	fdivs f0, f2, f0
/* 800FFEE4  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800FFEE8  C0 22 93 E0 */	lfs f1, lit_11673(r2)
/* 800FFEEC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800FFEF0  EC 01 00 2A */	fadds f0, f1, f0
/* 800FFEF4  D0 1E 34 7C */	stfs f0, 0x347c(r30)
/* 800FFEF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FFEFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FFF00  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FFF04  60 00 00 08 */	ori r0, r0, 8
/* 800FFF08  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FFF0C  7F C3 F3 78 */	mr r3, r30
/* 800FFF10  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010058@ha */
/* 800FFF14  38 84 00 58 */	addi r4, r4, 0x0058 /* 0x00010058@l */
/* 800FFF18  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800FFF1C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800FFF20  7D 89 03 A6 */	mtctr r12
/* 800FFF24  4E 80 04 21 */	bctrl 
/* 800FFF28  38 60 00 01 */	li r3, 1
/* 800FFF2C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800FFF30  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800FFF34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FFF38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FFF3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800FFF40  7C 08 03 A6 */	mtlr r0
/* 800FFF44  38 21 00 30 */	addi r1, r1, 0x30
/* 800FFF48  4E 80 00 20 */	blr 
