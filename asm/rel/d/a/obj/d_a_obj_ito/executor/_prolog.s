lbl_8047B200:
/* 8047B200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047B204  7C 08 02 A6 */	mflr r0
/* 8047B208  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047B20C  3C 60 80 48 */	lis r3, data_8047D7FC@ha
/* 8047B210  38 63 D7 FC */	addi r3, r3, data_8047D7FC@l
/* 8047B214  4B DE 7F 38 */	b ModuleConstructorsX
/* 8047B218  4B DE 7E 70 */	b ModuleProlog
/* 8047B21C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047B220  7C 08 03 A6 */	mtlr r0
/* 8047B224  38 21 00 10 */	addi r1, r1, 0x10
/* 8047B228  4E 80 00 20 */	blr 
