lbl_80BD0E1C:
/* 80BD0E1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BD0E20  7C 08 02 A6 */	mflr r0
/* 80BD0E24  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BD0E28  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BD0E2C  7C 7F 1B 78 */	mr r31, r3
/* 80BD0E30  A8 63 06 0A */	lha r3, 0x60a(r3)
/* 80BD0E34  38 03 FF DF */	addi r0, r3, -33
/* 80BD0E38  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 80BD0E3C  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80BD0E40  A8 1F 06 0A */	lha r0, 0x60a(r31)
/* 80BD0E44  7C 03 02 14 */	add r0, r3, r0
/* 80BD0E48  B0 1F 06 0E */	sth r0, 0x60e(r31)
/* 80BD0E4C  38 7F 06 0C */	addi r3, r31, 0x60c
/* 80BD0E50  38 80 00 00 */	li r4, 0
/* 80BD0E54  38 A0 01 50 */	li r5, 0x150
/* 80BD0E58  4B 69 FD 39 */	bl cLib_chaseAngleS__FPsss
/* 80BD0E5C  A8 9F 06 0C */	lha r4, 0x60c(r31)
/* 80BD0E60  7C 80 07 35 */	extsh. r0, r4
/* 80BD0E64  41 82 01 1C */	beq lbl_80BD0F80
/* 80BD0E68  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80BD0E6C  28 00 00 00 */	cmplwi r0, 0
/* 80BD0E70  40 82 00 B0 */	bne lbl_80BD0F20
/* 80BD0E74  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80BD0E78  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BD0E7C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BD0E80  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BD0E84  7C 45 04 2E */	lfsx f2, r5, r0
/* 80BD0E88  3C 60 80 BD */	lis r3, lit_3796@ha /* 0x80BD3110@ha */
/* 80BD0E8C  C8 23 31 10 */	lfd f1, lit_3796@l(r3)  /* 0x80BD3110@l */
/* 80BD0E90  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80BD0E94  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BD0E98  3C 80 43 30 */	lis r4, 0x4330
/* 80BD0E9C  90 81 00 08 */	stw r4, 8(r1)
/* 80BD0EA0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BD0EA4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BD0EA8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BD0EAC  FC 00 00 1E */	fctiwz f0, f0
/* 80BD0EB0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BD0EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD0EB8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80BD0EBC  B0 03 05 D8 */	sth r0, 0x5d8(r3)
/* 80BD0EC0  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80BD0EC4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BD0EC8  7C 45 04 2E */	lfsx f2, r5, r0
/* 80BD0ECC  A8 1F 06 0C */	lha r0, 0x60c(r31)
/* 80BD0ED0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BD0ED4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BD0ED8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BD0EDC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BD0EE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BD0EE4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BD0EE8  FC 00 00 1E */	fctiwz f0, f0
/* 80BD0EEC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80BD0EF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD0EF4  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 80BD0EF8  A8 7F 05 D8 */	lha r3, 0x5d8(r31)
/* 80BD0EFC  7C 60 07 35 */	extsh. r0, r3
/* 80BD0F00  40 81 00 88 */	ble lbl_80BD0F88
/* 80BD0F04  7C 03 00 D0 */	neg r0, r3
/* 80BD0F08  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80BD0F0C  B0 03 05 D8 */	sth r0, 0x5d8(r3)
/* 80BD0F10  A8 1F 05 D8 */	lha r0, 0x5d8(r31)
/* 80BD0F14  7C 00 00 D0 */	neg r0, r0
/* 80BD0F18  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 80BD0F1C  48 00 00 6C */	b lbl_80BD0F88
lbl_80BD0F20:
/* 80BD0F20  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80BD0F24  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BD0F28  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BD0F2C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BD0F30  7C 43 04 2E */	lfsx f2, r3, r0
/* 80BD0F34  3C 60 80 BD */	lis r3, lit_3796@ha /* 0x80BD3110@ha */
/* 80BD0F38  C8 23 31 10 */	lfd f1, lit_3796@l(r3)  /* 0x80BD3110@l */
/* 80BD0F3C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80BD0F40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD0F44  3C 00 43 30 */	lis r0, 0x4330
/* 80BD0F48  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BD0F4C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BD0F50  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BD0F54  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BD0F58  FC 00 00 1E */	fctiwz f0, f0
/* 80BD0F5C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BD0F60  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80BD0F64  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 80BD0F68  A8 7F 05 D8 */	lha r3, 0x5d8(r31)
/* 80BD0F6C  7C 60 07 35 */	extsh. r0, r3
/* 80BD0F70  40 81 00 18 */	ble lbl_80BD0F88
/* 80BD0F74  7C 03 00 D0 */	neg r0, r3
/* 80BD0F78  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 80BD0F7C  48 00 00 0C */	b lbl_80BD0F88
lbl_80BD0F80:
/* 80BD0F80  38 00 00 00 */	li r0, 0
/* 80BD0F84  98 1F 05 AE */	stb r0, 0x5ae(r31)
lbl_80BD0F88:
/* 80BD0F88  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BD0F8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BD0F90  7C 08 03 A6 */	mtlr r0
/* 80BD0F94  38 21 00 30 */	addi r1, r1, 0x30
/* 80BD0F98  4E 80 00 20 */	blr 
