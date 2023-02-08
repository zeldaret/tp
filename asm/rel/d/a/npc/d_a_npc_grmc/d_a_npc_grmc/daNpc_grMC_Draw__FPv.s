lbl_809D8DEC:
/* 809D8DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D8DF0  7C 08 02 A6 */	mflr r0
/* 809D8DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D8DF8  4B FF EC DD */	bl Draw__12daNpc_grMC_cFv
/* 809D8DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D8E00  7C 08 03 A6 */	mtlr r0
/* 809D8E04  38 21 00 10 */	addi r1, r1, 0x10
/* 809D8E08  4E 80 00 20 */	blr 
