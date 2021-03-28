lbl_80206CE0:
/* 80206CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80206CE4  7C 08 02 A6 */	mflr r0
/* 80206CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80206CEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80206CF0  7C 7F 1B 78 */	mr r31, r3
/* 80206CF4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80206CF8  48 04 EB 31 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80206CFC  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80206D00  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80206D04  41 82 00 58 */	beq lbl_80206D5C
/* 80206D08  A8 1F 04 84 */	lha r0, 0x484(r31)
/* 80206D0C  2C 00 00 00 */	cmpwi r0, 0
/* 80206D10  40 82 00 0C */	bne lbl_80206D1C
/* 80206D14  38 00 00 1E */	li r0, 0x1e
/* 80206D18  B0 1F 04 84 */	sth r0, 0x484(r31)
lbl_80206D1C:
/* 80206D1C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80206D20  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80206D24  48 04 EA AD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80206D28  38 00 00 00 */	li r0, 0
/* 80206D2C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80206D30  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80206D34  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80206D38  48 04 EA F1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80206D3C  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80206D40  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80206D44  40 82 00 18 */	bne lbl_80206D5C
/* 80206D48  7F E3 FB 78 */	mr r3, r31
/* 80206D4C  38 80 00 00 */	li r4, 0
/* 80206D50  48 00 3B FD */	bl hide_button__14dMeterButton_cFUc
/* 80206D54  38 00 00 00 */	li r0, 0
/* 80206D58  98 1F 04 C0 */	stb r0, 0x4c0(r31)
lbl_80206D5C:
/* 80206D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80206D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80206D64  7C 08 03 A6 */	mtlr r0
/* 80206D68  38 21 00 10 */	addi r1, r1, 0x10
/* 80206D6C  4E 80 00 20 */	blr 
