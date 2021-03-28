lbl_80208F1C:
/* 80208F1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80208F20  7C 08 02 A6 */	mflr r0
/* 80208F24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80208F28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80208F2C  7C 7F 1B 78 */	mr r31, r3
/* 80208F30  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 80208F34  28 03 00 00 */	cmplwi r3, 0
/* 80208F38  41 82 00 68 */	beq lbl_80208FA0
/* 80208F3C  48 04 C8 ED */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208F40  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208F44  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208F48  41 82 00 58 */	beq lbl_80208FA0
/* 80208F4C  A8 1F 04 AC */	lha r0, 0x4ac(r31)
/* 80208F50  2C 00 00 00 */	cmpwi r0, 0
/* 80208F54  40 82 00 0C */	bne lbl_80208F60
/* 80208F58  38 00 00 1E */	li r0, 0x1e
/* 80208F5C  B0 1F 04 AC */	sth r0, 0x4ac(r31)
lbl_80208F60:
/* 80208F60  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80208F64  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80208F68  48 04 C8 69 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208F6C  38 00 00 00 */	li r0, 0
/* 80208F70  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80208F74  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80208F78  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 80208F7C  48 04 C8 AD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208F80  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208F84  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208F88  40 82 00 18 */	bne lbl_80208FA0
/* 80208F8C  7F E3 FB 78 */	mr r3, r31
/* 80208F90  38 80 00 14 */	li r4, 0x14
/* 80208F94  48 00 19 B9 */	bl hide_button__14dMeterButton_cFUc
/* 80208F98  38 00 00 00 */	li r0, 0
/* 80208F9C  98 1F 04 D4 */	stb r0, 0x4d4(r31)
lbl_80208FA0:
/* 80208FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80208FA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80208FA8  7C 08 03 A6 */	mtlr r0
/* 80208FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80208FB0  4E 80 00 20 */	blr 
