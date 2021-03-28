lbl_809B4BF8:
/* 809B4BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B4BFC  7C 08 02 A6 */	mflr r0
/* 809B4C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B4C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B4C08  3B E0 00 00 */	li r31, 0
/* 809B4C0C  80 04 00 00 */	lwz r0, 0(r4)
/* 809B4C10  2C 00 00 1E */	cmpwi r0, 0x1e
/* 809B4C14  41 82 00 6C */	beq lbl_809B4C80
/* 809B4C18  40 80 00 1C */	bge lbl_809B4C34
/* 809B4C1C  2C 00 00 14 */	cmpwi r0, 0x14
/* 809B4C20  41 82 00 44 */	beq lbl_809B4C64
/* 809B4C24  40 80 00 84 */	bge lbl_809B4CA8
/* 809B4C28  2C 00 00 0A */	cmpwi r0, 0xa
/* 809B4C2C  41 82 00 14 */	beq lbl_809B4C40
/* 809B4C30  48 00 00 78 */	b lbl_809B4CA8
lbl_809B4C34:
/* 809B4C34  2C 00 00 28 */	cmpwi r0, 0x28
/* 809B4C38  41 82 00 6C */	beq lbl_809B4CA4
/* 809B4C3C  48 00 00 6C */	b lbl_809B4CA8
lbl_809B4C40:
/* 809B4C40  A8 83 0F 90 */	lha r4, 0xf90(r3)
/* 809B4C44  38 04 FF FF */	addi r0, r4, -1
/* 809B4C48  B0 03 0F 90 */	sth r0, 0xf90(r3)
/* 809B4C4C  7C 00 07 35 */	extsh. r0, r0
/* 809B4C50  41 81 00 58 */	bgt lbl_809B4CA8
/* 809B4C54  38 60 00 0B */	li r3, 0xb
/* 809B4C58  4B 7F 3B 8C */	b dKy_change_colpat__FUc
/* 809B4C5C  3B E0 00 01 */	li r31, 1
/* 809B4C60  48 00 00 48 */	b lbl_809B4CA8
lbl_809B4C64:
/* 809B4C64  A8 83 0F 90 */	lha r4, 0xf90(r3)
/* 809B4C68  38 04 FF FF */	addi r0, r4, -1
/* 809B4C6C  B0 03 0F 90 */	sth r0, 0xf90(r3)
/* 809B4C70  7C 00 07 35 */	extsh. r0, r0
/* 809B4C74  41 81 00 34 */	bgt lbl_809B4CA8
/* 809B4C78  3B E0 00 01 */	li r31, 1
/* 809B4C7C  48 00 00 2C */	b lbl_809B4CA8
lbl_809B4C80:
/* 809B4C80  38 80 00 00 */	li r4, 0
/* 809B4C84  38 A0 00 00 */	li r5, 0
/* 809B4C88  38 C0 00 00 */	li r6, 0
/* 809B4C8C  38 E0 00 00 */	li r7, 0
/* 809B4C90  4B 79 6F E8 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 809B4C94  2C 03 00 00 */	cmpwi r3, 0
/* 809B4C98  41 82 00 10 */	beq lbl_809B4CA8
/* 809B4C9C  3B E0 00 01 */	li r31, 1
/* 809B4CA0  48 00 00 08 */	b lbl_809B4CA8
lbl_809B4CA4:
/* 809B4CA4  3B E0 00 01 */	li r31, 1
lbl_809B4CA8:
/* 809B4CA8  7F E3 FB 78 */	mr r3, r31
/* 809B4CAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B4CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B4CB4  7C 08 03 A6 */	mtlr r0
/* 809B4CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 809B4CBC  4E 80 00 20 */	blr 
