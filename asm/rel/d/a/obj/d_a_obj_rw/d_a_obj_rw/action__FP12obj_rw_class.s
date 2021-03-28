lbl_80CC2E78:
/* 80CC2E78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC2E7C  7C 08 02 A6 */	mflr r0
/* 80CC2E80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC2E84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CC2E88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CC2E8C  7C 7E 1B 78 */	mr r30, r3
/* 80CC2E90  3C 80 80 CC */	lis r4, lit_3649@ha
/* 80CC2E94  3B E4 3A F4 */	addi r31, r4, lit_3649@l
/* 80CC2E98  A8 03 06 62 */	lha r0, 0x662(r3)
/* 80CC2E9C  2C 00 00 00 */	cmpwi r0, 0
/* 80CC2EA0  41 82 00 08 */	beq lbl_80CC2EA8
/* 80CC2EA4  48 00 00 08 */	b lbl_80CC2EAC
lbl_80CC2EA8:
/* 80CC2EA8  4B FF FF B9 */	bl normal__FP12obj_rw_class
lbl_80CC2EAC:
/* 80CC2EAC  7F C3 F3 78 */	mr r3, r30
/* 80CC2EB0  4B FF FC F5 */	bl damage_check__FP12obj_rw_class
/* 80CC2EB4  38 7E 06 6C */	addi r3, r30, 0x66c
/* 80CC2EB8  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80CC2EBC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80CC2EC0  4B 5A CB C0 */	b cLib_addCalc0__FPfff
/* 80CC2EC4  A8 7E 06 72 */	lha r3, 0x672(r30)
/* 80CC2EC8  38 03 0D 00 */	addi r0, r3, 0xd00
/* 80CC2ECC  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 80CC2ED0  A8 1E 06 72 */	lha r0, 0x672(r30)
/* 80CC2ED4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CC2ED8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CC2EDC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CC2EE0  7C 43 04 2E */	lfsx f2, r3, r0
/* 80CC2EE4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CC2EE8  C0 1E 06 6C */	lfs f0, 0x66c(r30)
/* 80CC2EEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CC2EF0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80CC2EF4  FC 00 00 1E */	fctiwz f0, f0
/* 80CC2EF8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80CC2EFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80CC2F00  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80CC2F04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CC2F08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CC2F0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC2F10  7C 08 03 A6 */	mtlr r0
/* 80CC2F14  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC2F18  4E 80 00 20 */	blr 
