lbl_80C1CA94:
/* 80C1CA94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1CA98  7C 08 02 A6 */	mflr r0
/* 80C1CA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1CAA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1CAA4  3C 60 80 C2 */	lis r3, __global_destructor_chain@ha
/* 80C1CAA8  3B E3 DC 40 */	addi r31, r3, __global_destructor_chain@l
/* 80C1CAAC  48 00 00 20 */	b lbl_80C1CACC
lbl_80C1CAB0:
/* 80C1CAB0  80 05 00 00 */	lwz r0, 0(r5)
/* 80C1CAB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C1CAB8  80 65 00 08 */	lwz r3, 8(r5)
/* 80C1CABC  38 80 FF FF */	li r4, -1
/* 80C1CAC0  81 85 00 04 */	lwz r12, 4(r5)
/* 80C1CAC4  7D 89 03 A6 */	mtctr r12
/* 80C1CAC8  4E 80 04 21 */	bctrl 
lbl_80C1CACC:
/* 80C1CACC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C1CAD0  28 05 00 00 */	cmplwi r5, 0
/* 80C1CAD4  40 82 FF DC */	bne lbl_80C1CAB0
/* 80C1CAD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1CADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1CAE0  7C 08 03 A6 */	mtlr r0
/* 80C1CAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1CAE8  4E 80 00 20 */	blr 
