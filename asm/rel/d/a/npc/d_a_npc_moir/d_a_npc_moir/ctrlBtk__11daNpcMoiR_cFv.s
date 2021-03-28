lbl_80A8210C:
/* 80A8210C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A82110  7C 08 02 A6 */	mflr r0
/* 80A82114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A82118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A8211C  7C 7F 1B 78 */	mr r31, r3
/* 80A82120  80 03 0B DC */	lwz r0, 0xbdc(r3)
/* 80A82124  28 00 00 00 */	cmplwi r0, 0
/* 80A82128  41 82 00 A0 */	beq lbl_80A821C8
/* 80A8212C  3C 80 80 A8 */	lis r4, l_btkGetParamList@ha
/* 80A82130  38 A4 3A BC */	addi r5, r4, l_btkGetParamList@l
/* 80A82134  80 05 00 08 */	lwz r0, 8(r5)
/* 80A82138  54 00 10 3A */	slwi r0, r0, 2
/* 80A8213C  3C 80 80 A8 */	lis r4, l_arcNames@ha
/* 80A82140  38 84 3A F8 */	addi r4, r4, l_arcNames@l
/* 80A82144  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A82148  80 A5 00 00 */	lwz r5, 0(r5)
/* 80A8214C  4B 6D 0A 58 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80A82150  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80A82154  7C 03 00 40 */	cmplw r3, r0
/* 80A82158  40 82 00 64 */	bne lbl_80A821BC
/* 80A8215C  A8 1F 08 FE */	lha r0, 0x8fe(r31)
/* 80A82160  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A82164  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80A82168  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80A8216C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80A82170  3C 60 80 A8 */	lis r3, lit_4960@ha
/* 80A82174  C0 43 37 90 */	lfs f2, lit_4960@l(r3)
/* 80A82178  3C 60 80 A8 */	lis r3, lit_6069@ha
/* 80A8217C  C0 23 38 1C */	lfs f1, lit_6069@l(r3)
/* 80A82180  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A82184  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A82188  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80A8218C  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80A82190  A8 1F 08 FC */	lha r0, 0x8fc(r31)
/* 80A82194  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A82198  7C 04 04 2E */	lfsx f0, r4, r0
/* 80A8219C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A821A0  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80A821A4  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80A821A8  38 00 00 01 */	li r0, 1
/* 80A821AC  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80A821B0  98 03 01 04 */	stb r0, 0x104(r3)
/* 80A821B4  38 60 00 01 */	li r3, 1
/* 80A821B8  48 00 00 14 */	b lbl_80A821CC
lbl_80A821BC:
/* 80A821BC  38 00 00 00 */	li r0, 0
/* 80A821C0  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80A821C4  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80A821C8:
/* 80A821C8  38 60 00 00 */	li r3, 0
lbl_80A821CC:
/* 80A821CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A821D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A821D4  7C 08 03 A6 */	mtlr r0
/* 80A821D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A821DC  4E 80 00 20 */	blr 
