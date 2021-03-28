lbl_80D5ABA8:
/* 80D5ABA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5ABAC  7C 08 02 A6 */	mflr r0
/* 80D5ABB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5ABB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5ABB8  7C 7F 1B 78 */	mr r31, r3
/* 80D5ABBC  88 03 05 7D */	lbz r0, 0x57d(r3)
/* 80D5ABC0  28 00 00 00 */	cmplwi r0, 0
/* 80D5ABC4  41 82 00 14 */	beq lbl_80D5ABD8
/* 80D5ABC8  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D5ABCC  4B 44 CC 9C */	b dKy_dalkmist_inf_cut__FP18DALKMIST_INFLUENCE
/* 80D5ABD0  38 00 00 00 */	li r0, 0
/* 80D5ABD4  98 1F 05 7D */	stb r0, 0x57d(r31)
lbl_80D5ABD8:
/* 80D5ABD8  38 60 00 01 */	li r3, 1
/* 80D5ABDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5ABE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5ABE4  7C 08 03 A6 */	mtlr r0
/* 80D5ABE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5ABEC  4E 80 00 20 */	blr 
