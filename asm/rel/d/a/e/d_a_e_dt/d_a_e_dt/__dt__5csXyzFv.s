lbl_806B5B80:
/* 806B5B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B5B84  7C 08 02 A6 */	mflr r0
/* 806B5B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B5B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B5B90  7C 7F 1B 79 */	or. r31, r3, r3
/* 806B5B94  41 82 00 10 */	beq lbl_806B5BA4
/* 806B5B98  7C 80 07 35 */	extsh. r0, r4
/* 806B5B9C  40 81 00 08 */	ble lbl_806B5BA4
/* 806B5BA0  4B C1 91 9D */	bl __dl__FPv
lbl_806B5BA4:
/* 806B5BA4  7F E3 FB 78 */	mr r3, r31
/* 806B5BA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B5BAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B5BB0  7C 08 03 A6 */	mtlr r0
/* 806B5BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 806B5BB8  4E 80 00 20 */	blr 
