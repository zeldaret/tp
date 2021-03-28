lbl_806A7694:
/* 806A7694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A7698  7C 08 02 A6 */	mflr r0
/* 806A769C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A76A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A76A4  3C 60 80 6B */	lis r3, __global_destructor_chain@ha
/* 806A76A8  3B E3 A0 C8 */	addi r31, r3, __global_destructor_chain@l
/* 806A76AC  48 00 00 20 */	b lbl_806A76CC
lbl_806A76B0:
/* 806A76B0  80 05 00 00 */	lwz r0, 0(r5)
/* 806A76B4  90 1F 00 00 */	stw r0, 0(r31)
/* 806A76B8  80 65 00 08 */	lwz r3, 8(r5)
/* 806A76BC  38 80 FF FF */	li r4, -1
/* 806A76C0  81 85 00 04 */	lwz r12, 4(r5)
/* 806A76C4  7D 89 03 A6 */	mtctr r12
/* 806A76C8  4E 80 04 21 */	bctrl 
lbl_806A76CC:
/* 806A76CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 806A76D0  28 05 00 00 */	cmplwi r5, 0
/* 806A76D4  40 82 FF DC */	bne lbl_806A76B0
/* 806A76D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A76DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A76E0  7C 08 03 A6 */	mtlr r0
/* 806A76E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806A76E8  4E 80 00 20 */	blr 
