lbl_805A271C:
/* 805A271C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2720  7C 08 02 A6 */	mflr r0
/* 805A2724  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2728  38 80 FF FF */	li r4, -1
/* 805A272C  4B FF FF 9D */	bl __dt__12daTagAJnot_cFv
/* 805A2730  38 60 00 01 */	li r3, 1
/* 805A2734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2738  7C 08 03 A6 */	mtlr r0
/* 805A273C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2740  4E 80 00 20 */	blr 
