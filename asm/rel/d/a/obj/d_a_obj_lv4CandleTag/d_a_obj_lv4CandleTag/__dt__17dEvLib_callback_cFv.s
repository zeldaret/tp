lbl_80C5DA68:
/* 80C5DA68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5DA6C  7C 08 02 A6 */	mflr r0
/* 80C5DA70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5DA74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5DA78  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5DA7C  41 82 00 1C */	beq lbl_80C5DA98
/* 80C5DA80  3C A0 80 C6 */	lis r5, __vt__17dEvLib_callback_c@ha /* 0x80C5DC5C@ha */
/* 80C5DA84  38 05 DC 5C */	addi r0, r5, __vt__17dEvLib_callback_c@l /* 0x80C5DC5C@l */
/* 80C5DA88  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5DA8C  7C 80 07 35 */	extsh. r0, r4
/* 80C5DA90  40 81 00 08 */	ble lbl_80C5DA98
/* 80C5DA94  4B 67 12 A9 */	bl __dl__FPv
lbl_80C5DA98:
/* 80C5DA98  7F E3 FB 78 */	mr r3, r31
/* 80C5DA9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5DAA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5DAA4  7C 08 03 A6 */	mtlr r0
/* 80C5DAA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5DAAC  4E 80 00 20 */	blr 
