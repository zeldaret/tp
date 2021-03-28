lbl_80225AE8:
/* 80225AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225AEC  7C 08 02 A6 */	mflr r0
/* 80225AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225AF4  4B FF 99 A9 */	bl _delete__9dMeter2_cFv
/* 80225AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225AFC  7C 08 03 A6 */	mtlr r0
/* 80225B00  38 21 00 10 */	addi r1, r1, 0x10
/* 80225B04  4E 80 00 20 */	blr 
