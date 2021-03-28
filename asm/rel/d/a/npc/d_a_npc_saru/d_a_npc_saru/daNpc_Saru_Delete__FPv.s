lbl_80AC31D4:
/* 80AC31D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC31D8  7C 08 02 A6 */	mflr r0
/* 80AC31DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC31E0  4B FF D8 75 */	bl Delete__12daNpc_Saru_cFv
/* 80AC31E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC31E8  7C 08 03 A6 */	mtlr r0
/* 80AC31EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC31F0  4E 80 00 20 */	blr 
