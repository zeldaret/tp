lbl_805DC834:
/* 805DC834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC838  7C 08 02 A6 */	mflr r0
/* 805DC83C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC840  4B FF F1 35 */	bl create__8daB_DS_cFv
/* 805DC844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC848  7C 08 03 A6 */	mtlr r0
/* 805DC84C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC850  4E 80 00 20 */	blr 
