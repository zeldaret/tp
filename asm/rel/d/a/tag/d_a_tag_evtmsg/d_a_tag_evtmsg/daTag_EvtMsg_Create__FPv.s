lbl_8048D668:
/* 8048D668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D66C  7C 08 02 A6 */	mflr r0
/* 8048D670  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D674  4B FF F8 C5 */	bl create__14daTag_EvtMsg_cFv
/* 8048D678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D67C  7C 08 03 A6 */	mtlr r0
/* 8048D680  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D684  4E 80 00 20 */	blr 
