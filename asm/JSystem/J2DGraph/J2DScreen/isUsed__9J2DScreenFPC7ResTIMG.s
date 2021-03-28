lbl_802F9600:
/* 802F9600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F9604  7C 08 02 A6 */	mflr r0
/* 802F9608  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F960C  4B FF DE 25 */	bl isUsed__7J2DPaneFPC7ResTIMG
/* 802F9610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F9614  7C 08 03 A6 */	mtlr r0
/* 802F9618  38 21 00 10 */	addi r1, r1, 0x10
/* 802F961C  4E 80 00 20 */	blr 
