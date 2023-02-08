lbl_8024D6BC:
/* 8024D6BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024D6C0  7C 08 02 A6 */	mflr r0
/* 8024D6C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024D6C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8024D6CC  7C 7F 1B 78 */	mr r31, r3
/* 8024D6D0  7C 86 23 78 */	mr r6, r4
/* 8024D6D4  38 81 00 08 */	addi r4, r1, 8
/* 8024D6D8  38 A1 00 0A */	addi r5, r1, 0xa
/* 8024D6DC  38 C6 00 04 */	addi r6, r6, 4
/* 8024D6E0  4B FF DA 11 */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024D6E4  A0 81 00 0A */	lhz r4, 0xa(r1)
/* 8024D6E8  38 64 00 01 */	addi r3, r4, 1
/* 8024D6EC  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 8024D6F0  7C 03 00 00 */	cmpw r3, r0
/* 8024D6F4  40 82 00 74 */	bne lbl_8024D768
/* 8024D6F8  A0 01 00 08 */	lhz r0, 8(r1)
/* 8024D6FC  28 00 00 00 */	cmplwi r0, 0
/* 8024D700  40 82 00 1C */	bne lbl_8024D71C
/* 8024D704  38 00 00 00 */	li r0, 0
/* 8024D708  98 01 00 0C */	stb r0, 0xc(r1)
/* 8024D70C  98 01 00 0D */	stb r0, 0xd(r1)
/* 8024D710  98 01 00 0E */	stb r0, 0xe(r1)
/* 8024D714  98 01 00 0F */	stb r0, 0xf(r1)
/* 8024D718  48 00 00 28 */	b lbl_8024D740
lbl_8024D71C:
/* 8024D71C  88 0D 80 8C */	lbz r0, g_saftyWhiteColor(r13)
/* 8024D720  98 01 00 0C */	stb r0, 0xc(r1)
/* 8024D724  38 6D 80 8C */	la r3, g_saftyWhiteColor(r13) /* 8045060C-_SDA_BASE_ */
/* 8024D728  88 03 00 01 */	lbz r0, 1(r3)
/* 8024D72C  98 01 00 0D */	stb r0, 0xd(r1)
/* 8024D730  88 03 00 02 */	lbz r0, 2(r3)
/* 8024D734  98 01 00 0E */	stb r0, 0xe(r1)
/* 8024D738  88 03 00 03 */	lbz r0, 3(r3)
/* 8024D73C  98 01 00 0F */	stb r0, 0xf(r1)
lbl_8024D740:
/* 8024D740  C0 42 B3 AC */	lfs f2, lit_6613(r2)
/* 8024D744  C8 22 B3 90 */	lfd f1, lit_5116(r2)
/* 8024D748  90 81 00 14 */	stw r4, 0x14(r1)
/* 8024D74C  3C 00 43 30 */	lis r0, 0x4330
/* 8024D750  90 01 00 10 */	stw r0, 0x10(r1)
/* 8024D754  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8024D758  EC 00 08 28 */	fsubs f0, f0, f1
/* 8024D75C  EC 22 00 24 */	fdivs f1, f2, f0
/* 8024D760  38 61 00 0C */	addi r3, r1, 0xc
/* 8024D764  4B DB A8 75 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_8024D768:
/* 8024D768  38 7F 00 3C */	addi r3, r31, 0x3c
/* 8024D76C  48 00 03 45 */	bl func_8024DAB0
/* 8024D770  38 60 00 01 */	li r3, 1
/* 8024D774  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8024D778  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024D77C  7C 08 03 A6 */	mtlr r0
/* 8024D780  38 21 00 20 */	addi r1, r1, 0x20
/* 8024D784  4E 80 00 20 */	blr 
