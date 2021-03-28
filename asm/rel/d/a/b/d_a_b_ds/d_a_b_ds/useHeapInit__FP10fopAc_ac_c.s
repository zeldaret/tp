lbl_805DB954:
/* 805DB954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DB958  7C 08 02 A6 */	mflr r0
/* 805DB95C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DB960  4B FF F9 05 */	bl CreateHeap__8daB_DS_cFv
/* 805DB964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DB968  7C 08 03 A6 */	mtlr r0
/* 805DB96C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DB970  4E 80 00 20 */	blr 
