lbl_80CA7598:
/* 80CA7598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA759C  7C 08 02 A6 */	mflr r0
/* 80CA75A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA75A4  4B FF F6 FD */	bl Execute__15daObj_Oiltubo_cFv
/* 80CA75A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA75AC  7C 08 03 A6 */	mtlr r0
/* 80CA75B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA75B4  4E 80 00 20 */	blr 
