lbl_807A73B4:
/* 807A73B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A73B8  7C 08 02 A6 */	mflr r0
/* 807A73BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A73C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A73C4  3C 60 80 7B */	lis r3, __global_destructor_chain@ha
/* 807A73C8  3B E3 01 B0 */	addi r31, r3, __global_destructor_chain@l
/* 807A73CC  48 00 00 20 */	b lbl_807A73EC
lbl_807A73D0:
/* 807A73D0  80 05 00 00 */	lwz r0, 0(r5)
/* 807A73D4  90 1F 00 00 */	stw r0, 0(r31)
/* 807A73D8  80 65 00 08 */	lwz r3, 8(r5)
/* 807A73DC  38 80 FF FF */	li r4, -1
/* 807A73E0  81 85 00 04 */	lwz r12, 4(r5)
/* 807A73E4  7D 89 03 A6 */	mtctr r12
/* 807A73E8  4E 80 04 21 */	bctrl 
lbl_807A73EC:
/* 807A73EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 807A73F0  28 05 00 00 */	cmplwi r5, 0
/* 807A73F4  40 82 FF DC */	bne lbl_807A73D0
/* 807A73F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A73FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A7400  7C 08 03 A6 */	mtlr r0
/* 807A7404  38 21 00 10 */	addi r1, r1, 0x10
/* 807A7408  4E 80 00 20 */	blr 
