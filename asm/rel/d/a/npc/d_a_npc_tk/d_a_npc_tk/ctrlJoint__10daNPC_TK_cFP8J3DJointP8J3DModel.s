lbl_80B0B9AC:
/* 80B0B9AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0B9B0  7C 08 02 A6 */	mflr r0
/* 80B0B9B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B0B9B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0B9BC  4B 85 68 1C */	b _savegpr_28
/* 80B0B9C0  7C 7C 1B 78 */	mr r28, r3
/* 80B0B9C4  7C BE 2B 78 */	mr r30, r5
/* 80B0B9C8  A3 A4 00 14 */	lhz r29, 0x14(r4)
/* 80B0B9CC  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80B0B9D0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B0B9D4  1F FD 00 30 */	mulli r31, r29, 0x30
/* 80B0B9D8  7C 60 FA 14 */	add r3, r0, r31
/* 80B0B9DC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B0B9E0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B0B9E4  4B 83 AA CC */	b PSMTXCopy
/* 80B0B9E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B0B9EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B0B9F0  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 80B0B9F4  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B0B9F8  40 82 00 5C */	bne lbl_80B0BA54
/* 80B0B9FC  2C 1D 00 0F */	cmpwi r29, 0xf
/* 80B0BA00  41 82 00 20 */	beq lbl_80B0BA20
/* 80B0BA04  40 80 00 10 */	bge lbl_80B0BA14
/* 80B0BA08  2C 1D 00 06 */	cmpwi r29, 6
/* 80B0BA0C  41 82 00 3C */	beq lbl_80B0BA48
/* 80B0BA10  48 00 01 24 */	b lbl_80B0BB34
lbl_80B0BA14:
/* 80B0BA14  2C 1D 00 11 */	cmpwi r29, 0x11
/* 80B0BA18  40 80 01 1C */	bge lbl_80B0BB34
/* 80B0BA1C  48 00 00 18 */	b lbl_80B0BA34
lbl_80B0BA20:
/* 80B0BA20  38 80 00 00 */	li r4, 0
/* 80B0BA24  A8 BC 06 A2 */	lha r5, 0x6a2(r28)
/* 80B0BA28  A8 DC 06 A0 */	lha r6, 0x6a0(r28)
/* 80B0BA2C  4B 50 08 74 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80B0BA30  48 00 01 04 */	b lbl_80B0BB34
lbl_80B0BA34:
/* 80B0BA34  38 80 00 00 */	li r4, 0
/* 80B0BA38  A8 BC 06 A2 */	lha r5, 0x6a2(r28)
/* 80B0BA3C  A8 DC 06 A0 */	lha r6, 0x6a0(r28)
/* 80B0BA40  4B 50 08 60 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80B0BA44  48 00 00 F0 */	b lbl_80B0BB34
lbl_80B0BA48:
/* 80B0BA48  A8 9C 06 AA */	lha r4, 0x6aa(r28)
/* 80B0BA4C  4B 50 09 50 */	b mDoMtx_XrotM__FPA4_fs
/* 80B0BA50  48 00 00 E4 */	b lbl_80B0BB34
lbl_80B0BA54:
/* 80B0BA54  88 1C 06 C1 */	lbz r0, 0x6c1(r28)
/* 80B0BA58  28 00 00 00 */	cmplwi r0, 0
/* 80B0BA5C  40 82 00 40 */	bne lbl_80B0BA9C
/* 80B0BA60  2C 1D 00 07 */	cmpwi r29, 7
/* 80B0BA64  40 80 00 D0 */	bge lbl_80B0BB34
/* 80B0BA68  2C 1D 00 04 */	cmpwi r29, 4
/* 80B0BA6C  40 80 00 08 */	bge lbl_80B0BA74
/* 80B0BA70  48 00 00 C4 */	b lbl_80B0BB34
lbl_80B0BA74:
/* 80B0BA74  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80B0BA78  C0 3C 06 80 */	lfs f1, 0x680(r28)
/* 80B0BA7C  3C 80 80 B1 */	lis r4, lit_4231@ha
/* 80B0BA80  C0 04 C2 2C */	lfs f0, lit_4231@l(r4)
/* 80B0BA84  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B0BA88  EC 02 00 2A */	fadds f0, f2, f0
/* 80B0BA8C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80B0BA90  7C 64 1B 78 */	mr r4, r3
/* 80B0BA94  4B 83 AA 1C */	b PSMTXCopy
/* 80B0BA98  48 00 00 9C */	b lbl_80B0BB34
lbl_80B0BA9C:
/* 80B0BA9C  2C 1D 00 0F */	cmpwi r29, 0xf
/* 80B0BAA0  41 82 00 50 */	beq lbl_80B0BAF0
/* 80B0BAA4  40 80 00 18 */	bge lbl_80B0BABC
/* 80B0BAA8  2C 1D 00 07 */	cmpwi r29, 7
/* 80B0BAAC  40 80 00 88 */	bge lbl_80B0BB34
/* 80B0BAB0  2C 1D 00 04 */	cmpwi r29, 4
/* 80B0BAB4  40 80 00 14 */	bge lbl_80B0BAC8
/* 80B0BAB8  48 00 00 7C */	b lbl_80B0BB34
lbl_80B0BABC:
/* 80B0BABC  2C 1D 00 11 */	cmpwi r29, 0x11
/* 80B0BAC0  40 80 00 74 */	bge lbl_80B0BB34
/* 80B0BAC4  48 00 00 50 */	b lbl_80B0BB14
lbl_80B0BAC8:
/* 80B0BAC8  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80B0BACC  C0 3C 06 80 */	lfs f1, 0x680(r28)
/* 80B0BAD0  3C 80 80 B1 */	lis r4, lit_4231@ha
/* 80B0BAD4  C0 04 C2 2C */	lfs f0, lit_4231@l(r4)
/* 80B0BAD8  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B0BADC  EC 02 00 2A */	fadds f0, f2, f0
/* 80B0BAE0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80B0BAE4  7C 64 1B 78 */	mr r4, r3
/* 80B0BAE8  4B 83 A9 C8 */	b PSMTXCopy
/* 80B0BAEC  48 00 00 48 */	b lbl_80B0BB34
lbl_80B0BAF0:
/* 80B0BAF0  38 80 00 00 */	li r4, 0
/* 80B0BAF4  A8 BC 06 A2 */	lha r5, 0x6a2(r28)
/* 80B0BAF8  A8 1C 06 A0 */	lha r0, 0x6a0(r28)
/* 80B0BAFC  7C 00 00 D0 */	neg r0, r0
/* 80B0BB00  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B0BB04  7C 00 01 94 */	addze r0, r0
/* 80B0BB08  7C 06 07 34 */	extsh r6, r0
/* 80B0BB0C  4B 50 07 94 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80B0BB10  48 00 00 24 */	b lbl_80B0BB34
lbl_80B0BB14:
/* 80B0BB14  38 80 00 00 */	li r4, 0
/* 80B0BB18  A8 BC 06 A2 */	lha r5, 0x6a2(r28)
/* 80B0BB1C  A8 1C 06 A0 */	lha r0, 0x6a0(r28)
/* 80B0BB20  7C 00 00 D0 */	neg r0, r0
/* 80B0BB24  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B0BB28  7C 00 01 94 */	addze r0, r0
/* 80B0BB2C  7C 06 07 34 */	extsh r6, r0
/* 80B0BB30  4B 50 07 70 */	b mDoMtx_ZXYrotM__FPA4_fsss
lbl_80B0BB34:
/* 80B0BB34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B0BB38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B0BB3C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80B0BB40  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B0BB44  7C 80 FA 14 */	add r4, r0, r31
/* 80B0BB48  4B 83 A9 68 */	b PSMTXCopy
/* 80B0BB4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B0BB50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B0BB54  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80B0BB58  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80B0BB5C  4B 83 A9 54 */	b PSMTXCopy
/* 80B0BB60  38 60 00 01 */	li r3, 1
/* 80B0BB64  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0BB68  4B 85 66 BC */	b _restgpr_28
/* 80B0BB6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0BB70  7C 08 03 A6 */	mtlr r0
/* 80B0BB74  38 21 00 20 */	addi r1, r1, 0x20
/* 80B0BB78  4E 80 00 20 */	blr 
