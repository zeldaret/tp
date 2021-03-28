lbl_80BA1474:
/* 80BA1474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA1478  7C 08 02 A6 */	mflr r0
/* 80BA147C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA1484  3C 60 80 BA */	lis r3, __global_destructor_chain@ha
/* 80BA1488  3B E3 25 58 */	addi r31, r3, __global_destructor_chain@l
/* 80BA148C  48 00 00 20 */	b lbl_80BA14AC
lbl_80BA1490:
/* 80BA1490  80 05 00 00 */	lwz r0, 0(r5)
/* 80BA1494  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA1498  80 65 00 08 */	lwz r3, 8(r5)
/* 80BA149C  38 80 FF FF */	li r4, -1
/* 80BA14A0  81 85 00 04 */	lwz r12, 4(r5)
/* 80BA14A4  7D 89 03 A6 */	mtctr r12
/* 80BA14A8  4E 80 04 21 */	bctrl 
lbl_80BA14AC:
/* 80BA14AC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80BA14B0  28 05 00 00 */	cmplwi r5, 0
/* 80BA14B4  40 82 FF DC */	bne lbl_80BA1490
/* 80BA14B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA14BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA14C0  7C 08 03 A6 */	mtlr r0
/* 80BA14C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA14C8  4E 80 00 20 */	blr 
