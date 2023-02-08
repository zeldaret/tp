lbl_80C603FC:
/* 80C603FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C60400  7C 08 02 A6 */	mflr r0
/* 80C60404  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60408  88 83 05 B8 */	lbz r4, 0x5b8(r3)
/* 80C6040C  28 04 00 00 */	cmplwi r4, 0
/* 80C60410  41 82 00 10 */	beq lbl_80C60420
/* 80C60414  38 04 FF FF */	addi r0, r4, -1
/* 80C60418  98 03 05 B8 */	stb r0, 0x5b8(r3)
/* 80C6041C  48 00 00 08 */	b lbl_80C60424
lbl_80C60420:
/* 80C60420  48 00 00 15 */	bl init_modeMoveClose3__13daLv4PoGate_cFv
lbl_80C60424:
/* 80C60424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C60428  7C 08 03 A6 */	mtlr r0
/* 80C6042C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C60430  4E 80 00 20 */	blr 
