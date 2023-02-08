lbl_805A3040:
/* 805A3040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3044  7C 08 02 A6 */	mflr r0
/* 805A3048  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A304C  4B FF FB FD */	bl execute__14daTagAtkItem_cFv
/* 805A3050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3054  7C 08 03 A6 */	mtlr r0
/* 805A3058  38 21 00 10 */	addi r1, r1, 0x10
/* 805A305C  4E 80 00 20 */	blr 
