lbl_80762E90:
/* 80762E90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80762E94  7C 08 02 A6 */	mflr r0
/* 80762E98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80762E9C  39 61 00 30 */	addi r11, r1, 0x30
/* 80762EA0  4B BF F3 3C */	b _savegpr_29
/* 80762EA4  7C 7D 1B 78 */	mr r29, r3
/* 80762EA8  3C 60 80 76 */	lis r3, lit_3788@ha
/* 80762EAC  3B E3 4D 0C */	addi r31, r3, lit_3788@l
/* 80762EB0  3B C0 00 00 */	li r30, 0
/* 80762EB4  A8 1D 0A 44 */	lha r0, 0xa44(r29)
/* 80762EB8  2C 00 00 01 */	cmpwi r0, 1
/* 80762EBC  41 82 00 54 */	beq lbl_80762F10
/* 80762EC0  40 80 00 C0 */	bge lbl_80762F80
/* 80762EC4  2C 00 00 00 */	cmpwi r0, 0
/* 80762EC8  40 80 00 08 */	bge lbl_80762ED0
/* 80762ECC  48 00 00 B4 */	b lbl_80762F80
lbl_80762ED0:
/* 80762ED0  38 00 00 01 */	li r0, 1
/* 80762ED4  B0 1D 0A 44 */	sth r0, 0xa44(r29)
/* 80762ED8  38 00 00 14 */	li r0, 0x14
/* 80762EDC  B0 1D 0A 38 */	sth r0, 0xa38(r29)
/* 80762EE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070466@ha */
/* 80762EE4  38 03 04 66 */	addi r0, r3, 0x0466 /* 0x00070466@l */
/* 80762EE8  90 01 00 08 */	stw r0, 8(r1)
/* 80762EEC  38 7D 09 6C */	addi r3, r29, 0x96c
/* 80762EF0  38 81 00 08 */	addi r4, r1, 8
/* 80762EF4  38 A0 00 00 */	li r5, 0
/* 80762EF8  38 C0 FF FF */	li r6, -1
/* 80762EFC  81 9D 09 6C */	lwz r12, 0x96c(r29)
/* 80762F00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80762F04  7D 89 03 A6 */	mtctr r12
/* 80762F08  4E 80 04 21 */	bctrl 
/* 80762F0C  48 00 00 74 */	b lbl_80762F80
lbl_80762F10:
/* 80762F10  A8 1D 0A 38 */	lha r0, 0xa38(r29)
/* 80762F14  2C 00 00 00 */	cmpwi r0, 0
/* 80762F18  40 82 00 10 */	bne lbl_80762F28
/* 80762F1C  38 00 00 04 */	li r0, 4
/* 80762F20  B0 1D 0A 4A */	sth r0, 0xa4a(r29)
/* 80762F24  48 00 00 08 */	b lbl_80762F2C
lbl_80762F28:
/* 80762F28  3B C0 00 01 */	li r30, 1
lbl_80762F2C:
/* 80762F2C  38 7D 0A 20 */	addi r3, r29, 0xa20
/* 80762F30  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80762F34  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80762F38  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80762F3C  4B B0 CB 00 */	b cLib_addCalc2__FPffff
/* 80762F40  C0 3D 0A 20 */	lfs f1, 0xa20(r29)
/* 80762F44  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80762F48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80762F4C  4C 40 13 82 */	cror 2, 0, 2
/* 80762F50  40 82 00 30 */	bne lbl_80762F80
/* 80762F54  38 00 00 00 */	li r0, 0
/* 80762F58  B0 1D 0A 42 */	sth r0, 0xa42(r29)
/* 80762F5C  B0 1D 0A 44 */	sth r0, 0xa44(r29)
/* 80762F60  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80762F64  4B B0 49 F0 */	b cM_rndF__Ff
/* 80762F68  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80762F6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80762F70  FC 00 00 1E */	fctiwz f0, f0
/* 80762F74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80762F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80762F7C  B0 1D 0A 38 */	sth r0, 0xa38(r29)
lbl_80762F80:
/* 80762F80  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80762F84  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80762F88  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80762F8C  4B B0 CA F4 */	b cLib_addCalc0__FPfff
/* 80762F90  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80762F94  C0 3D 0A 20 */	lfs f1, 0xa20(r29)
/* 80762F98  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80762F9C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80762FA0  EC 02 00 28 */	fsubs f0, f2, f0
/* 80762FA4  D0 1D 0A 24 */	stfs f0, 0xa24(r29)
/* 80762FA8  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80762FAC  A8 1D 0A 4C */	lha r0, 0xa4c(r29)
/* 80762FB0  7C 03 02 14 */	add r0, r3, r0
/* 80762FB4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80762FB8  7F C3 F3 78 */	mr r3, r30
/* 80762FBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80762FC0  4B BF F2 68 */	b _restgpr_29
/* 80762FC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80762FC8  7C 08 03 A6 */	mtlr r0
/* 80762FCC  38 21 00 30 */	addi r1, r1, 0x30
/* 80762FD0  4E 80 00 20 */	blr 
