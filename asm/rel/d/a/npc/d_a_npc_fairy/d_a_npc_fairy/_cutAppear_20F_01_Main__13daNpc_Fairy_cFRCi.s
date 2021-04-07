lbl_809B4EB4:
/* 809B4EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B4EB8  7C 08 02 A6 */	mflr r0
/* 809B4EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B4EC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B4EC4  93 C1 00 08 */	stw r30, 8(r1)
/* 809B4EC8  7C 7F 1B 78 */	mr r31, r3
/* 809B4ECC  3B C0 00 00 */	li r30, 0
/* 809B4ED0  80 04 00 00 */	lwz r0, 0(r4)
/* 809B4ED4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B4ED8  41 82 00 78 */	beq lbl_809B4F50
/* 809B4EDC  40 80 00 1C */	bge lbl_809B4EF8
/* 809B4EE0  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B4EE4  41 82 00 50 */	beq lbl_809B4F34
/* 809B4EE8  40 80 00 FC */	bge lbl_809B4FE4
/* 809B4EEC  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B4EF0  41 82 00 20 */	beq lbl_809B4F10
/* 809B4EF4  48 00 00 F0 */	b lbl_809B4FE4
lbl_809B4EF8:
/* 809B4EF8  2C 00 00 3C */	cmpwi r0, 0x3c
/* 809B4EFC  41 82 00 E4 */	beq lbl_809B4FE0
/* 809B4F00  40 80 00 E4 */	bge lbl_809B4FE4
/* 809B4F04  2C 00 00 28 */	cmpwi r0, 0x28
/* 809B4F08  41 82 00 B4 */	beq lbl_809B4FBC
/* 809B4F0C  48 00 00 D8 */	b lbl_809B4FE4
lbl_809B4F10:
/* 809B4F10  A8 7F 0F 90 */	lha r3, 0xf90(r31)
/* 809B4F14  38 03 FF FF */	addi r0, r3, -1
/* 809B4F18  B0 1F 0F 90 */	sth r0, 0xf90(r31)
/* 809B4F1C  7C 00 07 35 */	extsh. r0, r0
/* 809B4F20  41 81 00 C4 */	bgt lbl_809B4FE4
/* 809B4F24  38 60 00 0B */	li r3, 0xb
/* 809B4F28  4B 7F 38 BD */	bl dKy_change_colpat__FUc
/* 809B4F2C  3B C0 00 01 */	li r30, 1
/* 809B4F30  48 00 00 B4 */	b lbl_809B4FE4
lbl_809B4F34:
/* 809B4F34  A8 7F 0F 90 */	lha r3, 0xf90(r31)
/* 809B4F38  38 03 FF FF */	addi r0, r3, -1
/* 809B4F3C  B0 1F 0F 90 */	sth r0, 0xf90(r31)
/* 809B4F40  7C 00 07 35 */	extsh. r0, r0
/* 809B4F44  41 81 00 A0 */	bgt lbl_809B4FE4
/* 809B4F48  3B C0 00 01 */	li r30, 1
/* 809B4F4C  48 00 00 98 */	b lbl_809B4FE4
lbl_809B4F50:
/* 809B4F50  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 809B4F54  38 A0 00 01 */	li r5, 1
/* 809B4F58  88 04 00 11 */	lbz r0, 0x11(r4)
/* 809B4F5C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809B4F60  40 82 00 1C */	bne lbl_809B4F7C
/* 809B4F64  3C 60 80 9C */	lis r3, lit_3943@ha /* 0x809B93C4@ha */
/* 809B4F68  C0 23 93 C4 */	lfs f1, lit_3943@l(r3)  /* 0x809B93C4@l */
/* 809B4F6C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 809B4F70  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809B4F74  41 82 00 08 */	beq lbl_809B4F7C
/* 809B4F78  38 A0 00 00 */	li r5, 0
lbl_809B4F7C:
/* 809B4F7C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 809B4F80  41 82 00 64 */	beq lbl_809B4FE4
/* 809B4F84  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809B4F88  2C 00 00 03 */	cmpwi r0, 3
/* 809B4F8C  41 82 00 28 */	beq lbl_809B4FB4
/* 809B4F90  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809B4F94  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809B4F98  4B 79 09 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B4F9C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809B4FA0  38 00 00 03 */	li r0, 3
/* 809B4FA4  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809B4FA8  3C 60 80 9C */	lis r3, lit_3945@ha /* 0x809B93CC@ha */
/* 809B4FAC  C0 03 93 CC */	lfs f0, lit_3945@l(r3)  /* 0x809B93CC@l */
/* 809B4FB0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809B4FB4:
/* 809B4FB4  3B C0 00 01 */	li r30, 1
/* 809B4FB8  48 00 00 2C */	b lbl_809B4FE4
lbl_809B4FBC:
/* 809B4FBC  38 80 00 00 */	li r4, 0
/* 809B4FC0  38 A0 00 00 */	li r5, 0
/* 809B4FC4  38 C0 00 00 */	li r6, 0
/* 809B4FC8  38 E0 00 00 */	li r7, 0
/* 809B4FCC  4B 79 6C AD */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B4FD0  2C 03 00 00 */	cmpwi r3, 0
/* 809B4FD4  41 82 00 10 */	beq lbl_809B4FE4
/* 809B4FD8  3B C0 00 01 */	li r30, 1
/* 809B4FDC  48 00 00 08 */	b lbl_809B4FE4
lbl_809B4FE0:
/* 809B4FE0  3B C0 00 01 */	li r30, 1
lbl_809B4FE4:
/* 809B4FE4  7F C3 F3 78 */	mr r3, r30
/* 809B4FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B4FEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B4FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B4FF4  7C 08 03 A6 */	mtlr r0
/* 809B4FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 809B4FFC  4E 80 00 20 */	blr 
