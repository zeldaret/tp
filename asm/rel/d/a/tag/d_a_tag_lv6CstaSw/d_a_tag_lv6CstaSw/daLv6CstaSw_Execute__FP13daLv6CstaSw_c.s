lbl_80D5B6E0:
/* 80D5B6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B6E4  7C 08 02 A6 */	mflr r0
/* 80D5B6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B6EC  4B FF FF 15 */	bl Execute__13daLv6CstaSw_cFv
/* 80D5B6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B6F4  7C 08 03 A6 */	mtlr r0
/* 80D5B6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B6FC  4E 80 00 20 */	blr 
