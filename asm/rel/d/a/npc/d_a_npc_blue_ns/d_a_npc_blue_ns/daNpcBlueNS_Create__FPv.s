lbl_8096BF08:
/* 8096BF08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096BF0C  7C 08 02 A6 */	mflr r0
/* 8096BF10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096BF14  4B FF CE 31 */	bl Create__13daNpcBlueNS_cFv
/* 8096BF18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096BF1C  7C 08 03 A6 */	mtlr r0
/* 8096BF20  38 21 00 10 */	addi r1, r1, 0x10
/* 8096BF24  4E 80 00 20 */	blr 
