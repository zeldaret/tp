lbl_80341250:
/* 80341250  7C 08 02 A6 */	mflr r0
/* 80341254  90 01 00 04 */	stw r0, 4(r1)
/* 80341258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034125C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80341260  4B FF C4 95 */	bl OSDisableInterrupts
/* 80341264  3B E3 00 00 */	addi r31, r3, 0
/* 80341268  38 60 00 01 */	li r3, 1
/* 8034126C  4B FF FD 8D */	bl SelectThread
/* 80341270  7F E3 FB 78 */	mr r3, r31
/* 80341274  4B FF C4 A9 */	bl OSRestoreInterrupts
/* 80341278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034127C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80341280  38 21 00 10 */	addi r1, r1, 0x10
/* 80341284  7C 08 03 A6 */	mtlr r0
/* 80341288  4E 80 00 20 */	blr 
