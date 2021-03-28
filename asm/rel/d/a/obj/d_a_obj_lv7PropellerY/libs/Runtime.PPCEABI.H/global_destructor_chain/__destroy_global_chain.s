lbl_80C85414:
/* 80C85414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C85418  7C 08 02 A6 */	mflr r0
/* 80C8541C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C85420  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C85424  3C 60 80 C8 */	lis r3, __global_destructor_chain@ha
/* 80C85428  3B E3 62 B8 */	addi r31, r3, __global_destructor_chain@l
/* 80C8542C  48 00 00 20 */	b lbl_80C8544C
lbl_80C85430:
/* 80C85430  80 05 00 00 */	lwz r0, 0(r5)
/* 80C85434  90 1F 00 00 */	stw r0, 0(r31)
/* 80C85438  80 65 00 08 */	lwz r3, 8(r5)
/* 80C8543C  38 80 FF FF */	li r4, -1
/* 80C85440  81 85 00 04 */	lwz r12, 4(r5)
/* 80C85444  7D 89 03 A6 */	mtctr r12
/* 80C85448  4E 80 04 21 */	bctrl 
lbl_80C8544C:
/* 80C8544C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C85450  28 05 00 00 */	cmplwi r5, 0
/* 80C85454  40 82 FF DC */	bne lbl_80C85430
/* 80C85458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8545C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C85460  7C 08 03 A6 */	mtlr r0
/* 80C85464  38 21 00 10 */	addi r1, r1, 0x10
/* 80C85468  4E 80 00 20 */	blr 
