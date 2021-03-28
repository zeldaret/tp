lbl_80C57A74:
/* 80C57A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C57A78  7C 08 02 A6 */	mflr r0
/* 80C57A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C57A80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C57A84  3C 60 80 C6 */	lis r3, __global_destructor_chain@ha
/* 80C57A88  3B E3 86 B8 */	addi r31, r3, __global_destructor_chain@l
/* 80C57A8C  48 00 00 20 */	b lbl_80C57AAC
lbl_80C57A90:
/* 80C57A90  80 05 00 00 */	lwz r0, 0(r5)
/* 80C57A94  90 1F 00 00 */	stw r0, 0(r31)
/* 80C57A98  80 65 00 08 */	lwz r3, 8(r5)
/* 80C57A9C  38 80 FF FF */	li r4, -1
/* 80C57AA0  81 85 00 04 */	lwz r12, 4(r5)
/* 80C57AA4  7D 89 03 A6 */	mtctr r12
/* 80C57AA8  4E 80 04 21 */	bctrl 
lbl_80C57AAC:
/* 80C57AAC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C57AB0  28 05 00 00 */	cmplwi r5, 0
/* 80C57AB4  40 82 FF DC */	bne lbl_80C57A90
/* 80C57AB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C57ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C57AC0  7C 08 03 A6 */	mtlr r0
/* 80C57AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C57AC8  4E 80 00 20 */	blr 
