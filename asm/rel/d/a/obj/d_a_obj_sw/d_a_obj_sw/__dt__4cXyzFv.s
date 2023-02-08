lbl_80CF1008:
/* 80CF1008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF100C  7C 08 02 A6 */	mflr r0
/* 80CF1010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF1014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF1018  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF101C  41 82 00 10 */	beq lbl_80CF102C
/* 80CF1020  7C 80 07 35 */	extsh. r0, r4
/* 80CF1024  40 81 00 08 */	ble lbl_80CF102C
/* 80CF1028  4B 5D DD 15 */	bl __dl__FPv
lbl_80CF102C:
/* 80CF102C  7F E3 FB 78 */	mr r3, r31
/* 80CF1030  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF1034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF1038  7C 08 03 A6 */	mtlr r0
/* 80CF103C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF1040  4E 80 00 20 */	blr 
