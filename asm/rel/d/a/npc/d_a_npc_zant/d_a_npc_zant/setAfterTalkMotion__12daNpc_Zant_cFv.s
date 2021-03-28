lbl_80B6CAF0:
/* 80B6CAF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6CAF4  7C 08 02 A6 */	mflr r0
/* 80B6CAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6CAFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6CB00  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6CB04  7C 7E 1B 78 */	mr r30, r3
/* 80B6CB08  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80B6CB0C  2C 00 00 00 */	cmpwi r0, 0
/* 80B6CB10  41 82 00 28 */	beq lbl_80B6CB38
/* 80B6CB14  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80B6CB18  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B6CB1C  4B 5D 8D 7C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6CB20  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80B6CB24  38 00 00 00 */	li r0, 0
/* 80B6CB28  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B6CB2C  3C 60 80 B7 */	lis r3, lit_4447@ha
/* 80B6CB30  C0 03 EA 58 */	lfs f0, lit_4447@l(r3)
/* 80B6CB34  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B6CB38:
/* 80B6CB38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6CB3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6CB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6CB44  7C 08 03 A6 */	mtlr r0
/* 80B6CB48  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6CB4C  4E 80 00 20 */	blr 
