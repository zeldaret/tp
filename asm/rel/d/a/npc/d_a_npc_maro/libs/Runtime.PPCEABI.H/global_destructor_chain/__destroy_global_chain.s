lbl_8055B534:
/* 8055B534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B538  7C 08 02 A6 */	mflr r0
/* 8055B53C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055B544  3C 60 80 56 */	lis r3, __global_destructor_chain@ha
/* 8055B548  3B E3 5D 80 */	addi r31, r3, __global_destructor_chain@l
/* 8055B54C  48 00 00 20 */	b lbl_8055B56C
lbl_8055B550:
/* 8055B550  80 05 00 00 */	lwz r0, 0(r5)
/* 8055B554  90 1F 00 00 */	stw r0, 0(r31)
/* 8055B558  80 65 00 08 */	lwz r3, 8(r5)
/* 8055B55C  38 80 FF FF */	li r4, -1
/* 8055B560  81 85 00 04 */	lwz r12, 4(r5)
/* 8055B564  7D 89 03 A6 */	mtctr r12
/* 8055B568  4E 80 04 21 */	bctrl 
lbl_8055B56C:
/* 8055B56C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8055B570  28 05 00 00 */	cmplwi r5, 0
/* 8055B574  40 82 FF DC */	bne lbl_8055B550
/* 8055B578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055B57C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B580  7C 08 03 A6 */	mtlr r0
/* 8055B584  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B588  4E 80 00 20 */	blr 
