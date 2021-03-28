lbl_806A18BC:
/* 806A18BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A18C0  7C 08 02 A6 */	mflr r0
/* 806A18C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A18C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A18CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A18D0  41 82 00 10 */	beq lbl_806A18E0
/* 806A18D4  7C 80 07 35 */	extsh. r0, r4
/* 806A18D8  40 81 00 08 */	ble lbl_806A18E0
/* 806A18DC  4B C2 D4 60 */	b __dl__FPv
lbl_806A18E0:
/* 806A18E0  7F E3 FB 78 */	mr r3, r31
/* 806A18E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A18E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A18EC  7C 08 03 A6 */	mtlr r0
/* 806A18F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806A18F4  4E 80 00 20 */	blr 
