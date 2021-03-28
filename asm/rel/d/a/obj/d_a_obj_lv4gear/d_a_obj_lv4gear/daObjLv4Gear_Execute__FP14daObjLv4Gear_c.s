lbl_80C68498:
/* 80C68498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6849C  7C 08 02 A6 */	mflr r0
/* 80C684A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C684A4  4B FF FD 51 */	bl execute__14daObjLv4Gear_cFv
/* 80C684A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C684AC  7C 08 03 A6 */	mtlr r0
/* 80C684B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C684B4  4E 80 00 20 */	blr 
