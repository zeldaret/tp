lbl_809F7084:
/* 809F7084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7088  7C 08 02 A6 */	mflr r0
/* 809F708C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7090  48 00 00 19 */	bl meetGWolfSkip__13daNpc_GWolf_cFv
/* 809F7094  38 60 00 01 */	li r3, 1
/* 809F7098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F709C  7C 08 03 A6 */	mtlr r0
/* 809F70A0  38 21 00 10 */	addi r1, r1, 0x10
/* 809F70A4  4E 80 00 20 */	blr 
