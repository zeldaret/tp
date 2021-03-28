lbl_80CB5734:
/* 80CB5734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB5738  7C 08 02 A6 */	mflr r0
/* 80CB573C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB5744  3C 60 80 CC */	lis r3, __global_destructor_chain@ha
/* 80CB5748  3B E3 85 C8 */	addi r31, r3, __global_destructor_chain@l
/* 80CB574C  48 00 00 20 */	b lbl_80CB576C
lbl_80CB5750:
/* 80CB5750  80 05 00 00 */	lwz r0, 0(r5)
/* 80CB5754  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB5758  80 65 00 08 */	lwz r3, 8(r5)
/* 80CB575C  38 80 FF FF */	li r4, -1
/* 80CB5760  81 85 00 04 */	lwz r12, 4(r5)
/* 80CB5764  7D 89 03 A6 */	mtctr r12
/* 80CB5768  4E 80 04 21 */	bctrl 
lbl_80CB576C:
/* 80CB576C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CB5770  28 05 00 00 */	cmplwi r5, 0
/* 80CB5774  40 82 FF DC */	bne lbl_80CB5750
/* 80CB5778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB577C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB5780  7C 08 03 A6 */	mtlr r0
/* 80CB5784  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5788  4E 80 00 20 */	blr 
