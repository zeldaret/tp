lbl_805EE020:
/* 805EE020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EE024  7C 08 02 A6 */	mflr r0
/* 805EE028  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EE02C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EE030  7C 7F 1B 79 */	or. r31, r3, r3
/* 805EE034  41 82 00 10 */	beq lbl_805EE044
/* 805EE038  7C 80 07 35 */	extsh. r0, r4
/* 805EE03C  40 81 00 08 */	ble lbl_805EE044
/* 805EE040  4B CE 0C FD */	bl __dl__FPv
lbl_805EE044:
/* 805EE044  7F E3 FB 78 */	mr r3, r31
/* 805EE048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EE04C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EE050  7C 08 03 A6 */	mtlr r0
/* 805EE054  38 21 00 10 */	addi r1, r1, 0x10
/* 805EE058  4E 80 00 20 */	blr 
