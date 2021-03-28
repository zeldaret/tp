lbl_8033F310:
/* 8033F310  7C 08 02 A6 */	mflr r0
/* 8033F314  90 01 00 04 */	stw r0, 4(r1)
/* 8033F318  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033F31C  48 00 19 59 */	bl OSInitThreadQueue
/* 8033F320  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033F324  38 21 00 08 */	addi r1, r1, 8
/* 8033F328  7C 08 03 A6 */	mtlr r0
/* 8033F32C  4E 80 00 20 */	blr 
