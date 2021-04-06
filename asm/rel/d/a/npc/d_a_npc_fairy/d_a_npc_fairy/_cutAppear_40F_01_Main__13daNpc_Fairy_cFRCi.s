lbl_809B59EC:
/* 809B59EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B59F0  7C 08 02 A6 */	mflr r0
/* 809B59F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B59F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B59FC  3B E0 00 00 */	li r31, 0
/* 809B5A00  80 04 00 00 */	lwz r0, 0(r4)
/* 809B5A04  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B5A08  41 82 00 6C */	beq lbl_809B5A74
/* 809B5A0C  40 80 00 1C */	bge lbl_809B5A28
/* 809B5A10  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B5A14  41 82 00 44 */	beq lbl_809B5A58
/* 809B5A18  40 80 00 84 */	bge lbl_809B5A9C
/* 809B5A1C  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B5A20  41 82 00 14 */	beq lbl_809B5A34
/* 809B5A24  48 00 00 78 */	b lbl_809B5A9C
lbl_809B5A28:
/* 809B5A28  2C 00 00 32 */	cmpwi r0, 0x32
/* 809B5A2C  41 82 00 6C */	beq lbl_809B5A98
/* 809B5A30  48 00 00 6C */	b lbl_809B5A9C
lbl_809B5A34:
/* 809B5A34  A8 83 0F 90 */	lha r4, 0xf90(r3)
/* 809B5A38  38 04 FF FF */	addi r0, r4, -1
/* 809B5A3C  B0 03 0F 90 */	sth r0, 0xf90(r3)
/* 809B5A40  7C 00 07 35 */	extsh. r0, r0
/* 809B5A44  41 81 00 58 */	bgt lbl_809B5A9C
/* 809B5A48  38 60 00 0B */	li r3, 0xb
/* 809B5A4C  4B 7F 2D 99 */	bl dKy_change_colpat__FUc
/* 809B5A50  3B E0 00 01 */	li r31, 1
/* 809B5A54  48 00 00 48 */	b lbl_809B5A9C
lbl_809B5A58:
/* 809B5A58  A8 83 0F 90 */	lha r4, 0xf90(r3)
/* 809B5A5C  38 04 FF FF */	addi r0, r4, -1
/* 809B5A60  B0 03 0F 90 */	sth r0, 0xf90(r3)
/* 809B5A64  7C 00 07 35 */	extsh. r0, r0
/* 809B5A68  41 81 00 34 */	bgt lbl_809B5A9C
/* 809B5A6C  3B E0 00 01 */	li r31, 1
/* 809B5A70  48 00 00 2C */	b lbl_809B5A9C
lbl_809B5A74:
/* 809B5A74  38 80 00 00 */	li r4, 0
/* 809B5A78  38 A0 00 00 */	li r5, 0
/* 809B5A7C  38 C0 00 00 */	li r6, 0
/* 809B5A80  38 E0 00 00 */	li r7, 0
/* 809B5A84  4B 79 61 F5 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B5A88  2C 03 00 00 */	cmpwi r3, 0
/* 809B5A8C  41 82 00 10 */	beq lbl_809B5A9C
/* 809B5A90  3B E0 00 01 */	li r31, 1
/* 809B5A94  48 00 00 08 */	b lbl_809B5A9C
lbl_809B5A98:
/* 809B5A98  3B E0 00 01 */	li r31, 1
lbl_809B5A9C:
/* 809B5A9C  7F E3 FB 78 */	mr r3, r31
/* 809B5AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B5AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B5AA8  7C 08 03 A6 */	mtlr r0
/* 809B5AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 809B5AB0  4E 80 00 20 */	blr 
