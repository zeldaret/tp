lbl_800E6EEC:
/* 800E6EEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E6EF0  7C 08 02 A6 */	mflr r0
/* 800E6EF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E6EF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E6EFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E6F00  7C 7E 1B 78 */	mr r30, r3
/* 800E6F04  38 80 00 73 */	li r4, 0x73
/* 800E6F08  4B FD B0 65 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E6F0C  7F C3 F3 78 */	mr r3, r30
/* 800E6F10  38 80 00 B5 */	li r4, 0xb5
/* 800E6F14  4B FC 56 45 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800E6F18  2C 03 00 00 */	cmpwi r3, 0
/* 800E6F1C  41 82 00 78 */	beq lbl_800E6F94
/* 800E6F20  3C 60 80 39 */	lis r3, m__18daAlinkHIO_grab_c0@ha
/* 800E6F24  3B E3 EC 48 */	addi r31, r3, m__18daAlinkHIO_grab_c0@l
/* 800E6F28  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 800E6F2C  7F C3 F3 78 */	mr r3, r30
/* 800E6F30  38 80 00 B5 */	li r4, 0xb5
/* 800E6F34  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 800E6F38  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 800E6F3C  EC 00 08 2A */	fadds f0, f0, f1
/* 800E6F40  FC 00 00 1E */	fctiwz f0, f0
/* 800E6F44  D8 01 00 08 */	stfd f0, 8(r1)
/* 800E6F48  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 800E6F4C  C0 62 92 C0 */	lfs f3, lit_6108(r2)
/* 800E6F50  4B FC 60 BD */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800E6F54  3C 60 80 39 */	lis r3, m__18daAlinkHIO_grab_c0@ha
/* 800E6F58  38 63 EC 48 */	addi r3, r3, m__18daAlinkHIO_grab_c0@l
/* 800E6F5C  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 800E6F60  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800E6F64  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E6F68  C0 42 93 34 */	lfs f2, lit_7710(r2)
/* 800E6F6C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 800E6F70  EC 02 00 28 */	fsubs f0, f2, f0
/* 800E6F74  EC 01 00 24 */	fdivs f0, f1, f0
/* 800E6F78  D0 1E 34 7C */	stfs f0, 0x347c(r30)
/* 800E6F7C  38 00 00 01 */	li r0, 1
/* 800E6F80  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800E6F84  7F C3 F3 78 */	mr r3, r30
/* 800E6F88  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800E6F8C  4B FF E0 1D */	bl setCarryArmAngle__9daAlink_cFff
/* 800E6F90  48 00 00 34 */	b lbl_800E6FC4
lbl_800E6F94:
/* 800E6F94  7F C3 F3 78 */	mr r3, r30
/* 800E6F98  38 80 00 AF */	li r4, 0xaf
/* 800E6F9C  3C A0 80 39 */	lis r5, m__18daAlinkHIO_grab_c0@ha
/* 800E6FA0  38 A5 EC 48 */	addi r5, r5, m__18daAlinkHIO_grab_c0@l
/* 800E6FA4  38 A5 00 28 */	addi r5, r5, 0x28
/* 800E6FA8  4B FC 61 4D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800E6FAC  3C 60 80 39 */	lis r3, m__18daAlinkHIO_grab_c0@ha
/* 800E6FB0  38 63 EC 48 */	addi r3, r3, m__18daAlinkHIO_grab_c0@l
/* 800E6FB4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800E6FB8  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800E6FBC  38 00 00 00 */	li r0, 0
/* 800E6FC0  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_800E6FC4:
/* 800E6FC4  38 60 00 01 */	li r3, 1
/* 800E6FC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E6FCC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E6FD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E6FD4  7C 08 03 A6 */	mtlr r0
/* 800E6FD8  38 21 00 20 */	addi r1, r1, 0x20
/* 800E6FDC  4E 80 00 20 */	blr 
