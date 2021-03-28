lbl_80C53514:
/* 80C53514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C53518  7C 08 02 A6 */	mflr r0
/* 80C5351C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C53520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C53524  3C 60 80 C5 */	lis r3, __global_destructor_chain@ha
/* 80C53528  3B E3 40 E0 */	addi r31, r3, __global_destructor_chain@l
/* 80C5352C  48 00 00 20 */	b lbl_80C5354C
lbl_80C53530:
/* 80C53530  80 05 00 00 */	lwz r0, 0(r5)
/* 80C53534  90 1F 00 00 */	stw r0, 0(r31)
/* 80C53538  80 65 00 08 */	lwz r3, 8(r5)
/* 80C5353C  38 80 FF FF */	li r4, -1
/* 80C53540  81 85 00 04 */	lwz r12, 4(r5)
/* 80C53544  7D 89 03 A6 */	mtctr r12
/* 80C53548  4E 80 04 21 */	bctrl 
lbl_80C5354C:
/* 80C5354C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C53550  28 05 00 00 */	cmplwi r5, 0
/* 80C53554  40 82 FF DC */	bne lbl_80C53530
/* 80C53558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5355C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C53560  7C 08 03 A6 */	mtlr r0
/* 80C53564  38 21 00 10 */	addi r1, r1, 0x10
/* 80C53568  4E 80 00 20 */	blr 
