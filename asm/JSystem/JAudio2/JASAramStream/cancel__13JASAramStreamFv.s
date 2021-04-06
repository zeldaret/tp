lbl_802966CC:
/* 802966CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802966D0  7C 08 02 A6 */	mflr r0
/* 802966D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802966D8  7C 65 1B 78 */	mr r5, r3
/* 802966DC  38 00 00 01 */	li r0, 1
/* 802966E0  98 03 01 14 */	stb r0, 0x114(r3)
/* 802966E4  80 6D 8C D0 */	lwz r3, sLoadThread__13JASAramStream(r13)
/* 802966E8  3C 80 80 29 */	lis r4, finishTask__13JASAramStreamFPv@ha /* 0x80296868@ha */
/* 802966EC  38 84 68 68 */	addi r4, r4, finishTask__13JASAramStreamFPv@l /* 0x80296868@l */
/* 802966F0  4B FF 95 65 */	bl sendCmdMsg__13JASTaskThreadFPFPv_vPv
/* 802966F4  30 03 FF FF */	addic r0, r3, -1
/* 802966F8  7C 00 19 10 */	subfe r0, r0, r3
/* 802966FC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80296700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296704  7C 08 03 A6 */	mtlr r0
/* 80296708  38 21 00 10 */	addi r1, r1, 0x10
/* 8029670C  4E 80 00 20 */	blr 
