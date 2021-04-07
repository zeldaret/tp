lbl_8099BE48:
/* 8099BE48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099BE4C  7C 08 02 A6 */	mflr r0
/* 8099BE50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099BE54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099BE58  93 C1 00 08 */	stw r30, 8(r1)
/* 8099BE5C  7C 7E 1B 78 */	mr r30, r3
/* 8099BE60  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 8099BE64  2C 00 00 01 */	cmpwi r0, 1
/* 8099BE68  41 82 00 28 */	beq lbl_8099BE90
/* 8099BE6C  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 8099BE70  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8099BE74  4B 7A 9A 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8099BE78  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 8099BE7C  38 00 00 01 */	li r0, 1
/* 8099BE80  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8099BE84  3C 60 80 9A */	lis r3, lit_4829@ha /* 0x8099D308@ha */
/* 8099BE88  C0 03 D3 08 */	lfs f0, lit_4829@l(r3)  /* 0x8099D308@l */
/* 8099BE8C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8099BE90:
/* 8099BE90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099BE94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099BE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099BE9C  7C 08 03 A6 */	mtlr r0
/* 8099BEA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8099BEA4  4E 80 00 20 */	blr 
