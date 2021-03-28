lbl_80007D74:
/* 80007D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007D78  7C 08 02 A6 */	mflr r0
/* 80007D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007D80  48 2D 92 A5 */	bl clearForReset__10JUTGamePadFv
/* 80007D84  3C 60 F0 00 */	lis r3, 0xf000
/* 80007D88  48 2D 9C 51 */	bl setEnabled__Q210JUTGamePad7CRumbleFUl
/* 80007D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007D90  7C 08 03 A6 */	mtlr r0
/* 80007D94  38 21 00 10 */	addi r1, r1, 0x10
/* 80007D98  4E 80 00 20 */	blr 
