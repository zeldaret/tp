lbl_80984DD0:
/* 80984DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80984DD4  7C 08 02 A6 */	mflr r0
/* 80984DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80984DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80984DE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80984DE4  7C 7F 1B 78 */	mr r31, r3
/* 80984DE8  3B C0 00 00 */	li r30, 0
/* 80984DEC  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80984DF0  54 00 10 3A */	slwi r0, r0, 2
/* 80984DF4  7C 64 00 2E */	lwzx r3, r4, r0
/* 80984DF8  28 03 00 00 */	cmplwi r3, 0
/* 80984DFC  41 82 00 10 */	beq lbl_80984E0C
/* 80984E00  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80984E04  54 00 10 3A */	slwi r0, r0, 2
/* 80984E08  7F C3 00 2E */	lwzx r30, r3, r0
lbl_80984E0C:
/* 80984E0C  28 1E 00 00 */	cmplwi r30, 0
/* 80984E10  41 82 01 04 */	beq lbl_80984F14
/* 80984E14  A8 1F 09 DC */	lha r0, 0x9dc(r31)
/* 80984E18  A8 7F 09 DA */	lha r3, 0x9da(r31)
/* 80984E1C  7C 00 18 00 */	cmpw r0, r3
/* 80984E20  40 82 00 7C */	bne lbl_80984E9C
/* 80984E24  80 BE 00 08 */	lwz r5, 8(r30)
/* 80984E28  2C 05 00 00 */	cmpwi r5, 0
/* 80984E2C  40 81 00 34 */	ble lbl_80984E60
/* 80984E30  A0 1F 09 E2 */	lhz r0, 0x9e2(r31)
/* 80984E34  7C 05 00 00 */	cmpw r5, r0
/* 80984E38  41 81 00 28 */	bgt lbl_80984E60
/* 80984E3C  38 03 00 01 */	addi r0, r3, 1
/* 80984E40  B0 1F 09 DA */	sth r0, 0x9da(r31)
/* 80984E44  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80984E48  54 00 10 3A */	slwi r0, r0, 2
/* 80984E4C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80984E50  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80984E54  54 00 10 3A */	slwi r0, r0, 2
/* 80984E58  7F C3 00 2E */	lwzx r30, r3, r0
/* 80984E5C  48 00 00 40 */	b lbl_80984E9C
lbl_80984E60:
/* 80984E60  2C 05 00 00 */	cmpwi r5, 0
/* 80984E64  40 82 00 38 */	bne lbl_80984E9C
/* 80984E68  A0 1F 09 E2 */	lhz r0, 0x9e2(r31)
/* 80984E6C  28 00 00 01 */	cmplwi r0, 1
/* 80984E70  41 80 00 2C */	blt lbl_80984E9C
/* 80984E74  38 00 00 00 */	li r0, 0
/* 80984E78  B0 1F 09 DA */	sth r0, 0x9da(r31)
/* 80984E7C  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 80984E80  54 00 10 3A */	slwi r0, r0, 2
/* 80984E84  7C 64 00 2E */	lwzx r3, r4, r0
/* 80984E88  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80984E8C  54 00 10 3A */	slwi r0, r0, 2
/* 80984E90  7F C3 00 2E */	lwzx r30, r3, r0
/* 80984E94  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80984E98  D0 1F 09 7C */	stfs f0, 0x97c(r31)
lbl_80984E9C:
/* 80984E9C  28 1E 00 00 */	cmplwi r30, 0
/* 80984EA0  41 82 00 74 */	beq lbl_80984F14
/* 80984EA4  A8 7F 09 DC */	lha r3, 0x9dc(r31)
/* 80984EA8  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80984EAC  7C 03 00 00 */	cmpw r3, r0
/* 80984EB0  41 82 00 64 */	beq lbl_80984F14
/* 80984EB4  7F E3 FB 78 */	mr r3, r31
/* 80984EB8  A0 9E 00 00 */	lhz r4, 0(r30)
/* 80984EBC  3C A0 80 98 */	lis r5, lit_4248@ha /* 0x80986F14@ha */
/* 80984EC0  C0 25 6F 14 */	lfs f1, lit_4248@l(r5)  /* 0x80986F14@l */
/* 80984EC4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80984EC8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80984ECC  7D 89 03 A6 */	mtctr r12
/* 80984ED0  4E 80 04 21 */	bctrl 
/* 80984ED4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80984ED8  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80984EDC  2C 00 00 00 */	cmpwi r0, 0
/* 80984EE0  40 82 00 20 */	bne lbl_80984F00
/* 80984EE4  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80984EE8  C0 03 6F 14 */	lfs f0, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80984EEC  C0 5F 09 7C */	lfs f2, 0x97c(r31)
/* 80984EF0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80984EF4  4C 40 13 82 */	cror 2, 0, 2
/* 80984EF8  40 82 00 08 */	bne lbl_80984F00
/* 80984EFC  FC 20 10 90 */	fmr f1, f2
lbl_80984F00:
/* 80984F00  3C 60 80 98 */	lis r3, lit_4248@ha /* 0x80986F14@ha */
/* 80984F04  C0 03 6F 14 */	lfs f0, lit_4248@l(r3)  /* 0x80986F14@l */
/* 80984F08  D0 1F 09 78 */	stfs f0, 0x978(r31)
/* 80984F0C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80984F10  4B 68 AC 6D */	bl setMorf__13mDoExt_morf_cFf
lbl_80984F14:
/* 80984F14  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80984F18  B0 1F 09 DC */	sth r0, 0x9dc(r31)
/* 80984F1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80984F20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80984F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80984F28  7C 08 03 A6 */	mtlr r0
/* 80984F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80984F30  4E 80 00 20 */	blr 
