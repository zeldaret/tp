lbl_807A9E58:
/* 807A9E58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807A9E5C  7C 08 02 A6 */	mflr r0
/* 807A9E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 807A9E64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807A9E68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807A9E6C  7C 7E 1B 78 */	mr r30, r3
/* 807A9E70  3C 60 80 7B */	lis r3, lit_3909@ha
/* 807A9E74  3B E3 FD 2C */	addi r31, r3, lit_3909@l
/* 807A9E78  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 807A9E7C  2C 00 00 01 */	cmpwi r0, 1
/* 807A9E80  41 82 01 70 */	beq lbl_807A9FF0
/* 807A9E84  40 80 01 B4 */	bge lbl_807AA038
/* 807A9E88  2C 00 00 00 */	cmpwi r0, 0
/* 807A9E8C  40 80 00 08 */	bge lbl_807A9E94
/* 807A9E90  48 00 01 A8 */	b lbl_807AA038
lbl_807A9E94:
/* 807A9E94  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070360@ha */
/* 807A9E98  38 03 03 60 */	addi r0, r3, 0x0360 /* 0x00070360@l */
/* 807A9E9C  90 01 00 08 */	stw r0, 8(r1)
/* 807A9EA0  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807A9EA4  38 81 00 08 */	addi r4, r1, 8
/* 807A9EA8  38 A0 FF FF */	li r5, -1
/* 807A9EAC  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807A9EB0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807A9EB4  7D 89 03 A6 */	mtctr r12
/* 807A9EB8  4E 80 04 21 */	bctrl 
/* 807A9EBC  38 00 00 00 */	li r0, 0
/* 807A9EC0  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 807A9EC4  98 1E 06 E5 */	stb r0, 0x6e5(r30)
/* 807A9EC8  90 1E 09 B4 */	stw r0, 0x9b4(r30)
/* 807A9ECC  7F C3 F3 78 */	mr r3, r30
/* 807A9ED0  38 80 00 09 */	li r4, 9
/* 807A9ED4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807A9ED8  38 A0 00 02 */	li r5, 2
/* 807A9EDC  FC 40 08 90 */	fmr f2, f1
/* 807A9EE0  4B FF D5 81 */	bl bckSet__8daE_SW_cFifUcf
/* 807A9EE4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A9EE8  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 807A9EEC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807A9EF0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807A9EF4  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807A9EF8  38 00 00 01 */	li r0, 1
/* 807A9EFC  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807A9F00  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807A9F04  A8 1E 06 CC */	lha r0, 0x6cc(r30)
/* 807A9F08  7C 03 00 50 */	subf r0, r3, r0
/* 807A9F0C  7C 00 07 35 */	extsh. r0, r0
/* 807A9F10  40 80 00 10 */	bge lbl_807A9F20
/* 807A9F14  38 00 C0 00 */	li r0, -16384
/* 807A9F18  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 807A9F1C  48 00 00 0C */	b lbl_807A9F28
lbl_807A9F20:
/* 807A9F20  38 00 40 00 */	li r0, 0x4000
/* 807A9F24  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
lbl_807A9F28:
/* 807A9F28  A8 7E 06 CC */	lha r3, 0x6cc(r30)
/* 807A9F2C  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 807A9F30  7C 03 02 14 */	add r0, r3, r0
/* 807A9F34  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807A9F38  88 1E 06 E8 */	lbz r0, 0x6e8(r30)
/* 807A9F3C  28 00 00 01 */	cmplwi r0, 1
/* 807A9F40  41 80 00 68 */	blt lbl_807A9FA8
/* 807A9F44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A9F48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A9F4C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807A9F50  4B 86 24 8C */	b mDoMtx_YrotS__FPA4_fs
/* 807A9F54  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 807A9F58  2C 00 00 00 */	cmpwi r0, 0
/* 807A9F5C  40 80 00 18 */	bge lbl_807A9F74
/* 807A9F60  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 807A9F64  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807A9F68  C0 7F 00 04 */	lfs f3, 4(r31)
/* 807A9F6C  4B 86 2E 30 */	b transM__14mDoMtx_stack_cFfff
/* 807A9F70  48 00 00 14 */	b lbl_807A9F84
lbl_807A9F74:
/* 807A9F74  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 807A9F78  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 807A9F7C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 807A9F80  4B 86 2E 1C */	b transM__14mDoMtx_stack_cFfff
lbl_807A9F84:
/* 807A9F84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807A9F88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807A9F8C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807A9F90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807A9F94  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807A9F98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A9F9C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807A9FA0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807A9FA4  48 00 00 18 */	b lbl_807A9FBC
lbl_807A9FA8:
/* 807A9FA8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A9FAC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807A9FB0  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807A9FB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A9FB8  D0 21 00 14 */	stfs f1, 0x14(r1)
lbl_807A9FBC:
/* 807A9FBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A9FC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A9FC4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807A9FC8  28 1E 00 00 */	cmplwi r30, 0
/* 807A9FCC  41 82 00 0C */	beq lbl_807A9FD8
/* 807A9FD0  80 9E 00 04 */	lwz r4, 4(r30)
/* 807A9FD4  48 00 00 08 */	b lbl_807A9FDC
lbl_807A9FD8:
/* 807A9FD8  38 80 FF FF */	li r4, -1
lbl_807A9FDC:
/* 807A9FDC  38 A1 00 0C */	addi r5, r1, 0xc
/* 807A9FE0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807A9FE4  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 807A9FE8  7D 89 03 A6 */	mtctr r12
/* 807A9FEC  4E 80 04 21 */	bctrl 
lbl_807A9FF0:
/* 807A9FF0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807A9FF4  A8 9E 06 CC */	lha r4, 0x6cc(r30)
/* 807A9FF8  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 807A9FFC  7C 04 02 14 */	add r0, r4, r0
/* 807AA000  7C 04 07 34 */	extsh r4, r0
/* 807AA004  38 A0 00 04 */	li r5, 4
/* 807AA008  38 C0 10 00 */	li r6, 0x1000
/* 807AA00C  38 E0 01 00 */	li r7, 0x100
/* 807AA010  4B AC 65 30 */	b cLib_addCalcAngleS__FPsssss
/* 807AA014  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807AA018  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807AA01C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 807AA020  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 807AA024  40 82 00 14 */	bne lbl_807AA038
/* 807AA028  7F C3 F3 78 */	mr r3, r30
/* 807AA02C  38 80 00 07 */	li r4, 7
/* 807AA030  38 A0 00 0A */	li r5, 0xa
/* 807AA034  4B FF DB 31 */	bl setActionMode__8daE_SW_cFss
lbl_807AA038:
/* 807AA038  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807AA03C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807AA040  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807AA044  7C 08 03 A6 */	mtlr r0
/* 807AA048  38 21 00 20 */	addi r1, r1, 0x20
/* 807AA04C  4E 80 00 20 */	blr 
