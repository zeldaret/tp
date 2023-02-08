lbl_80207E9C:
/* 80207E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80207EA0  7C 08 02 A6 */	mflr r0
/* 80207EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80207EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80207EAC  7C 7F 1B 78 */	mr r31, r3
/* 80207EB0  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80207EB4  28 03 00 00 */	cmplwi r3, 0
/* 80207EB8  41 82 00 68 */	beq lbl_80207F20
/* 80207EBC  48 04 D9 6D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207EC0  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80207EC4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207EC8  41 82 00 58 */	beq lbl_80207F20
/* 80207ECC  A8 1F 04 96 */	lha r0, 0x496(r31)
/* 80207ED0  2C 00 00 00 */	cmpwi r0, 0
/* 80207ED4  40 82 00 0C */	bne lbl_80207EE0
/* 80207ED8  38 00 00 1E */	li r0, 0x1e
/* 80207EDC  B0 1F 04 96 */	sth r0, 0x496(r31)
lbl_80207EE0:
/* 80207EE0  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80207EE4  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80207EE8  48 04 D8 E9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207EEC  38 00 00 00 */	li r0, 0
/* 80207EF0  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80207EF4  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80207EF8  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80207EFC  48 04 D9 2D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207F00  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80207F04  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207F08  40 82 00 18 */	bne lbl_80207F20
/* 80207F0C  7F E3 FB 78 */	mr r3, r31
/* 80207F10  38 80 00 09 */	li r4, 9
/* 80207F14  48 00 2A 39 */	bl hide_button__14dMeterButton_cFUc
/* 80207F18  38 00 00 00 */	li r0, 0
/* 80207F1C  98 1F 04 C9 */	stb r0, 0x4c9(r31)
lbl_80207F20:
/* 80207F20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80207F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80207F28  7C 08 03 A6 */	mtlr r0
/* 80207F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80207F30  4E 80 00 20 */	blr 
