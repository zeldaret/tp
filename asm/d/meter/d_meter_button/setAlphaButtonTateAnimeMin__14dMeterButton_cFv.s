lbl_80208C38:
/* 80208C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80208C3C  7C 08 02 A6 */	mflr r0
/* 80208C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80208C44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80208C48  7C 7F 1B 78 */	mr r31, r3
/* 80208C4C  80 63 00 64 */	lwz r3, 0x64(r3)
/* 80208C50  28 03 00 00 */	cmplwi r3, 0
/* 80208C54  41 82 00 68 */	beq lbl_80208CBC
/* 80208C58  48 04 CB D1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208C5C  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208C60  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208C64  41 82 00 58 */	beq lbl_80208CBC
/* 80208C68  A8 1F 04 A8 */	lha r0, 0x4a8(r31)
/* 80208C6C  2C 00 00 00 */	cmpwi r0, 0
/* 80208C70  40 82 00 0C */	bne lbl_80208C7C
/* 80208C74  38 00 00 1E */	li r0, 0x1e
/* 80208C78  B0 1F 04 A8 */	sth r0, 0x4a8(r31)
lbl_80208C7C:
/* 80208C7C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80208C80  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 80208C84  48 04 CB 4D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208C88  38 00 00 00 */	li r0, 0
/* 80208C8C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80208C90  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80208C94  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80208C98  48 04 CB 91 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208C9C  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 80208CA0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208CA4  40 82 00 18 */	bne lbl_80208CBC
/* 80208CA8  7F E3 FB 78 */	mr r3, r31
/* 80208CAC  38 80 00 12 */	li r4, 0x12
/* 80208CB0  48 00 1C 9D */	bl hide_button__14dMeterButton_cFUc
/* 80208CB4  38 00 00 00 */	li r0, 0
/* 80208CB8  98 1F 04 D2 */	stb r0, 0x4d2(r31)
lbl_80208CBC:
/* 80208CBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80208CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80208CC4  7C 08 03 A6 */	mtlr r0
/* 80208CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80208CCC  4E 80 00 20 */	blr 
