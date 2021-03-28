lbl_800CFC7C:
/* 800CFC7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CFC80  7C 08 02 A6 */	mflr r0
/* 800CFC84  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CFC88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CFC8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 800CFC90  41 82 00 10 */	beq lbl_800CFCA0
/* 800CFC94  7C 80 07 35 */	extsh. r0, r4
/* 800CFC98  40 81 00 08 */	ble lbl_800CFCA0
/* 800CFC9C  48 1F F0 A1 */	bl __dl__FPv
lbl_800CFCA0:
/* 800CFCA0  7F E3 FB 78 */	mr r3, r31
/* 800CFCA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CFCA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CFCAC  7C 08 03 A6 */	mtlr r0
/* 800CFCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 800CFCB4  4E 80 00 20 */	blr 
