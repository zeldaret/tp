lbl_80AE0ED0:
/* 80AE0ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE0ED4  7C 08 02 A6 */	mflr r0
/* 80AE0ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE0EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE0EE0  7C 7F 1B 78 */	mr r31, r3
/* 80AE0EE4  80 03 0B E0 */	lwz r0, 0xbe0(r3)
/* 80AE0EE8  28 00 00 00 */	cmplwi r0, 0
/* 80AE0EEC  41 82 00 A8 */	beq lbl_80AE0F94
/* 80AE0EF0  3C 80 80 AE */	lis r4, l_btkGetParamList@ha
/* 80AE0EF4  38 A4 28 74 */	addi r5, r4, l_btkGetParamList@l
/* 80AE0EF8  80 05 00 08 */	lwz r0, 8(r5)
/* 80AE0EFC  54 00 10 3A */	slwi r0, r0, 2
/* 80AE0F00  3C 80 80 AE */	lis r4, l_arcNames@ha
/* 80AE0F04  38 84 28 E0 */	addi r4, r4, l_arcNames@l
/* 80AE0F08  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AE0F0C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80AE0F10  4B 67 1C 94 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80AE0F14  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80AE0F18  7C 03 00 40 */	cmplw r3, r0
/* 80AE0F1C  40 82 00 6C */	bne lbl_80AE0F88
/* 80AE0F20  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80AE0F24  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80AE0F28  A8 9F 08 FE */	lha r4, 0x8fe(r31)
/* 80AE0F2C  48 00 06 19 */	bl func_80AE1544
/* 80AE0F30  3C 60 80 AE */	lis r3, lit_5210@ha
/* 80AE0F34  C0 43 24 18 */	lfs f2, lit_5210@l(r3)
/* 80AE0F38  3C 60 80 AE */	lis r3, lit_6995@ha
/* 80AE0F3C  C0 03 24 B0 */	lfs f0, lit_6995@l(r3)
/* 80AE0F40  EC 00 00 72 */	fmuls f0, f0, f1
/* 80AE0F44  EC 02 00 32 */	fmuls f0, f2, f0
/* 80AE0F48  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80AE0F4C  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80AE0F50  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80AE0F54  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80AE0F58  A8 9F 08 FC */	lha r4, 0x8fc(r31)
/* 80AE0F5C  48 00 05 E9 */	bl func_80AE1544
/* 80AE0F60  3C 60 80 AE */	lis r3, lit_6995@ha
/* 80AE0F64  C0 03 24 B0 */	lfs f0, lit_6995@l(r3)
/* 80AE0F68  EC 00 00 72 */	fmuls f0, f0, f1
/* 80AE0F6C  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80AE0F70  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80AE0F74  38 00 00 01 */	li r0, 1
/* 80AE0F78  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80AE0F7C  98 03 01 04 */	stb r0, 0x104(r3)
/* 80AE0F80  38 60 00 01 */	li r3, 1
/* 80AE0F84  48 00 00 14 */	b lbl_80AE0F98
lbl_80AE0F88:
/* 80AE0F88  38 00 00 00 */	li r0, 0
/* 80AE0F8C  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80AE0F90  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80AE0F94:
/* 80AE0F94  38 60 00 00 */	li r3, 0
lbl_80AE0F98:
/* 80AE0F98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE0F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE0FA0  7C 08 03 A6 */	mtlr r0
/* 80AE0FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE0FA8  4E 80 00 20 */	blr 
