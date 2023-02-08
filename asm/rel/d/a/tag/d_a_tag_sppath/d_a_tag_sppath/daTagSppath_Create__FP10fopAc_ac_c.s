lbl_80D61EA4:
/* 80D61EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61EA8  7C 08 02 A6 */	mflr r0
/* 80D61EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61EB0  4B FF FD 69 */	bl create__13daTagSppath_cFv
/* 80D61EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61EB8  7C 08 03 A6 */	mtlr r0
/* 80D61EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61EC0  4E 80 00 20 */	blr 
