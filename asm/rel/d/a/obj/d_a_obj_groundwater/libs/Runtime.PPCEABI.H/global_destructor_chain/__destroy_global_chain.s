lbl_80C13454:
/* 80C13454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C13458  7C 08 02 A6 */	mflr r0
/* 80C1345C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C13460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C13464  3C 60 80 C1 */	lis r3, __global_destructor_chain@ha
/* 80C13468  3B E3 4B 30 */	addi r31, r3, __global_destructor_chain@l
/* 80C1346C  48 00 00 20 */	b lbl_80C1348C
lbl_80C13470:
/* 80C13470  80 05 00 00 */	lwz r0, 0(r5)
/* 80C13474  90 1F 00 00 */	stw r0, 0(r31)
/* 80C13478  80 65 00 08 */	lwz r3, 8(r5)
/* 80C1347C  38 80 FF FF */	li r4, -1
/* 80C13480  81 85 00 04 */	lwz r12, 4(r5)
/* 80C13484  7D 89 03 A6 */	mtctr r12
/* 80C13488  4E 80 04 21 */	bctrl 
lbl_80C1348C:
/* 80C1348C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C13490  28 05 00 00 */	cmplwi r5, 0
/* 80C13494  40 82 FF DC */	bne lbl_80C13470
/* 80C13498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1349C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C134A0  7C 08 03 A6 */	mtlr r0
/* 80C134A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C134A8  4E 80 00 20 */	blr 
