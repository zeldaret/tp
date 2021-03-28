lbl_80C33554:
/* 80C33554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C33558  7C 08 02 A6 */	mflr r0
/* 80C3355C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C33560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C33564  7C 7F 1B 78 */	mr r31, r3
/* 80C33568  38 7F 0B 14 */	addi r3, r31, 0xb14
/* 80C3356C  38 80 00 00 */	li r4, 0
/* 80C33570  38 1F 0B A3 */	addi r0, r31, 0xba3
/* 80C33574  7C A3 00 50 */	subf r5, r3, r0
/* 80C33578  4B 3C FE E0 */	b memset
/* 80C3357C  3C 60 80 C3 */	lis r3, lit_4531@ha
/* 80C33580  C0 03 3D 20 */	lfs f0, lit_4531@l(r3)
/* 80C33584  D0 1F 0B 0C */	stfs f0, 0xb0c(r31)
/* 80C33588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3358C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C33590  7C 08 03 A6 */	mtlr r0
/* 80C33594  38 21 00 10 */	addi r1, r1, 0x10
/* 80C33598  4E 80 00 20 */	blr 
