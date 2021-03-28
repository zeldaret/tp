lbl_80209368:
/* 80209368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020936C  7C 08 02 A6 */	mflr r0
/* 80209370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80209374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80209378  7C 7F 1B 78 */	mr r31, r3
/* 8020937C  80 63 00 F4 */	lwz r3, 0xf4(r3)
/* 80209380  48 04 C4 A9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80209384  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80209388  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020938C  41 82 00 38 */	beq lbl_802093C4
/* 80209390  88 9F 04 D9 */	lbz r4, 0x4d9(r31)
/* 80209394  28 04 00 FF */	cmplwi r4, 0xff
/* 80209398  41 82 00 0C */	beq lbl_802093A4
/* 8020939C  7F E3 FB 78 */	mr r3, r31
/* 802093A0  4B FF D9 D1 */	bl isFastSet__14dMeterButton_cFi
lbl_802093A4:
/* 802093A4  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 802093A8  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 802093AC  48 04 C4 25 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802093B0  38 00 00 00 */	li r0, 0
/* 802093B4  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 802093B8  B0 03 00 16 */	sth r0, 0x16(r3)
/* 802093BC  38 00 00 FF */	li r0, 0xff
/* 802093C0  98 1F 04 D9 */	stb r0, 0x4d9(r31)
lbl_802093C4:
/* 802093C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802093C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802093CC  7C 08 03 A6 */	mtlr r0
/* 802093D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802093D4  4E 80 00 20 */	blr 
