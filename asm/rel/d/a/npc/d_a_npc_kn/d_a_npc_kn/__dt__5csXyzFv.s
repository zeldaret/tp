lbl_80A3B724:
/* 80A3B724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3B728  7C 08 02 A6 */	mflr r0
/* 80A3B72C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3B730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3B734  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A3B738  41 82 00 10 */	beq lbl_80A3B748
/* 80A3B73C  7C 80 07 35 */	extsh. r0, r4
/* 80A3B740  40 81 00 08 */	ble lbl_80A3B748
/* 80A3B744  4B 89 35 F8 */	b __dl__FPv
lbl_80A3B748:
/* 80A3B748  7F E3 FB 78 */	mr r3, r31
/* 80A3B74C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3B750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3B754  7C 08 03 A6 */	mtlr r0
/* 80A3B758  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3B75C  4E 80 00 20 */	blr 
