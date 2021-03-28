lbl_80C73EB4:
/* 80C73EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73EB8  7C 08 02 A6 */	mflr r0
/* 80C73EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C73EC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C73EC4  3C 60 80 C7 */	lis r3, __global_destructor_chain@ha
/* 80C73EC8  3B E3 57 40 */	addi r31, r3, __global_destructor_chain@l
/* 80C73ECC  48 00 00 20 */	b lbl_80C73EEC
lbl_80C73ED0:
/* 80C73ED0  80 05 00 00 */	lwz r0, 0(r5)
/* 80C73ED4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C73ED8  80 65 00 08 */	lwz r3, 8(r5)
/* 80C73EDC  38 80 FF FF */	li r4, -1
/* 80C73EE0  81 85 00 04 */	lwz r12, 4(r5)
/* 80C73EE4  7D 89 03 A6 */	mtctr r12
/* 80C73EE8  4E 80 04 21 */	bctrl 
lbl_80C73EEC:
/* 80C73EEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C73EF0  28 05 00 00 */	cmplwi r5, 0
/* 80C73EF4  40 82 FF DC */	bne lbl_80C73ED0
/* 80C73EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C73EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73F00  7C 08 03 A6 */	mtlr r0
/* 80C73F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73F08  4E 80 00 20 */	blr 
