lbl_80C154D4:
/* 80C154D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C154D8  7C 08 02 A6 */	mflr r0
/* 80C154DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C154E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C154E4  3C 60 80 C1 */	lis r3, __global_destructor_chain@ha
/* 80C154E8  3B E3 65 E0 */	addi r31, r3, __global_destructor_chain@l
/* 80C154EC  48 00 00 20 */	b lbl_80C1550C
lbl_80C154F0:
/* 80C154F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80C154F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C154F8  80 65 00 08 */	lwz r3, 8(r5)
/* 80C154FC  38 80 FF FF */	li r4, -1
/* 80C15500  81 85 00 04 */	lwz r12, 4(r5)
/* 80C15504  7D 89 03 A6 */	mtctr r12
/* 80C15508  4E 80 04 21 */	bctrl 
lbl_80C1550C:
/* 80C1550C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C15510  28 05 00 00 */	cmplwi r5, 0
/* 80C15514  40 82 FF DC */	bne lbl_80C154F0
/* 80C15518  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1551C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C15520  7C 08 03 A6 */	mtlr r0
/* 80C15524  38 21 00 10 */	addi r1, r1, 0x10
/* 80C15528  4E 80 00 20 */	blr 
