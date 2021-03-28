lbl_807E7694:
/* 807E7694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E7698  7C 08 02 A6 */	mflr r0
/* 807E769C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E76A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E76A4  3C 60 80 7F */	lis r3, __global_destructor_chain@ha
/* 807E76A8  3B E3 FB 78 */	addi r31, r3, __global_destructor_chain@l
/* 807E76AC  48 00 00 20 */	b lbl_807E76CC
lbl_807E76B0:
/* 807E76B0  80 05 00 00 */	lwz r0, 0(r5)
/* 807E76B4  90 1F 00 00 */	stw r0, 0(r31)
/* 807E76B8  80 65 00 08 */	lwz r3, 8(r5)
/* 807E76BC  38 80 FF FF */	li r4, -1
/* 807E76C0  81 85 00 04 */	lwz r12, 4(r5)
/* 807E76C4  7D 89 03 A6 */	mtctr r12
/* 807E76C8  4E 80 04 21 */	bctrl 
lbl_807E76CC:
/* 807E76CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 807E76D0  28 05 00 00 */	cmplwi r5, 0
/* 807E76D4  40 82 FF DC */	bne lbl_807E76B0
/* 807E76D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E76DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E76E0  7C 08 03 A6 */	mtlr r0
/* 807E76E4  38 21 00 10 */	addi r1, r1, 0x10
/* 807E76E8  4E 80 00 20 */	blr 
