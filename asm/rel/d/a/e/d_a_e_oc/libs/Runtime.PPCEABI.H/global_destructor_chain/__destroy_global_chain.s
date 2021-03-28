lbl_8072C574:
/* 8072C574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072C578  7C 08 02 A6 */	mflr r0
/* 8072C57C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072C580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072C584  3C 60 80 73 */	lis r3, __global_destructor_chain@ha
/* 8072C588  3B E3 5F F8 */	addi r31, r3, __global_destructor_chain@l
/* 8072C58C  48 00 00 20 */	b lbl_8072C5AC
lbl_8072C590:
/* 8072C590  80 05 00 00 */	lwz r0, 0(r5)
/* 8072C594  90 1F 00 00 */	stw r0, 0(r31)
/* 8072C598  80 65 00 08 */	lwz r3, 8(r5)
/* 8072C59C  38 80 FF FF */	li r4, -1
/* 8072C5A0  81 85 00 04 */	lwz r12, 4(r5)
/* 8072C5A4  7D 89 03 A6 */	mtctr r12
/* 8072C5A8  4E 80 04 21 */	bctrl 
lbl_8072C5AC:
/* 8072C5AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8072C5B0  28 05 00 00 */	cmplwi r5, 0
/* 8072C5B4  40 82 FF DC */	bne lbl_8072C590
/* 8072C5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072C5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072C5C0  7C 08 03 A6 */	mtlr r0
/* 8072C5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8072C5C8  4E 80 00 20 */	blr 
