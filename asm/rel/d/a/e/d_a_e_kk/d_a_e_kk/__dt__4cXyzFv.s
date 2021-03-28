lbl_806FF598:
/* 806FF598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FF59C  7C 08 02 A6 */	mflr r0
/* 806FF5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FF5A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FF5A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806FF5AC  41 82 00 10 */	beq lbl_806FF5BC
/* 806FF5B0  7C 80 07 35 */	extsh. r0, r4
/* 806FF5B4  40 81 00 08 */	ble lbl_806FF5BC
/* 806FF5B8  4B BC F7 84 */	b __dl__FPv
lbl_806FF5BC:
/* 806FF5BC  7F E3 FB 78 */	mr r3, r31
/* 806FF5C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FF5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FF5C8  7C 08 03 A6 */	mtlr r0
/* 806FF5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 806FF5D0  4E 80 00 20 */	blr 
