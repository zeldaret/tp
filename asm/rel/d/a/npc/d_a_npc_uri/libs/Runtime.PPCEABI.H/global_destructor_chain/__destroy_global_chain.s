lbl_80B26754:
/* 80B26754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B26758  7C 08 02 A6 */	mflr r0
/* 80B2675C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B26760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B26764  3C 60 80 B3 */	lis r3, __global_destructor_chain@ha
/* 80B26768  3B E3 DD 10 */	addi r31, r3, __global_destructor_chain@l
/* 80B2676C  48 00 00 20 */	b lbl_80B2678C
lbl_80B26770:
/* 80B26770  80 05 00 00 */	lwz r0, 0(r5)
/* 80B26774  90 1F 00 00 */	stw r0, 0(r31)
/* 80B26778  80 65 00 08 */	lwz r3, 8(r5)
/* 80B2677C  38 80 FF FF */	li r4, -1
/* 80B26780  81 85 00 04 */	lwz r12, 4(r5)
/* 80B26784  7D 89 03 A6 */	mtctr r12
/* 80B26788  4E 80 04 21 */	bctrl 
lbl_80B2678C:
/* 80B2678C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B26790  28 05 00 00 */	cmplwi r5, 0
/* 80B26794  40 82 FF DC */	bne lbl_80B26770
/* 80B26798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2679C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B267A0  7C 08 03 A6 */	mtlr r0
/* 80B267A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B267A8  4E 80 00 20 */	blr 
