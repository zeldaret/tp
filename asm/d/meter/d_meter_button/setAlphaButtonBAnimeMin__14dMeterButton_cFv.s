lbl_8020714C:
/* 8020714C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80207150  7C 08 02 A6 */	mflr r0
/* 80207154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80207158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020715C  7C 7F 1B 78 */	mr r31, r3
/* 80207160  80 63 00 24 */	lwz r3, 0x24(r3)
/* 80207164  48 04 E6 C5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207168  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 8020716C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207170  41 82 00 58 */	beq lbl_802071C8
/* 80207174  A8 1F 04 86 */	lha r0, 0x486(r31)
/* 80207178  2C 00 00 00 */	cmpwi r0, 0
/* 8020717C  40 82 00 0C */	bne lbl_80207188
/* 80207180  38 00 00 1E */	li r0, 0x1e
/* 80207184  B0 1F 04 86 */	sth r0, 0x486(r31)
lbl_80207188:
/* 80207188  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8020718C  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80207190  48 04 E6 41 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207194  38 00 00 00 */	li r0, 0
/* 80207198  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 8020719C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 802071A0  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 802071A4  48 04 E6 85 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802071A8  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 802071AC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802071B0  40 82 00 18 */	bne lbl_802071C8
/* 802071B4  7F E3 FB 78 */	mr r3, r31
/* 802071B8  38 80 00 01 */	li r4, 1
/* 802071BC  48 00 37 91 */	bl hide_button__14dMeterButton_cFUc
/* 802071C0  38 00 00 00 */	li r0, 0
/* 802071C4  98 1F 04 C1 */	stb r0, 0x4c1(r31)
lbl_802071C8:
/* 802071C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802071CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802071D0  7C 08 03 A6 */	mtlr r0
/* 802071D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802071D8  4E 80 00 20 */	blr 
