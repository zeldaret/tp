lbl_8024B8E4:
/* 8024B8E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B8E8  7C 08 02 A6 */	mflr r0
/* 8024B8EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B8F0  A0 04 00 04 */	lhz r0, 4(r4)
/* 8024B8F4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8024B8F8  38 80 00 01 */	li r4, 1
/* 8024B8FC  4B E4 C5 E5 */	bl checkItemGet__FUci
/* 8024B900  7C 60 00 34 */	cntlzw r0, r3
/* 8024B904  54 03 DC 3E */	rlwinm r3, r0, 0x1b, 0x10, 0x1f
/* 8024B908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B90C  7C 08 03 A6 */	mtlr r0
/* 8024B910  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B914  4E 80 00 20 */	blr 
