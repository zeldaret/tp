lbl_80C9CA60:
/* 80C9CA60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9CA64  7C 08 02 A6 */	mflr r0
/* 80C9CA68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9CA6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9CA70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9CA74  41 82 00 10 */	beq lbl_80C9CA84
/* 80C9CA78  7C 80 07 35 */	extsh. r0, r4
/* 80C9CA7C  40 81 00 08 */	ble lbl_80C9CA84
/* 80C9CA80  4B 63 22 BD */	bl __dl__FPv
lbl_80C9CA84:
/* 80C9CA84  7F E3 FB 78 */	mr r3, r31
/* 80C9CA88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9CA8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9CA90  7C 08 03 A6 */	mtlr r0
/* 80C9CA94  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9CA98  4E 80 00 20 */	blr 
