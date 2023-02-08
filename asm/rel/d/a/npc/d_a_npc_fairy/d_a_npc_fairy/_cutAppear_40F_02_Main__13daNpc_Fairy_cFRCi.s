lbl_809B5C68:
/* 809B5C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B5C6C  7C 08 02 A6 */	mflr r0
/* 809B5C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B5C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B5C78  3B E0 00 00 */	li r31, 0
/* 809B5C7C  80 04 00 00 */	lwz r0, 0(r4)
/* 809B5C80  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B5C84  41 82 00 6C */	beq lbl_809B5CF0
/* 809B5C88  40 80 00 1C */	bge lbl_809B5CA4
/* 809B5C8C  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B5C90  41 82 00 44 */	beq lbl_809B5CD4
/* 809B5C94  40 80 00 84 */	bge lbl_809B5D18
/* 809B5C98  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B5C9C  41 82 00 14 */	beq lbl_809B5CB0
/* 809B5CA0  48 00 00 78 */	b lbl_809B5D18
lbl_809B5CA4:
/* 809B5CA4  2C 00 00 28 */	cmpwi r0, 0x28
/* 809B5CA8  41 82 00 6C */	beq lbl_809B5D14
/* 809B5CAC  48 00 00 6C */	b lbl_809B5D18
lbl_809B5CB0:
/* 809B5CB0  A8 83 0F 90 */	lha r4, 0xf90(r3)
/* 809B5CB4  38 04 FF FF */	addi r0, r4, -1
/* 809B5CB8  B0 03 0F 90 */	sth r0, 0xf90(r3)
/* 809B5CBC  7C 00 07 35 */	extsh. r0, r0
/* 809B5CC0  41 81 00 58 */	bgt lbl_809B5D18
/* 809B5CC4  38 60 00 0B */	li r3, 0xb
/* 809B5CC8  4B 7F 2B 1D */	bl dKy_change_colpat__FUc
/* 809B5CCC  3B E0 00 01 */	li r31, 1
/* 809B5CD0  48 00 00 48 */	b lbl_809B5D18
lbl_809B5CD4:
/* 809B5CD4  A8 83 0F 90 */	lha r4, 0xf90(r3)
/* 809B5CD8  38 04 FF FF */	addi r0, r4, -1
/* 809B5CDC  B0 03 0F 90 */	sth r0, 0xf90(r3)
/* 809B5CE0  7C 00 07 35 */	extsh. r0, r0
/* 809B5CE4  41 81 00 34 */	bgt lbl_809B5D18
/* 809B5CE8  3B E0 00 01 */	li r31, 1
/* 809B5CEC  48 00 00 2C */	b lbl_809B5D18
lbl_809B5CF0:
/* 809B5CF0  38 80 00 00 */	li r4, 0
/* 809B5CF4  38 A0 00 00 */	li r5, 0
/* 809B5CF8  38 C0 00 00 */	li r6, 0
/* 809B5CFC  38 E0 00 00 */	li r7, 0
/* 809B5D00  4B 79 5F 79 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B5D04  2C 03 00 00 */	cmpwi r3, 0
/* 809B5D08  41 82 00 10 */	beq lbl_809B5D18
/* 809B5D0C  3B E0 00 01 */	li r31, 1
/* 809B5D10  48 00 00 08 */	b lbl_809B5D18
lbl_809B5D14:
/* 809B5D14  3B E0 00 01 */	li r31, 1
lbl_809B5D18:
/* 809B5D18  7F E3 FB 78 */	mr r3, r31
/* 809B5D1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B5D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B5D24  7C 08 03 A6 */	mtlr r0
/* 809B5D28  38 21 00 10 */	addi r1, r1, 0x10
/* 809B5D2C  4E 80 00 20 */	blr 
