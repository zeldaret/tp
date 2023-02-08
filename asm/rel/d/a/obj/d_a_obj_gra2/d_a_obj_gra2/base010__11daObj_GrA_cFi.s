lbl_80C03F14:
/* 80C03F14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C03F18  7C 08 02 A6 */	mflr r0
/* 80C03F1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C03F20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C03F24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C03F28  7C 7E 1B 78 */	mr r30, r3
/* 80C03F2C  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C03F30  3B E5 FA 7C */	addi r31, r5, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C03F34  2C 04 00 00 */	cmpwi r4, 0
/* 80C03F38  41 82 00 10 */	beq lbl_80C03F48
/* 80C03F3C  38 80 00 03 */	li r4, 3
/* 80C03F40  C0 3E 0A 94 */	lfs f1, 0xa94(r30)
/* 80C03F44  4B FF D4 6D */	bl setBaseAnm__11daObj_GrA_cFif
lbl_80C03F48:
/* 80C03F48  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C03F4C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80C03F50  C0 1F 02 68 */	lfs f0, 0x268(r31)
/* 80C03F54  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C03F58  41 82 00 24 */	beq lbl_80C03F7C
/* 80C03F5C  C0 1F 03 84 */	lfs f0, 0x384(r31)
/* 80C03F60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C03F64  4C 41 13 82 */	cror 2, 1, 2
/* 80C03F68  40 82 00 3C */	bne lbl_80C03FA4
/* 80C03F6C  C0 1F 03 88 */	lfs f0, 0x388(r31)
/* 80C03F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C03F74  4C 40 13 82 */	cror 2, 0, 2
/* 80C03F78  40 82 00 2C */	bne lbl_80C03FA4
lbl_80C03F7C:
/* 80C03F7C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050087@ha */
/* 80C03F80  38 03 00 87 */	addi r0, r3, 0x0087 /* 0x00050087@l */
/* 80C03F84  90 01 00 08 */	stw r0, 8(r1)
/* 80C03F88  38 7E 07 58 */	addi r3, r30, 0x758
/* 80C03F8C  38 81 00 08 */	addi r4, r1, 8
/* 80C03F90  38 A0 FF FF */	li r5, -1
/* 80C03F94  81 9E 07 58 */	lwz r12, 0x758(r30)
/* 80C03F98  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80C03F9C  7D 89 03 A6 */	mtctr r12
/* 80C03FA0  4E 80 04 21 */	bctrl 
lbl_80C03FA4:
/* 80C03FA4  38 60 00 01 */	li r3, 1
/* 80C03FA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C03FAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C03FB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C03FB4  7C 08 03 A6 */	mtlr r0
/* 80C03FB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C03FBC  4E 80 00 20 */	blr 
