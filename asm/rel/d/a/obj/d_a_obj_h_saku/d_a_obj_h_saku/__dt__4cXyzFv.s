lbl_80C157D4:
/* 80C157D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C157D8  7C 08 02 A6 */	mflr r0
/* 80C157DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C157E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C157E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C157E8  41 82 00 10 */	beq lbl_80C157F8
/* 80C157EC  7C 80 07 35 */	extsh. r0, r4
/* 80C157F0  40 81 00 08 */	ble lbl_80C157F8
/* 80C157F4  4B 6B 95 49 */	bl __dl__FPv
lbl_80C157F8:
/* 80C157F8  7F E3 FB 78 */	mr r3, r31
/* 80C157FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C15800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C15804  7C 08 03 A6 */	mtlr r0
/* 80C15808  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1580C  4E 80 00 20 */	blr 
