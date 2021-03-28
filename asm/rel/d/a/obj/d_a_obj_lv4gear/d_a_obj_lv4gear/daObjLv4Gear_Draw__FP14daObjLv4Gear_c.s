lbl_80C68478:
/* 80C68478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6847C  7C 08 02 A6 */	mflr r0
/* 80C68480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68484  4B FF FF 5D */	bl draw__14daObjLv4Gear_cFv
/* 80C68488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6848C  7C 08 03 A6 */	mtlr r0
/* 80C68490  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68494  4E 80 00 20 */	blr 
