lbl_80AC31F4:
/* 80AC31F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC31F8  7C 08 02 A6 */	mflr r0
/* 80AC31FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3200  4B FF D8 89 */	bl Execute__12daNpc_Saru_cFv
/* 80AC3204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3208  7C 08 03 A6 */	mtlr r0
/* 80AC320C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3210  4E 80 00 20 */	blr 
