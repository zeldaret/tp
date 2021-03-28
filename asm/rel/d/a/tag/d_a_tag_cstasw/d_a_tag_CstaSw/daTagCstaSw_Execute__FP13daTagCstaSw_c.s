lbl_805A2420:
/* 805A2420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2424  7C 08 02 A6 */	mflr r0
/* 805A2428  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A242C  4B FF FF 15 */	bl Execute__13daTagCstaSw_cFv
/* 805A2430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2434  7C 08 03 A6 */	mtlr r0
/* 805A2438  38 21 00 10 */	addi r1, r1, 0x10
/* 805A243C  4E 80 00 20 */	blr 
