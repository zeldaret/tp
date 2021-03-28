lbl_8062FBCC:
/* 8062FBCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062FBD0  7C 08 02 A6 */	mflr r0
/* 8062FBD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062FBD8  4B FF F9 45 */	bl draw__8daB_YO_cFv
/* 8062FBDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062FBE0  7C 08 03 A6 */	mtlr r0
/* 8062FBE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8062FBE8  4E 80 00 20 */	blr 
