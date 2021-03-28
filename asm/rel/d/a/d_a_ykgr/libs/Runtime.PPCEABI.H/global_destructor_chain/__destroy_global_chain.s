lbl_805A8434:
/* 805A8434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8438  7C 08 02 A6 */	mflr r0
/* 805A843C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A8444  3C 60 80 5B */	lis r3, __global_destructor_chain@ha
/* 805A8448  3B E3 90 B0 */	addi r31, r3, __global_destructor_chain@l
/* 805A844C  48 00 00 20 */	b lbl_805A846C
lbl_805A8450:
/* 805A8450  80 05 00 00 */	lwz r0, 0(r5)
/* 805A8454  90 1F 00 00 */	stw r0, 0(r31)
/* 805A8458  80 65 00 08 */	lwz r3, 8(r5)
/* 805A845C  38 80 FF FF */	li r4, -1
/* 805A8460  81 85 00 04 */	lwz r12, 4(r5)
/* 805A8464  7D 89 03 A6 */	mtctr r12
/* 805A8468  4E 80 04 21 */	bctrl 
lbl_805A846C:
/* 805A846C  80 BF 00 00 */	lwz r5, 0(r31)
/* 805A8470  28 05 00 00 */	cmplwi r5, 0
/* 805A8474  40 82 FF DC */	bne lbl_805A8450
/* 805A8478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A847C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8480  7C 08 03 A6 */	mtlr r0
/* 805A8484  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8488  4E 80 00 20 */	blr 
