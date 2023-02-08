lbl_80CCE044:
/* 80CCE044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCE048  7C 08 02 A6 */	mflr r0
/* 80CCE04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCE050  4B FF FB BD */	bl create__14daObj_Sekizo_cFv
/* 80CCE054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCE058  7C 08 03 A6 */	mtlr r0
/* 80CCE05C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCE060  4E 80 00 20 */	blr 
