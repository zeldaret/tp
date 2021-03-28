lbl_80528A38:
/* 80528A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80528A3C  7C 08 02 A6 */	mflr r0
/* 80528A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80528A44  4B D3 A6 4C */	b ModuleUnresolved
/* 80528A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80528A4C  7C 08 03 A6 */	mtlr r0
/* 80528A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80528A54  4E 80 00 20 */	blr 
