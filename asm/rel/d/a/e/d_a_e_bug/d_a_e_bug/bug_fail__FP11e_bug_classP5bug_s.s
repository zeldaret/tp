lbl_80695ECC:
/* 80695ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80695ED0  7C 08 02 A6 */	mflr r0
/* 80695ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80695ED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80695EDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80695EE0  7C 9E 23 78 */	mr r30, r4
/* 80695EE4  3C A0 80 69 */	lis r5, lit_3829@ha /* 0x80697CA0@ha */
/* 80695EE8  3B E5 7C A0 */	addi r31, r5, lit_3829@l /* 0x80697CA0@l */
/* 80695EEC  4B FF F8 F1 */	bl bug_action__FP11e_bug_classP5bug_s
/* 80695EF0  98 7E 00 53 */	stb r3, 0x53(r30)
/* 80695EF4  88 1E 00 51 */	lbz r0, 0x51(r30)
/* 80695EF8  7C 00 07 75 */	extsb. r0, r0
/* 80695EFC  40 82 00 44 */	bne lbl_80695F40
/* 80695F00  7F C3 F3 78 */	mr r3, r30
/* 80695F04  38 80 00 01 */	li r4, 1
/* 80695F08  4B FF ED C1 */	bl simple_bg_check__FP5bug_si
/* 80695F0C  2C 03 00 00 */	cmpwi r3, 0
/* 80695F10  41 82 00 30 */	beq lbl_80695F40
/* 80695F14  38 00 00 01 */	li r0, 1
/* 80695F18  98 1E 00 51 */	stb r0, 0x51(r30)
/* 80695F1C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80695F20  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80695F24  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80695F28  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80695F2C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80695F30  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80695F34  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80695F38  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80695F3C  D0 1E 00 38 */	stfs f0, 0x38(r30)
lbl_80695F40:
/* 80695F40  88 1E 00 53 */	lbz r0, 0x53(r30)
/* 80695F44  28 00 00 00 */	cmplwi r0, 0
/* 80695F48  40 82 00 20 */	bne lbl_80695F68
/* 80695F4C  A8 7E 00 3C */	lha r3, 0x3c(r30)
/* 80695F50  38 03 20 00 */	addi r0, r3, 0x2000
/* 80695F54  B0 1E 00 3C */	sth r0, 0x3c(r30)
/* 80695F58  A8 7E 00 3E */	lha r3, 0x3e(r30)
/* 80695F5C  38 03 13 00 */	addi r0, r3, 0x1300
/* 80695F60  B0 1E 00 3E */	sth r0, 0x3e(r30)
/* 80695F64  48 00 00 1C */	b lbl_80695F80
lbl_80695F68:
/* 80695F68  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80695F6C  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80695F70  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 80695F74  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80695F78  38 00 80 00 */	li r0, -32768
/* 80695F7C  B0 1E 00 3C */	sth r0, 0x3c(r30)
lbl_80695F80:
/* 80695F80  88 1E 00 54 */	lbz r0, 0x54(r30)
/* 80695F84  28 00 00 00 */	cmplwi r0, 0
/* 80695F88  40 82 00 2C */	bne lbl_80695FB4
/* 80695F8C  38 7E 00 28 */	addi r3, r30, 0x28
/* 80695F90  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80695F94  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80695F98  4B BD 9A E9 */	bl cLib_addCalc0__FPfff
/* 80695F9C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80695FA0  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80695FA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80695FA8  40 80 00 0C */	bge lbl_80695FB4
/* 80695FAC  38 00 00 00 */	li r0, 0
/* 80695FB0  98 1E 00 50 */	stb r0, 0x50(r30)
lbl_80695FB4:
/* 80695FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80695FB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80695FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80695FC0  7C 08 03 A6 */	mtlr r0
/* 80695FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80695FC8  4E 80 00 20 */	blr 
