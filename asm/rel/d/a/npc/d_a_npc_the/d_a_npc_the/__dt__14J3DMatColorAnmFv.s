lbl_80AF80C0:
/* 80AF80C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF80C4  7C 08 02 A6 */	mflr r0
/* 80AF80C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF80CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF80D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF80D4  41 82 00 10 */	beq lbl_80AF80E4
/* 80AF80D8  7C 80 07 35 */	extsh. r0, r4
/* 80AF80DC  40 81 00 08 */	ble lbl_80AF80E4
/* 80AF80E0  4B 7D 6C 5C */	b __dl__FPv
lbl_80AF80E4:
/* 80AF80E4  7F E3 FB 78 */	mr r3, r31
/* 80AF80E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF80EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF80F0  7C 08 03 A6 */	mtlr r0
/* 80AF80F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF80F8  4E 80 00 20 */	blr 
