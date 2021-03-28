lbl_80C7C49C:
/* 80C7C49C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7C4A0  7C 08 02 A6 */	mflr r0
/* 80C7C4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7C4A8  4B FF DB C1 */	bl create__15daLv6TogeTrap_cFv
/* 80C7C4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7C4B0  7C 08 03 A6 */	mtlr r0
/* 80C7C4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7C4B8  4E 80 00 20 */	blr 
