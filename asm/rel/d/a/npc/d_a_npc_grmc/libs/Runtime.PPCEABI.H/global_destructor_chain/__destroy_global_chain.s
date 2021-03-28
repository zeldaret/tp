lbl_809D73B4:
/* 809D73B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D73B8  7C 08 02 A6 */	mflr r0
/* 809D73BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D73C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D73C4  3C 60 80 9E */	lis r3, __global_destructor_chain@ha
/* 809D73C8  3B E3 A4 58 */	addi r31, r3, __global_destructor_chain@l
/* 809D73CC  48 00 00 20 */	b lbl_809D73EC
lbl_809D73D0:
/* 809D73D0  80 05 00 00 */	lwz r0, 0(r5)
/* 809D73D4  90 1F 00 00 */	stw r0, 0(r31)
/* 809D73D8  80 65 00 08 */	lwz r3, 8(r5)
/* 809D73DC  38 80 FF FF */	li r4, -1
/* 809D73E0  81 85 00 04 */	lwz r12, 4(r5)
/* 809D73E4  7D 89 03 A6 */	mtctr r12
/* 809D73E8  4E 80 04 21 */	bctrl 
lbl_809D73EC:
/* 809D73EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 809D73F0  28 05 00 00 */	cmplwi r5, 0
/* 809D73F4  40 82 FF DC */	bne lbl_809D73D0
/* 809D73F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D73FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D7400  7C 08 03 A6 */	mtlr r0
/* 809D7404  38 21 00 10 */	addi r1, r1, 0x10
/* 809D7408  4E 80 00 20 */	blr 
