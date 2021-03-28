lbl_80B6FC9C:
/* 80B6FC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6FCA0  7C 08 02 A6 */	mflr r0
/* 80B6FCA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6FCA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6FCAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6FCB0  7C 7E 1B 78 */	mr r30, r3
/* 80B6FCB4  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80B6FCB8  2C 00 00 01 */	cmpwi r0, 1
/* 80B6FCBC  41 82 00 28 */	beq lbl_80B6FCE4
/* 80B6FCC0  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80B6FCC4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B6FCC8  4B 5D 5B D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6FCCC  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80B6FCD0  38 00 00 01 */	li r0, 1
/* 80B6FCD4  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B6FCD8  3C 60 80 B7 */	lis r3, lit_4557@ha
/* 80B6FCDC  C0 03 1B 90 */	lfs f0, lit_4557@l(r3)
/* 80B6FCE0  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B6FCE4:
/* 80B6FCE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6FCE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6FCEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6FCF0  7C 08 03 A6 */	mtlr r0
/* 80B6FCF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6FCF8  4E 80 00 20 */	blr 
