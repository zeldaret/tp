lbl_80B473DC:
/* 80B473DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B473E0  7C 08 02 A6 */	mflr r0
/* 80B473E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B473E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B473EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B473F0  7C 7E 1B 78 */	mr r30, r3
/* 80B473F4  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80B473F8  2C 00 00 01 */	cmpwi r0, 1
/* 80B473FC  41 82 00 28 */	beq lbl_80B47424
/* 80B47400  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80B47404  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B47408  4B 5F E4 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4740C  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80B47410  38 00 00 01 */	li r0, 1
/* 80B47414  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B47418  3C 60 80 B5 */	lis r3, lit_4577@ha /* 0x80B49764@ha */
/* 80B4741C  C0 03 97 64 */	lfs f0, lit_4577@l(r3)  /* 0x80B49764@l */
/* 80B47420  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B47424:
/* 80B47424  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B47428  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4742C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B47430  7C 08 03 A6 */	mtlr r0
/* 80B47434  38 21 00 10 */	addi r1, r1, 0x10
/* 80B47438  4E 80 00 20 */	blr 
