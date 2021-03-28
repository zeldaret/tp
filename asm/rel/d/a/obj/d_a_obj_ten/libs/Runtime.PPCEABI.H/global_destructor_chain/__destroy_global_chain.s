lbl_80D08774:
/* 80D08774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D08778  7C 08 02 A6 */	mflr r0
/* 80D0877C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D08780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D08784  3C 60 80 D1 */	lis r3, __global_destructor_chain@ha
/* 80D08788  3B E3 BA B0 */	addi r31, r3, __global_destructor_chain@l
/* 80D0878C  48 00 00 20 */	b lbl_80D087AC
lbl_80D08790:
/* 80D08790  80 05 00 00 */	lwz r0, 0(r5)
/* 80D08794  90 1F 00 00 */	stw r0, 0(r31)
/* 80D08798  80 65 00 08 */	lwz r3, 8(r5)
/* 80D0879C  38 80 FF FF */	li r4, -1
/* 80D087A0  81 85 00 04 */	lwz r12, 4(r5)
/* 80D087A4  7D 89 03 A6 */	mtctr r12
/* 80D087A8  4E 80 04 21 */	bctrl 
lbl_80D087AC:
/* 80D087AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D087B0  28 05 00 00 */	cmplwi r5, 0
/* 80D087B4  40 82 FF DC */	bne lbl_80D08790
/* 80D087B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D087BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D087C0  7C 08 03 A6 */	mtlr r0
/* 80D087C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D087C8  4E 80 00 20 */	blr 
