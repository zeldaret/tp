lbl_805A52FC:
/* 805A52FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5300  7C 08 02 A6 */	mflr r0
/* 805A5304  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A5308  4B FF FA 3D */	bl execute__15daTagLv2PrChk_cFv
/* 805A530C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A5310  7C 08 03 A6 */	mtlr r0
/* 805A5314  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5318  4E 80 00 20 */	blr 
