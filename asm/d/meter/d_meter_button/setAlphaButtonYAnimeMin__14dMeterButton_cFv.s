lbl_80207D20:
/* 80207D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80207D24  7C 08 02 A6 */	mflr r0
/* 80207D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80207D2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80207D30  7C 7F 1B 78 */	mr r31, r3
/* 80207D34  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 80207D38  48 04 DA F1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207D3C  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80207D40  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207D44  41 82 00 58 */	beq lbl_80207D9C
/* 80207D48  A8 1F 04 94 */	lha r0, 0x494(r31)
/* 80207D4C  2C 00 00 00 */	cmpwi r0, 0
/* 80207D50  40 82 00 0C */	bne lbl_80207D5C
/* 80207D54  38 00 00 1E */	li r0, 0x1e
/* 80207D58  B0 1F 04 94 */	sth r0, 0x494(r31)
lbl_80207D5C:
/* 80207D5C  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80207D60  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80207D64  48 04 DA 6D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207D68  38 00 00 00 */	li r0, 0
/* 80207D6C  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80207D70  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80207D74  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80207D78  48 04 DA B1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207D7C  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80207D80  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207D84  40 82 00 18 */	bne lbl_80207D9C
/* 80207D88  7F E3 FB 78 */	mr r3, r31
/* 80207D8C  38 80 00 08 */	li r4, 8
/* 80207D90  48 00 2B BD */	bl hide_button__14dMeterButton_cFUc
/* 80207D94  38 00 00 00 */	li r0, 0
/* 80207D98  98 1F 04 C8 */	stb r0, 0x4c8(r31)
lbl_80207D9C:
/* 80207D9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80207DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80207DA4  7C 08 03 A6 */	mtlr r0
/* 80207DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80207DAC  4E 80 00 20 */	blr 
