lbl_80D4F760:
/* 80D4F760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F764  7C 08 02 A6 */	mflr r0
/* 80D4F768  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F76C  4B FF FF 5D */	bl execute__10daSwTime_cFv
/* 80D4F770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F774  7C 08 03 A6 */	mtlr r0
/* 80D4F778  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F77C  4E 80 00 20 */	blr 
