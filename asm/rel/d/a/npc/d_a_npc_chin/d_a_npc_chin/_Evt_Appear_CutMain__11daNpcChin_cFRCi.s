lbl_80990BD8:
/* 80990BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80990BDC  7C 08 02 A6 */	mflr r0
/* 80990BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80990BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80990BE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80990BEC  7C 7E 1B 78 */	mr r30, r3
/* 80990BF0  3B E0 00 00 */	li r31, 0
/* 80990BF4  80 04 00 00 */	lwz r0, 0(r4)
/* 80990BF8  2C 00 00 14 */	cmpwi r0, 0x14
/* 80990BFC  41 82 00 28 */	beq lbl_80990C24
/* 80990C00  40 80 00 10 */	bge lbl_80990C10
/* 80990C04  2C 00 00 0A */	cmpwi r0, 0xa
/* 80990C08  41 82 00 14 */	beq lbl_80990C1C
/* 80990C0C  48 00 00 70 */	b lbl_80990C7C
lbl_80990C10:
/* 80990C10  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80990C14  41 82 00 3C */	beq lbl_80990C50
/* 80990C18  48 00 00 64 */	b lbl_80990C7C
lbl_80990C1C:
/* 80990C1C  3B E0 00 01 */	li r31, 1
/* 80990C20  48 00 00 60 */	b lbl_80990C80
lbl_80990C24:
/* 80990C24  38 80 00 00 */	li r4, 0
/* 80990C28  38 A0 00 01 */	li r5, 1
/* 80990C2C  38 C0 00 00 */	li r6, 0
/* 80990C30  4B 7C 31 55 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80990C34  2C 03 00 00 */	cmpwi r3, 0
/* 80990C38  41 82 00 0C */	beq lbl_80990C44
/* 80990C3C  3B E0 00 01 */	li r31, 1
/* 80990C40  48 00 00 40 */	b lbl_80990C80
lbl_80990C44:
/* 80990C44  7F C3 F3 78 */	mr r3, r30
/* 80990C48  4B FF E5 C1 */	bl _talk_motion__11daNpcChin_cFv
/* 80990C4C  48 00 00 34 */	b lbl_80990C80
lbl_80990C50:
/* 80990C50  38 80 00 00 */	li r4, 0
/* 80990C54  38 A0 00 01 */	li r5, 1
/* 80990C58  38 C0 00 00 */	li r6, 0
/* 80990C5C  4B 7C 31 29 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80990C60  2C 03 00 00 */	cmpwi r3, 0
/* 80990C64  41 82 00 0C */	beq lbl_80990C70
/* 80990C68  3B E0 00 01 */	li r31, 1
/* 80990C6C  48 00 00 14 */	b lbl_80990C80
lbl_80990C70:
/* 80990C70  7F C3 F3 78 */	mr r3, r30
/* 80990C74  4B FF E5 95 */	bl _talk_motion__11daNpcChin_cFv
/* 80990C78  48 00 00 08 */	b lbl_80990C80
lbl_80990C7C:
/* 80990C7C  3B E0 00 01 */	li r31, 1
lbl_80990C80:
/* 80990C80  7F E3 FB 78 */	mr r3, r31
/* 80990C84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80990C88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80990C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80990C90  7C 08 03 A6 */	mtlr r0
/* 80990C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80990C98  4E 80 00 20 */	blr 
