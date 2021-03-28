lbl_80296D74:
/* 80296D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80296D78  7C 08 02 A6 */	mflr r0
/* 80296D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296D80  48 00 07 2D */	bl channelProc__13JASAramStreamFv
/* 80296D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296D88  7C 08 03 A6 */	mtlr r0
/* 80296D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80296D90  4E 80 00 20 */	blr 
