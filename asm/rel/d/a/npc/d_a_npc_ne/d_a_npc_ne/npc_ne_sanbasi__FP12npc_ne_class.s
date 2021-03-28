lbl_80A8B530:
/* 80A8B530  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A8B534  7C 08 02 A6 */	mflr r0
/* 80A8B538  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A8B53C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A8B540  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A8B544  7C 7E 1B 78 */	mr r30, r3
/* 80A8B548  3C 80 80 A9 */	lis r4, lit_3990@ha
/* 80A8B54C  3B E4 24 1C */	addi r31, r4, lit_3990@l
/* 80A8B550  A8 03 06 46 */	lha r0, 0x646(r3)
/* 80A8B554  2C 00 00 01 */	cmpwi r0, 1
/* 80A8B558  41 82 00 34 */	beq lbl_80A8B58C
/* 80A8B55C  40 80 00 38 */	bge lbl_80A8B594
/* 80A8B560  2C 00 00 00 */	cmpwi r0, 0
/* 80A8B564  40 80 00 08 */	bge lbl_80A8B56C
/* 80A8B568  48 00 00 2C */	b lbl_80A8B594
lbl_80A8B56C:
/* 80A8B56C  38 80 00 18 */	li r4, 0x18
/* 80A8B570  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8B574  38 A0 00 02 */	li r5, 2
/* 80A8B578  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8B57C  4B FF D7 99 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8B580  38 00 00 01 */	li r0, 1
/* 80A8B584  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8B588  48 00 00 0C */	b lbl_80A8B594
lbl_80A8B58C:
/* 80A8B58C  38 00 00 1E */	li r0, 0x1e
/* 80A8B590  B0 1E 06 7A */	sth r0, 0x67a(r30)
lbl_80A8B594:
/* 80A8B594  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8B598  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80A8B59C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8B5A0  41 80 00 10 */	blt lbl_80A8B5B0
/* 80A8B5A4  88 1E 07 00 */	lbz r0, 0x700(r30)
/* 80A8B5A8  7C 00 07 75 */	extsb. r0, r0
/* 80A8B5AC  40 82 00 58 */	bne lbl_80A8B604
lbl_80A8B5B0:
/* 80A8B5B0  38 00 00 02 */	li r0, 2
/* 80A8B5B4  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8B5B8  38 00 00 00 */	li r0, 0
/* 80A8B5BC  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8B5C0  B0 1E 06 7A */	sth r0, 0x67a(r30)
/* 80A8B5C4  88 1E 07 00 */	lbz r0, 0x700(r30)
/* 80A8B5C8  7C 00 07 75 */	extsb. r0, r0
/* 80A8B5CC  40 82 00 30 */	bne lbl_80A8B5FC
/* 80A8B5D0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050002@ha */
/* 80A8B5D4  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x00050002@l */
/* 80A8B5D8  90 01 00 08 */	stw r0, 8(r1)
/* 80A8B5DC  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80A8B5E0  38 81 00 08 */	addi r4, r1, 8
/* 80A8B5E4  38 A0 00 00 */	li r5, 0
/* 80A8B5E8  38 C0 FF FF */	li r6, -1
/* 80A8B5EC  81 9E 06 1C */	lwz r12, 0x61c(r30)
/* 80A8B5F0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8B5F4  7D 89 03 A6 */	mtctr r12
/* 80A8B5F8  4E 80 04 21 */	bctrl 
lbl_80A8B5FC:
/* 80A8B5FC  38 00 00 64 */	li r0, 0x64
/* 80A8B600  B0 1E 06 54 */	sth r0, 0x654(r30)
lbl_80A8B604:
/* 80A8B604  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A8B608  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A8B60C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A8B610  7C 08 03 A6 */	mtlr r0
/* 80A8B614  38 21 00 20 */	addi r1, r1, 0x20
/* 80A8B618  4E 80 00 20 */	blr 
