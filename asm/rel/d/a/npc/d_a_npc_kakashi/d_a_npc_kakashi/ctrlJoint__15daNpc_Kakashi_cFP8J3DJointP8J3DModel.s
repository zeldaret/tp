lbl_8054B9D8:
/* 8054B9D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054B9DC  7C 08 02 A6 */	mflr r0
/* 8054B9E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054B9E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8054B9E8  4B E1 67 F0 */	b _savegpr_28
/* 8054B9EC  7C 7D 1B 78 */	mr r29, r3
/* 8054B9F0  7C BE 2B 78 */	mr r30, r5
/* 8054B9F4  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 8054B9F8  80 65 00 84 */	lwz r3, 0x84(r5)
/* 8054B9FC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8054BA00  1F FC 00 30 */	mulli r31, r28, 0x30
/* 8054BA04  7C 60 FA 14 */	add r3, r0, r31
/* 8054BA08  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8054BA0C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8054BA10  4B DF AA A0 */	b PSMTXCopy
/* 8054BA14  28 1C 00 07 */	cmplwi r28, 7
/* 8054BA18  41 81 00 D4 */	bgt lbl_8054BAEC
/* 8054BA1C  3C 60 80 55 */	lis r3, lit_4460@ha
/* 8054BA20  38 63 EF 5C */	addi r3, r3, lit_4460@l
/* 8054BA24  57 80 10 3A */	slwi r0, r28, 2
/* 8054BA28  7C 03 00 2E */	lwzx r0, r3, r0
/* 8054BA2C  7C 09 03 A6 */	mtctr r0
/* 8054BA30  4E 80 04 20 */	bctr 
lbl_8054BA34:
/* 8054BA34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8054BA38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8054BA3C  A8 9D 13 64 */	lha r4, 0x1364(r29)
/* 8054BA40  4B AC 09 F4 */	b mDoMtx_YrotM__FPA4_fs
/* 8054BA44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8054BA48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8054BA4C  A8 9D 13 68 */	lha r4, 0x1368(r29)
/* 8054BA50  4B AC 0A 7C */	b mDoMtx_ZrotM__FPA4_fs
/* 8054BA54  48 00 00 98 */	b lbl_8054BAEC
lbl_8054BA58:
/* 8054BA58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8054BA5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8054BA60  A8 9D 13 6A */	lha r4, 0x136a(r29)
/* 8054BA64  4B AC 09 D0 */	b mDoMtx_YrotM__FPA4_fs
/* 8054BA68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8054BA6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8054BA70  A8 9D 13 6E */	lha r4, 0x136e(r29)
/* 8054BA74  4B AC 0A 58 */	b mDoMtx_ZrotM__FPA4_fs
/* 8054BA78  48 00 00 74 */	b lbl_8054BAEC
lbl_8054BA7C:
/* 8054BA7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8054BA80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8054BA84  A8 9D 13 70 */	lha r4, 0x1370(r29)
/* 8054BA88  4B AC 09 AC */	b mDoMtx_YrotM__FPA4_fs
/* 8054BA8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8054BA90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8054BA94  A8 1D 13 74 */	lha r0, 0x1374(r29)
/* 8054BA98  7C 00 00 D0 */	neg r0, r0
/* 8054BA9C  7C 04 07 34 */	extsh r4, r0
/* 8054BAA0  4B AC 0A 2C */	b mDoMtx_ZrotM__FPA4_fs
/* 8054BAA4  48 00 00 48 */	b lbl_8054BAEC
lbl_8054BAA8:
/* 8054BAA8  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8054BAAC  2C 00 00 01 */	cmpwi r0, 1
/* 8054BAB0  41 81 00 3C */	bgt lbl_8054BAEC
/* 8054BAB4  3C 60 80 55 */	lis r3, lit_4269@ha
/* 8054BAB8  C0 23 EB 70 */	lfs f1, lit_4269@l(r3)
/* 8054BABC  FC 40 08 90 */	fmr f2, f1
/* 8054BAC0  FC 60 08 90 */	fmr f3, f1
/* 8054BAC4  4B AC 13 74 */	b scaleM__14mDoMtx_stack_cFfff
/* 8054BAC8  48 00 00 24 */	b lbl_8054BAEC
lbl_8054BACC:
/* 8054BACC  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8054BAD0  2C 00 00 00 */	cmpwi r0, 0
/* 8054BAD4  40 82 00 18 */	bne lbl_8054BAEC
/* 8054BAD8  3C 60 80 55 */	lis r3, lit_4269@ha
/* 8054BADC  C0 23 EB 70 */	lfs f1, lit_4269@l(r3)
/* 8054BAE0  FC 40 08 90 */	fmr f2, f1
/* 8054BAE4  FC 60 08 90 */	fmr f3, f1
/* 8054BAE8  4B AC 13 50 */	b scaleM__14mDoMtx_stack_cFfff
lbl_8054BAEC:
/* 8054BAEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8054BAF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8054BAF4  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8054BAF8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8054BAFC  7C 80 FA 14 */	add r4, r0, r31
/* 8054BB00  4B DF A9 B0 */	b PSMTXCopy
/* 8054BB04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8054BB08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8054BB0C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8054BB10  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8054BB14  4B DF A9 9C */	b PSMTXCopy
/* 8054BB18  38 60 00 01 */	li r3, 1
/* 8054BB1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8054BB20  4B E1 67 04 */	b _restgpr_28
/* 8054BB24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054BB28  7C 08 03 A6 */	mtlr r0
/* 8054BB2C  38 21 00 20 */	addi r1, r1, 0x20
/* 8054BB30  4E 80 00 20 */	blr 
