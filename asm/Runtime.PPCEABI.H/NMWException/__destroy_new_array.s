lbl_80361C6C:
/* 80361C6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80361C70  7C 08 02 A6 */	mflr r0
/* 80361C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80361C78  BF 41 00 08 */	stmw r26, 8(r1)
/* 80361C7C  7C 7A 1B 79 */	or. r26, r3, r3
/* 80361C80  7C 9B 23 78 */	mr r27, r4
/* 80361C84  41 82 00 50 */	beq lbl_80361CD4
/* 80361C88  28 1B 00 00 */	cmplwi r27, 0
/* 80361C8C  41 82 00 40 */	beq lbl_80361CCC
/* 80361C90  83 BA FF F0 */	lwz r29, -0x10(r26)
/* 80361C94  3B E0 00 00 */	li r31, 0
/* 80361C98  83 DA FF F4 */	lwz r30, -0xc(r26)
/* 80361C9C  7C 1D F1 D6 */	mullw r0, r29, r30
/* 80361CA0  7F 9A 02 14 */	add r28, r26, r0
/* 80361CA4  48 00 00 20 */	b lbl_80361CC4
lbl_80361CA8:
/* 80361CA8  7F 9D E0 50 */	subf r28, r29, r28
/* 80361CAC  7F 6C DB 78 */	mr r12, r27
/* 80361CB0  7F 83 E3 78 */	mr r3, r28
/* 80361CB4  38 80 FF FF */	li r4, -1
/* 80361CB8  7D 89 03 A6 */	mtctr r12
/* 80361CBC  4E 80 04 21 */	bctrl 
/* 80361CC0  3B FF 00 01 */	addi r31, r31, 1
lbl_80361CC4:
/* 80361CC4  7C 1F F0 40 */	cmplw r31, r30
/* 80361CC8  41 80 FF E0 */	blt lbl_80361CA8
lbl_80361CCC:
/* 80361CCC  38 7A FF F0 */	addi r3, r26, -16
/* 80361CD0  4B F6 D0 91 */	bl __dla__FPv
lbl_80361CD4:
/* 80361CD4  BB 41 00 08 */	lmw r26, 8(r1)
/* 80361CD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80361CDC  7C 08 03 A6 */	mtlr r0
/* 80361CE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80361CE4  4E 80 00 20 */	blr 
