lbl_80C75FD8:
/* 80C75FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C75FDC  7C 08 02 A6 */	mflr r0
/* 80C75FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C75FE4  88 83 05 E1 */	lbz r4, 0x5e1(r3)
/* 80C75FE8  28 04 00 00 */	cmplwi r4, 0
/* 80C75FEC  41 82 00 10 */	beq lbl_80C75FFC
/* 80C75FF0  38 04 FF FF */	addi r0, r4, -1
/* 80C75FF4  98 03 05 E1 */	stb r0, 0x5e1(r3)
/* 80C75FF8  48 00 00 08 */	b lbl_80C76000
lbl_80C75FFC:
/* 80C75FFC  48 00 00 15 */	bl init_modeOpenWait__13daLv6SzGate_cFv
lbl_80C76000:
/* 80C76000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C76004  7C 08 03 A6 */	mtlr r0
/* 80C76008  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7600C  4E 80 00 20 */	blr 
