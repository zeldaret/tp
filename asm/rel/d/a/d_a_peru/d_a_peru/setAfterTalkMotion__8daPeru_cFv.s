lbl_80D47C4C:
/* 80D47C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D47C50  7C 08 02 A6 */	mflr r0
/* 80D47C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D47C58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D47C5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D47C60  7C 7E 1B 78 */	mr r30, r3
/* 80D47C64  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80D47C68  2C 00 00 02 */	cmpwi r0, 2
/* 80D47C6C  41 82 00 28 */	beq lbl_80D47C94
/* 80D47C70  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80D47C74  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80D47C78  4B 3F DC 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D47C7C  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80D47C80  38 00 00 02 */	li r0, 2
/* 80D47C84  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80D47C88  3C 60 80 D5 */	lis r3, lit_4548@ha /* 0x80D4C128@ha */
/* 80D47C8C  C0 03 C1 28 */	lfs f0, lit_4548@l(r3)  /* 0x80D4C128@l */
/* 80D47C90  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80D47C94:
/* 80D47C94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D47C98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D47C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D47CA0  7C 08 03 A6 */	mtlr r0
/* 80D47CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D47CA8  4E 80 00 20 */	blr 
