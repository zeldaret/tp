lbl_80AC3214:
/* 80AC3214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC3218  7C 08 02 A6 */	mflr r0
/* 80AC321C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3220  4B FF D8 89 */	bl Draw__12daNpc_Saru_cFv
/* 80AC3224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3228  7C 08 03 A6 */	mtlr r0
/* 80AC322C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3230  4E 80 00 20 */	blr 
