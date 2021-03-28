lbl_80D43414:
/* 80D43414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D43418  7C 08 02 A6 */	mflr r0
/* 80D4341C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43420  4B FF F6 ED */	bl Draw__14daObjZraMark_cFv
/* 80D43424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D43428  7C 08 03 A6 */	mtlr r0
/* 80D4342C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D43430  4E 80 00 20 */	blr 
