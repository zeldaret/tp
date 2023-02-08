lbl_80CE01F4:
/* 80CE01F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE01F8  7C 08 02 A6 */	mflr r0
/* 80CE01FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE0200  4B FF FA 41 */	bl execute__15daObjSnowSoup_cFv
/* 80CE0204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE0208  7C 08 03 A6 */	mtlr r0
/* 80CE020C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE0210  4E 80 00 20 */	blr 
