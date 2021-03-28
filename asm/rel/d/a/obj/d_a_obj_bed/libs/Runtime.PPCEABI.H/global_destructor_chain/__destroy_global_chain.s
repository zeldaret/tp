lbl_80BAD614:
/* 80BAD614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAD618  7C 08 02 A6 */	mflr r0
/* 80BAD61C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAD620  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAD624  3C 60 80 BB */	lis r3, __global_destructor_chain@ha
/* 80BAD628  3B E3 E2 50 */	addi r31, r3, __global_destructor_chain@l
/* 80BAD62C  48 00 00 20 */	b lbl_80BAD64C
lbl_80BAD630:
/* 80BAD630  80 05 00 00 */	lwz r0, 0(r5)
/* 80BAD634  90 1F 00 00 */	stw r0, 0(r31)
/* 80BAD638  80 65 00 08 */	lwz r3, 8(r5)
/* 80BAD63C  38 80 FF FF */	li r4, -1
/* 80BAD640  81 85 00 04 */	lwz r12, 4(r5)
/* 80BAD644  7D 89 03 A6 */	mtctr r12
/* 80BAD648  4E 80 04 21 */	bctrl 
lbl_80BAD64C:
/* 80BAD64C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BAD650  28 05 00 00 */	cmplwi r5, 0
/* 80BAD654  40 82 FF DC */	bne lbl_80BAD630
/* 80BAD658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAD65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD660  7C 08 03 A6 */	mtlr r0
/* 80BAD664  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD668  4E 80 00 20 */	blr 
