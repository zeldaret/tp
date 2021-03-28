lbl_8073C7C4:
/* 8073C7C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073C7C8  7C 08 02 A6 */	mflr r0
/* 8073C7CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073C7D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073C7D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8073C7D8  41 82 00 1C */	beq lbl_8073C7F4
/* 8073C7DC  3C A0 80 74 */	lis r5, __vt__8cM3dGAab@ha
/* 8073C7E0  38 05 D2 1C */	addi r0, r5, __vt__8cM3dGAab@l
/* 8073C7E4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8073C7E8  7C 80 07 35 */	extsh. r0, r4
/* 8073C7EC  40 81 00 08 */	ble lbl_8073C7F4
/* 8073C7F0  4B B9 25 4C */	b __dl__FPv
lbl_8073C7F4:
/* 8073C7F4  7F E3 FB 78 */	mr r3, r31
/* 8073C7F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073C7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073C800  7C 08 03 A6 */	mtlr r0
/* 8073C804  38 21 00 10 */	addi r1, r1, 0x10
/* 8073C808  4E 80 00 20 */	blr 
