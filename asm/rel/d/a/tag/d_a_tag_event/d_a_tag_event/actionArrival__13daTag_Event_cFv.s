lbl_8048B5C8:
/* 8048B5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B5CC  7C 08 02 A6 */	mflr r0
/* 8048B5D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B5D4  38 00 00 02 */	li r0, 2
/* 8048B5D8  98 03 05 72 */	stb r0, 0x572(r3)
/* 8048B5DC  4B FF FF 39 */	bl actionHunt__13daTag_Event_cFv
/* 8048B5E0  38 60 00 01 */	li r3, 1
/* 8048B5E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B5E8  7C 08 03 A6 */	mtlr r0
/* 8048B5EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B5F0  4E 80 00 20 */	blr 
