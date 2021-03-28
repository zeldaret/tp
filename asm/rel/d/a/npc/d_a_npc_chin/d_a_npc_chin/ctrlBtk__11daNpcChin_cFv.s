lbl_8098D198:
/* 8098D198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098D19C  7C 08 02 A6 */	mflr r0
/* 8098D1A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098D1A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098D1A8  7C 7F 1B 78 */	mr r31, r3
/* 8098D1AC  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 8098D1B0  28 00 00 00 */	cmplwi r0, 0
/* 8098D1B4  41 82 00 A0 */	beq lbl_8098D254
/* 8098D1B8  3C 80 80 99 */	lis r4, l_btkGetParamList@ha
/* 8098D1BC  38 A4 20 3C */	addi r5, r4, l_btkGetParamList@l
/* 8098D1C0  80 05 00 08 */	lwz r0, 8(r5)
/* 8098D1C4  54 00 10 3A */	slwi r0, r0, 2
/* 8098D1C8  3C 80 80 99 */	lis r4, l_arcNames@ha
/* 8098D1CC  38 84 20 A8 */	addi r4, r4, l_arcNames@l
/* 8098D1D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 8098D1D4  80 A5 00 00 */	lwz r5, 0(r5)
/* 8098D1D8  4B 7C 59 CC */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 8098D1DC  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 8098D1E0  7C 03 00 40 */	cmplw r3, r0
/* 8098D1E4  40 82 00 64 */	bne lbl_8098D248
/* 8098D1E8  A8 1F 08 FE */	lha r0, 0x8fe(r31)
/* 8098D1EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8098D1F0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8098D1F4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8098D1F8  7C 44 04 2E */	lfsx f2, r4, r0
/* 8098D1FC  3C 60 80 99 */	lis r3, lit_4627@ha
/* 8098D200  C0 23 19 A4 */	lfs f1, lit_4627@l(r3)
/* 8098D204  C0 1F 0E 1C */	lfs f0, 0xe1c(r31)
/* 8098D208  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8098D20C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8098D210  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 8098D214  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 8098D218  A8 1F 08 FC */	lha r0, 0x8fc(r31)
/* 8098D21C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8098D220  7C 24 04 2E */	lfsx f1, r4, r0
/* 8098D224  C0 1F 0E 20 */	lfs f0, 0xe20(r31)
/* 8098D228  EC 00 00 72 */	fmuls f0, f0, f1
/* 8098D22C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 8098D230  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 8098D234  38 00 00 01 */	li r0, 1
/* 8098D238  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 8098D23C  98 03 01 04 */	stb r0, 0x104(r3)
/* 8098D240  38 60 00 01 */	li r3, 1
/* 8098D244  48 00 00 14 */	b lbl_8098D258
lbl_8098D248:
/* 8098D248  38 00 00 00 */	li r0, 0
/* 8098D24C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 8098D250  98 03 01 04 */	stb r0, 0x104(r3)
lbl_8098D254:
/* 8098D254  38 60 00 00 */	li r3, 0
lbl_8098D258:
/* 8098D258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098D25C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098D260  7C 08 03 A6 */	mtlr r0
/* 8098D264  38 21 00 10 */	addi r1, r1, 0x10
/* 8098D268  4E 80 00 20 */	blr 
