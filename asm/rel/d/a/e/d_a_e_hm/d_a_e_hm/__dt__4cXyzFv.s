lbl_806E58D0:
/* 806E58D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E58D4  7C 08 02 A6 */	mflr r0
/* 806E58D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E58DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E58E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E58E4  41 82 00 10 */	beq lbl_806E58F4
/* 806E58E8  7C 80 07 35 */	extsh. r0, r4
/* 806E58EC  40 81 00 08 */	ble lbl_806E58F4
/* 806E58F0  4B BE 94 4D */	bl __dl__FPv
lbl_806E58F4:
/* 806E58F4  7F E3 FB 78 */	mr r3, r31
/* 806E58F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E58FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E5900  7C 08 03 A6 */	mtlr r0
/* 806E5904  38 21 00 10 */	addi r1, r1, 0x10
/* 806E5908  4E 80 00 20 */	blr 
