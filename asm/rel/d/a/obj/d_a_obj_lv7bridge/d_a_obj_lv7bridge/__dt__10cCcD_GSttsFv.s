lbl_80C87940:
/* 80C87940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C87944  7C 08 02 A6 */	mflr r0
/* 80C87948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8794C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C87950  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C87954  41 82 00 1C */	beq lbl_80C87970
/* 80C87958  3C A0 80 C8 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C87B2C@ha */
/* 80C8795C  38 05 7B 2C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C87B2C@l */
/* 80C87960  90 1F 00 00 */	stw r0, 0(r31)
/* 80C87964  7C 80 07 35 */	extsh. r0, r4
/* 80C87968  40 81 00 08 */	ble lbl_80C87970
/* 80C8796C  4B 64 73 D1 */	bl __dl__FPv
lbl_80C87970:
/* 80C87970  7F E3 FB 78 */	mr r3, r31
/* 80C87974  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C87978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8797C  7C 08 03 A6 */	mtlr r0
/* 80C87980  38 21 00 10 */	addi r1, r1, 0x10
/* 80C87984  4E 80 00 20 */	blr 
