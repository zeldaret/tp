lbl_8059ED58:
/* 8059ED58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059ED5C  7C 08 02 A6 */	mflr r0
/* 8059ED60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059ED64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059ED68  7C 7F 1B 78 */	mr r31, r3
/* 8059ED6C  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8059ED70  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8059ED74  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8059ED78  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8059ED7C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8059ED80  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8059ED84  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8059ED88  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8059ED8C  54 00 27 3E */	srwi r0, r0, 0x1c
/* 8059ED90  28 00 00 0F */	cmplwi r0, 0xf
/* 8059ED94  40 82 00 20 */	bne lbl_8059EDB4
/* 8059ED98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059ED9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059EDA0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8059EDA4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8059EDA8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8059EDAC  4B DA 7B 3C */	b PSMTXTrans
/* 8059EDB0  48 00 00 38 */	b lbl_8059EDE8
lbl_8059EDB4:
/* 8059EDB4  88 1F 09 64 */	lbz r0, 0x964(r31)
/* 8059EDB8  1C 80 00 30 */	mulli r4, r0, 0x30
/* 8059EDBC  3C 60 80 38 */	lis r3, mData__12daShopItem_c@ha
/* 8059EDC0  38 03 92 E8 */	addi r0, r3, mData__12daShopItem_c@l
/* 8059EDC4  7C 60 22 14 */	add r3, r0, r4
/* 8059EDC8  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 8059EDCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059EDD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059EDD4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8059EDD8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8059EDDC  EC 40 10 2A */	fadds f2, f0, f2
/* 8059EDE0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8059EDE4  4B DA 7B 04 */	b PSMTXTrans
lbl_8059EDE8:
/* 8059EDE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059EDEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059EDF0  38 9F 09 2C */	addi r4, r31, 0x92c
/* 8059EDF4  4B DA 76 BC */	b PSMTXCopy
/* 8059EDF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059EDFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059EE00  A8 9F 09 62 */	lha r4, 0x962(r31)
/* 8059EE04  4B A6 D6 30 */	b mDoMtx_YrotM__FPA4_fs
/* 8059EE08  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8059EE0C  54 00 27 3E */	srwi r0, r0, 0x1c
/* 8059EE10  28 00 00 0F */	cmplwi r0, 0xf
/* 8059EE14  40 82 00 20 */	bne lbl_8059EE34
/* 8059EE18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059EE1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059EE20  38 80 D3 DC */	li r4, -11300
/* 8059EE24  38 A0 7F BC */	li r5, 0x7fbc
/* 8059EE28  38 C0 1C 84 */	li r6, 0x1c84
/* 8059EE2C  4B A6 D4 74 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 8059EE30  48 00 00 3C */	b lbl_8059EE6C
lbl_8059EE34:
/* 8059EE34  88 1F 09 64 */	lbz r0, 0x964(r31)
/* 8059EE38  1C 80 00 30 */	mulli r4, r0, 0x30
/* 8059EE3C  3C 60 80 38 */	lis r3, mData__12daShopItem_c@ha
/* 8059EE40  38 03 92 E8 */	addi r0, r3, mData__12daShopItem_c@l
/* 8059EE44  7C 60 22 14 */	add r3, r0, r4
/* 8059EE48  A8 C3 00 22 */	lha r6, 0x22(r3)
/* 8059EE4C  A8 A3 00 20 */	lha r5, 0x20(r3)
/* 8059EE50  A8 83 00 1E */	lha r4, 0x1e(r3)
/* 8059EE54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059EE58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059EE5C  A8 1F 09 60 */	lha r0, 0x960(r31)
/* 8059EE60  7C 00 22 14 */	add r0, r0, r4
/* 8059EE64  7C 04 07 34 */	extsh r4, r0
/* 8059EE68  4B A6 D4 38 */	b mDoMtx_ZXYrotM__FPA4_fsss
lbl_8059EE6C:
/* 8059EE6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059EE70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059EE74  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 8059EE78  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 8059EE7C  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 8059EE80  4B A6 D4 20 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 8059EE84  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8059EE88  54 00 27 3E */	srwi r0, r0, 0x1c
/* 8059EE8C  28 00 00 0F */	cmplwi r0, 0xf
/* 8059EE90  40 82 00 18 */	bne lbl_8059EEA8
/* 8059EE94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059EE98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059EE9C  38 80 00 00 */	li r4, 0
/* 8059EEA0  4B A6 D4 FC */	b mDoMtx_XrotM__FPA4_fs
/* 8059EEA4  48 00 00 28 */	b lbl_8059EECC
lbl_8059EEA8:
/* 8059EEA8  88 1F 09 64 */	lbz r0, 0x964(r31)
/* 8059EEAC  1C 80 00 30 */	mulli r4, r0, 0x30
/* 8059EEB0  3C 60 80 38 */	lis r3, mData__12daShopItem_c@ha
/* 8059EEB4  38 03 92 E8 */	addi r0, r3, mData__12daShopItem_c@l
/* 8059EEB8  7C 60 22 14 */	add r3, r0, r4
/* 8059EEBC  A8 83 00 1C */	lha r4, 0x1c(r3)
/* 8059EEC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059EEC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059EEC8  4B A6 D4 D4 */	b mDoMtx_XrotM__FPA4_fs
lbl_8059EECC:
/* 8059EECC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8059EED0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8059EED4  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8059EED8  38 84 00 24 */	addi r4, r4, 0x24
/* 8059EEDC  4B DA 75 D4 */	b PSMTXCopy
/* 8059EEE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059EEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059EEE8  7C 08 03 A6 */	mtlr r0
/* 8059EEEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8059EEF0  4E 80 00 20 */	blr 
