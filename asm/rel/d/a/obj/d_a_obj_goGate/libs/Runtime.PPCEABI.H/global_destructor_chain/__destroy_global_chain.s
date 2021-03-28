lbl_80BFD654:
/* 80BFD654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD658  7C 08 02 A6 */	mflr r0
/* 80BFD65C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFD664  3C 60 80 C0 */	lis r3, __global_destructor_chain@ha
/* 80BFD668  3B E3 E1 08 */	addi r31, r3, __global_destructor_chain@l
/* 80BFD66C  48 00 00 20 */	b lbl_80BFD68C
lbl_80BFD670:
/* 80BFD670  80 05 00 00 */	lwz r0, 0(r5)
/* 80BFD674  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFD678  80 65 00 08 */	lwz r3, 8(r5)
/* 80BFD67C  38 80 FF FF */	li r4, -1
/* 80BFD680  81 85 00 04 */	lwz r12, 4(r5)
/* 80BFD684  7D 89 03 A6 */	mtctr r12
/* 80BFD688  4E 80 04 21 */	bctrl 
lbl_80BFD68C:
/* 80BFD68C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BFD690  28 05 00 00 */	cmplwi r5, 0
/* 80BFD694  40 82 FF DC */	bne lbl_80BFD670
/* 80BFD698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFD69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD6A0  7C 08 03 A6 */	mtlr r0
/* 80BFD6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD6A8  4E 80 00 20 */	blr 
