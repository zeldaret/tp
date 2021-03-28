lbl_80A3B760:
/* 80A3B760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3B764  7C 08 02 A6 */	mflr r0
/* 80A3B768  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3B76C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3B770  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A3B774  41 82 00 10 */	beq lbl_80A3B784
/* 80A3B778  7C 80 07 35 */	extsh. r0, r4
/* 80A3B77C  40 81 00 08 */	ble lbl_80A3B784
/* 80A3B780  4B 89 35 BC */	b __dl__FPv
lbl_80A3B784:
/* 80A3B784  7F E3 FB 78 */	mr r3, r31
/* 80A3B788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3B78C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3B790  7C 08 03 A6 */	mtlr r0
/* 80A3B794  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3B798  4E 80 00 20 */	blr 
