lbl_802075C0:
/* 802075C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802075C4  7C 08 02 A6 */	mflr r0
/* 802075C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802075CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802075D0  7C 7F 1B 78 */	mr r31, r3
/* 802075D4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 802075D8  48 04 E2 51 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802075DC  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802075E0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802075E4  41 82 00 5C */	beq lbl_80207640
/* 802075E8  A8 1F 04 8C */	lha r0, 0x48c(r31)
/* 802075EC  2C 00 00 00 */	cmpwi r0, 0
/* 802075F0  40 82 00 0C */	bne lbl_802075FC
/* 802075F4  38 00 00 1E */	li r0, 0x1e
/* 802075F8  B0 1F 04 8C */	sth r0, 0x48c(r31)
lbl_802075FC:
/* 802075FC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80207600  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80207604  48 04 E1 CD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207608  38 00 00 00 */	li r0, 0
/* 8020760C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80207610  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80207614  B0 1F 04 8C */	sth r0, 0x48c(r31)
/* 80207618  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8020761C  48 04 E2 0D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207620  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80207624  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207628  40 82 00 18 */	bne lbl_80207640
/* 8020762C  7F E3 FB 78 */	mr r3, r31
/* 80207630  38 80 00 04 */	li r4, 4
/* 80207634  48 00 33 19 */	bl hide_button__14dMeterButton_cFUc
/* 80207638  38 00 00 00 */	li r0, 0
/* 8020763C  98 1F 04 C4 */	stb r0, 0x4c4(r31)
lbl_80207640:
/* 80207640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80207644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80207648  7C 08 03 A6 */	mtlr r0
/* 8020764C  38 21 00 10 */	addi r1, r1, 0x10
/* 80207650  4E 80 00 20 */	blr 
