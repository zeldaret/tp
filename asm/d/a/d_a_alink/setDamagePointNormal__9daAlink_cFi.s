lbl_800D7478:
/* 800D7478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D747C  7C 08 02 A6 */	mflr r0
/* 800D7480  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D7484  38 A0 00 00 */	li r5, 0
/* 800D7488  38 C0 00 01 */	li r6, 1
/* 800D748C  38 E0 00 00 */	li r7, 0
/* 800D7490  4B FF FE 2D */	bl setDamagePoint__9daAlink_cFiiii
/* 800D7494  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D7498  7C 08 03 A6 */	mtlr r0
/* 800D749C  38 21 00 10 */	addi r1, r1, 0x10
/* 800D74A0  4E 80 00 20 */	blr 
