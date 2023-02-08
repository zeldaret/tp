lbl_809B7D7C:
/* 809B7D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B7D80  7C 08 02 A6 */	mflr r0
/* 809B7D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B7D88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B7D8C  3B E0 00 00 */	li r31, 0
/* 809B7D90  80 04 00 00 */	lwz r0, 0(r4)
/* 809B7D94  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B7D98  41 82 00 44 */	beq lbl_809B7DDC
/* 809B7D9C  40 80 00 10 */	bge lbl_809B7DAC
/* 809B7DA0  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B7DA4  41 82 00 14 */	beq lbl_809B7DB8
/* 809B7DA8  48 00 00 70 */	b lbl_809B7E18
lbl_809B7DAC:
/* 809B7DAC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B7DB0  41 82 00 48 */	beq lbl_809B7DF8
/* 809B7DB4  48 00 00 64 */	b lbl_809B7E18
lbl_809B7DB8:
/* 809B7DB8  A8 83 0F 90 */	lha r4, 0xf90(r3)
/* 809B7DBC  38 04 FF FF */	addi r0, r4, -1
/* 809B7DC0  B0 03 0F 90 */	sth r0, 0xf90(r3)
/* 809B7DC4  7C 00 07 35 */	extsh. r0, r0
/* 809B7DC8  41 81 00 50 */	bgt lbl_809B7E18
/* 809B7DCC  38 60 00 0B */	li r3, 0xb
/* 809B7DD0  4B 7F 0A 15 */	bl dKy_change_colpat__FUc
/* 809B7DD4  3B E0 00 01 */	li r31, 1
/* 809B7DD8  48 00 00 40 */	b lbl_809B7E18
lbl_809B7DDC:
/* 809B7DDC  A8 83 0F 90 */	lha r4, 0xf90(r3)
/* 809B7DE0  38 04 FF FF */	addi r0, r4, -1
/* 809B7DE4  B0 03 0F 90 */	sth r0, 0xf90(r3)
/* 809B7DE8  7C 00 07 35 */	extsh. r0, r0
/* 809B7DEC  41 81 00 2C */	bgt lbl_809B7E18
/* 809B7DF0  3B E0 00 01 */	li r31, 1
/* 809B7DF4  48 00 00 24 */	b lbl_809B7E18
lbl_809B7DF8:
/* 809B7DF8  38 80 00 00 */	li r4, 0
/* 809B7DFC  38 A0 00 00 */	li r5, 0
/* 809B7E00  38 C0 00 00 */	li r6, 0
/* 809B7E04  38 E0 00 00 */	li r7, 0
/* 809B7E08  4B 79 3E 71 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B7E0C  2C 03 00 00 */	cmpwi r3, 0
/* 809B7E10  41 82 00 08 */	beq lbl_809B7E18
/* 809B7E14  3B E0 00 01 */	li r31, 1
lbl_809B7E18:
/* 809B7E18  7F E3 FB 78 */	mr r3, r31
/* 809B7E1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B7E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B7E24  7C 08 03 A6 */	mtlr r0
/* 809B7E28  38 21 00 10 */	addi r1, r1, 0x10
/* 809B7E2C  4E 80 00 20 */	blr 
