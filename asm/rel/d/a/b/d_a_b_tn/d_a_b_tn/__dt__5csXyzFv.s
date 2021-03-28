lbl_8062E590:
/* 8062E590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062E594  7C 08 02 A6 */	mflr r0
/* 8062E598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062E59C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062E5A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8062E5A4  41 82 00 10 */	beq lbl_8062E5B4
/* 8062E5A8  7C 80 07 35 */	extsh. r0, r4
/* 8062E5AC  40 81 00 08 */	ble lbl_8062E5B4
/* 8062E5B0  4B CA 07 8C */	b __dl__FPv
lbl_8062E5B4:
/* 8062E5B4  7F E3 FB 78 */	mr r3, r31
/* 8062E5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062E5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062E5C0  7C 08 03 A6 */	mtlr r0
/* 8062E5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8062E5C8  4E 80 00 20 */	blr 
