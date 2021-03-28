lbl_8060FD78:
/* 8060FD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060FD7C  7C 08 02 A6 */	mflr r0
/* 8060FD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060FD84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060FD88  7C 7F 1B 79 */	or. r31, r3, r3
/* 8060FD8C  41 82 00 10 */	beq lbl_8060FD9C
/* 8060FD90  7C 80 07 35 */	extsh. r0, r4
/* 8060FD94  40 81 00 08 */	ble lbl_8060FD9C
/* 8060FD98  4B CB EF A4 */	b __dl__FPv
lbl_8060FD9C:
/* 8060FD9C  7F E3 FB 78 */	mr r3, r31
/* 8060FDA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060FDA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060FDA8  7C 08 03 A6 */	mtlr r0
/* 8060FDAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8060FDB0  4E 80 00 20 */	blr 
