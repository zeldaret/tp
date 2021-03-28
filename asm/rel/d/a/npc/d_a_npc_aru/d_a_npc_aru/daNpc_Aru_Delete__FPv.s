lbl_809562E0:
/* 809562E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809562E4  7C 08 02 A6 */	mflr r0
/* 809562E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809562EC  4B FF BC F1 */	bl Delete__11daNpc_Aru_cFv
/* 809562F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809562F4  7C 08 03 A6 */	mtlr r0
/* 809562F8  38 21 00 10 */	addi r1, r1, 0x10
/* 809562FC  4E 80 00 20 */	blr 
