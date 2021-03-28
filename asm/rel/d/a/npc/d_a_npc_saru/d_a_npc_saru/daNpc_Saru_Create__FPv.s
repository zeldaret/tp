lbl_80AC31B4:
/* 80AC31B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC31B8  7C 08 02 A6 */	mflr r0
/* 80AC31BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC31C0  4B FF D3 B9 */	bl create__12daNpc_Saru_cFv
/* 80AC31C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC31C8  7C 08 03 A6 */	mtlr r0
/* 80AC31CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC31D0  4E 80 00 20 */	blr 
