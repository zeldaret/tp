lbl_807AC1E4:
/* 807AC1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AC1E8  7C 08 02 A6 */	mflr r0
/* 807AC1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AC1F0  4B FF FF 81 */	bl _delete__8daE_SW_cFv
/* 807AC1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AC1F8  7C 08 03 A6 */	mtlr r0
/* 807AC1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 807AC200  4E 80 00 20 */	blr 
