lbl_80B43DBC:
/* 80B43DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B43DC0  7C 08 02 A6 */	mflr r0
/* 80B43DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B43DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B43DCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B43DD0  7C 7E 1B 78 */	mr r30, r3
/* 80B43DD4  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80B43DD8  2C 00 00 01 */	cmpwi r0, 1
/* 80B43DDC  41 82 00 28 */	beq lbl_80B43E04
/* 80B43DE0  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80B43DE4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B43DE8  4B 60 1A B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B43DEC  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80B43DF0  38 00 00 01 */	li r0, 1
/* 80B43DF4  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B43DF8  3C 60 80 B4 */	lis r3, lit_4577@ha /* 0x80B46100@ha */
/* 80B43DFC  C0 03 61 00 */	lfs f0, lit_4577@l(r3)  /* 0x80B46100@l */
/* 80B43E00  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B43E04:
/* 80B43E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B43E08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B43E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B43E10  7C 08 03 A6 */	mtlr r0
/* 80B43E14  38 21 00 10 */	addi r1, r1, 0x10
/* 80B43E18  4E 80 00 20 */	blr 
