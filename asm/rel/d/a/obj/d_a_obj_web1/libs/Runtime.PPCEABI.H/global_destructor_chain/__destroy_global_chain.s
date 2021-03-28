lbl_80D35354:
/* 80D35354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D35358  7C 08 02 A6 */	mflr r0
/* 80D3535C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D35360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D35364  3C 60 80 D3 */	lis r3, __global_destructor_chain@ha
/* 80D35368  3B E3 61 F0 */	addi r31, r3, __global_destructor_chain@l
/* 80D3536C  48 00 00 20 */	b lbl_80D3538C
lbl_80D35370:
/* 80D35370  80 05 00 00 */	lwz r0, 0(r5)
/* 80D35374  90 1F 00 00 */	stw r0, 0(r31)
/* 80D35378  80 65 00 08 */	lwz r3, 8(r5)
/* 80D3537C  38 80 FF FF */	li r4, -1
/* 80D35380  81 85 00 04 */	lwz r12, 4(r5)
/* 80D35384  7D 89 03 A6 */	mtctr r12
/* 80D35388  4E 80 04 21 */	bctrl 
lbl_80D3538C:
/* 80D3538C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D35390  28 05 00 00 */	cmplwi r5, 0
/* 80D35394  40 82 FF DC */	bne lbl_80D35370
/* 80D35398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3539C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D353A0  7C 08 03 A6 */	mtlr r0
/* 80D353A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D353A8  4E 80 00 20 */	blr 
