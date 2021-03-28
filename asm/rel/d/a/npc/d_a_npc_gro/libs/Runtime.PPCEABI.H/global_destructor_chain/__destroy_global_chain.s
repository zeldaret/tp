lbl_809DA514:
/* 809DA514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DA518  7C 08 02 A6 */	mflr r0
/* 809DA51C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DA520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DA524  3C 60 80 9E */	lis r3, __global_destructor_chain@ha
/* 809DA528  3B E3 F6 F8 */	addi r31, r3, __global_destructor_chain@l
/* 809DA52C  48 00 00 20 */	b lbl_809DA54C
lbl_809DA530:
/* 809DA530  80 05 00 00 */	lwz r0, 0(r5)
/* 809DA534  90 1F 00 00 */	stw r0, 0(r31)
/* 809DA538  80 65 00 08 */	lwz r3, 8(r5)
/* 809DA53C  38 80 FF FF */	li r4, -1
/* 809DA540  81 85 00 04 */	lwz r12, 4(r5)
/* 809DA544  7D 89 03 A6 */	mtctr r12
/* 809DA548  4E 80 04 21 */	bctrl 
lbl_809DA54C:
/* 809DA54C  80 BF 00 00 */	lwz r5, 0(r31)
/* 809DA550  28 05 00 00 */	cmplwi r5, 0
/* 809DA554  40 82 FF DC */	bne lbl_809DA530
/* 809DA558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DA55C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DA560  7C 08 03 A6 */	mtlr r0
/* 809DA564  38 21 00 10 */	addi r1, r1, 0x10
/* 809DA568  4E 80 00 20 */	blr 
