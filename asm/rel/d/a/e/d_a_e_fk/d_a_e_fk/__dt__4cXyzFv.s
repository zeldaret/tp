lbl_806BB680:
/* 806BB680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BB684  7C 08 02 A6 */	mflr r0
/* 806BB688  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BB68C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BB690  7C 7F 1B 79 */	or. r31, r3, r3
/* 806BB694  41 82 00 10 */	beq lbl_806BB6A4
/* 806BB698  7C 80 07 35 */	extsh. r0, r4
/* 806BB69C  40 81 00 08 */	ble lbl_806BB6A4
/* 806BB6A0  4B C1 36 9D */	bl __dl__FPv
lbl_806BB6A4:
/* 806BB6A4  7F E3 FB 78 */	mr r3, r31
/* 806BB6A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BB6AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BB6B0  7C 08 03 A6 */	mtlr r0
/* 806BB6B4  38 21 00 10 */	addi r1, r1, 0x10
/* 806BB6B8  4E 80 00 20 */	blr 
