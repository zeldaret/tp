lbl_805A639C:
/* 805A639C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A63A0  7C 08 02 A6 */	mflr r0
/* 805A63A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A63A8  38 80 FF FF */	li r4, -1
/* 805A63AC  4B FF FF 8D */	bl __dt__12daTagMstop_cFv
/* 805A63B0  38 60 00 01 */	li r3, 1
/* 805A63B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A63B8  7C 08 03 A6 */	mtlr r0
/* 805A63BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A63C0  4E 80 00 20 */	blr 
