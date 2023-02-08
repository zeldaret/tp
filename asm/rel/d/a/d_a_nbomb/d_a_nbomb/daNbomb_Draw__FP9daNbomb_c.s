lbl_804CC200:
/* 804CC200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CC204  7C 08 02 A6 */	mflr r0
/* 804CC208  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CC20C  4B FF FA 55 */	bl draw__9daNbomb_cFv
/* 804CC210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CC214  7C 08 03 A6 */	mtlr r0
/* 804CC218  38 21 00 10 */	addi r1, r1, 0x10
/* 804CC21C  4E 80 00 20 */	blr 
