lbl_80C886D4:
/* 80C886D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C886D8  7C 08 02 A6 */	mflr r0
/* 80C886DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C886E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C886E4  3C 60 80 C9 */	lis r3, __global_destructor_chain@ha
/* 80C886E8  3B E3 A1 E0 */	addi r31, r3, __global_destructor_chain@l
/* 80C886EC  48 00 00 20 */	b lbl_80C8870C
lbl_80C886F0:
/* 80C886F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80C886F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C886F8  80 65 00 08 */	lwz r3, 8(r5)
/* 80C886FC  38 80 FF FF */	li r4, -1
/* 80C88700  81 85 00 04 */	lwz r12, 4(r5)
/* 80C88704  7D 89 03 A6 */	mtctr r12
/* 80C88708  4E 80 04 21 */	bctrl 
lbl_80C8870C:
/* 80C8870C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C88710  28 05 00 00 */	cmplwi r5, 0
/* 80C88714  40 82 FF DC */	bne lbl_80C886F0
/* 80C88718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8871C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C88720  7C 08 03 A6 */	mtlr r0
/* 80C88724  38 21 00 10 */	addi r1, r1, 0x10
/* 80C88728  4E 80 00 20 */	blr 
