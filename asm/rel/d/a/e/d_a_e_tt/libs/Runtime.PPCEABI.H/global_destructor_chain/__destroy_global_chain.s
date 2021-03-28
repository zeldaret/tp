lbl_807BD754:
/* 807BD754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BD758  7C 08 02 A6 */	mflr r0
/* 807BD75C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BD760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BD764  3C 60 80 7C */	lis r3, __global_destructor_chain@ha
/* 807BD768  3B E3 23 98 */	addi r31, r3, __global_destructor_chain@l
/* 807BD76C  48 00 00 20 */	b lbl_807BD78C
lbl_807BD770:
/* 807BD770  80 05 00 00 */	lwz r0, 0(r5)
/* 807BD774  90 1F 00 00 */	stw r0, 0(r31)
/* 807BD778  80 65 00 08 */	lwz r3, 8(r5)
/* 807BD77C  38 80 FF FF */	li r4, -1
/* 807BD780  81 85 00 04 */	lwz r12, 4(r5)
/* 807BD784  7D 89 03 A6 */	mtctr r12
/* 807BD788  4E 80 04 21 */	bctrl 
lbl_807BD78C:
/* 807BD78C  80 BF 00 00 */	lwz r5, 0(r31)
/* 807BD790  28 05 00 00 */	cmplwi r5, 0
/* 807BD794  40 82 FF DC */	bne lbl_807BD770
/* 807BD798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BD79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BD7A0  7C 08 03 A6 */	mtlr r0
/* 807BD7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 807BD7A8  4E 80 00 20 */	blr 
