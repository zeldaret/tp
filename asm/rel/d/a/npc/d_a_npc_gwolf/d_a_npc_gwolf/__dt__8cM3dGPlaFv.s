lbl_809F7AB0:
/* 809F7AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7AB4  7C 08 02 A6 */	mflr r0
/* 809F7AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F7AC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F7AC4  41 82 00 1C */	beq lbl_809F7AE0
/* 809F7AC8  3C A0 80 A0 */	lis r5, __vt__8cM3dGPla@ha /* 0x809F8DCC@ha */
/* 809F7ACC  38 05 8D CC */	addi r0, r5, __vt__8cM3dGPla@l /* 0x809F8DCC@l */
/* 809F7AD0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 809F7AD4  7C 80 07 35 */	extsh. r0, r4
/* 809F7AD8  40 81 00 08 */	ble lbl_809F7AE0
/* 809F7ADC  4B 8D 72 61 */	bl __dl__FPv
lbl_809F7AE0:
/* 809F7AE0  7F E3 FB 78 */	mr r3, r31
/* 809F7AE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F7AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F7AEC  7C 08 03 A6 */	mtlr r0
/* 809F7AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809F7AF4  4E 80 00 20 */	blr 
