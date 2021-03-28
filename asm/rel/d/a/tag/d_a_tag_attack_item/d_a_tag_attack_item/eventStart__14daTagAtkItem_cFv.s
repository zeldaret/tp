lbl_805A2D10:
/* 805A2D10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2D14  7C 08 02 A6 */	mflr r0
/* 805A2D18  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2D1C  48 00 02 39 */	bl createItem__14daTagAtkItem_cFv
/* 805A2D20  38 60 00 01 */	li r3, 1
/* 805A2D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2D28  7C 08 03 A6 */	mtlr r0
/* 805A2D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2D30  4E 80 00 20 */	blr 
