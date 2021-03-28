lbl_802E1024:
/* 802E1024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1028  7C 08 02 A6 */	mflr r0
/* 802E102C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1030  38 60 00 00 */	li r3, 0
/* 802E1034  48 00 09 A5 */	bl setEnabled__Q210JUTGamePad7CRumbleFUl
/* 802E1038  3C 60 F0 00 */	lis r3, 0xf000
/* 802E103C  48 00 0A 5D */	bl recalibrate__10JUTGamePadFUl
/* 802E1040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1044  7C 08 03 A6 */	mtlr r0
/* 802E1048  38 21 00 10 */	addi r1, r1, 0x10
/* 802E104C  4E 80 00 20 */	blr 
