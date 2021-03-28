lbl_80D641D8:
/* 80D641D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D641DC  7C 08 02 A6 */	mflr r0
/* 80D641E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D641E4  4B FF FE 51 */	bl draw__13daTagWrHowl_cFv
/* 80D641E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D641EC  7C 08 03 A6 */	mtlr r0
/* 80D641F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D641F4  4E 80 00 20 */	blr 
